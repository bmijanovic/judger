package org.example.judgerserver.service;

import org.example.judgerserver.model.FinancialStatus;
import org.example.judgerserver.model.Verdict;
import org.springframework.stereotype.Service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class DrDeviceService {

    public String decisionBasedOnLaw(Verdict verdict)    {
        this.runScript("clean.bat");
        this.createFile(verdict);
        this.runScript("start.bat");
        return this.createAnswer();
    }

    private String createAnswer() {
        String content = readExport("./dr-device/export.rdf");
        String finalResult = addCrime(content);
        finalResult = addPenalty(finalResult, content);
        return finalResult;
    }

    private String addPenalty(String finalResult, String input) {
        ArrayList<String> possiblePenalties = getPossiblePenalties();
        HashMap<String, String> dict = getSentenceDict();
        for (String match : possiblePenalties)
        {
            String fullRegex = "<export:" + match + " rdf:about='&export;" + match + "(\\d+)'>\\s*<export:value>(\\d+)</export:value>\\s*<defeasible:truthStatus>defeasibly-proven-positive</defeasible:truthStatus>\\s*<defeasible:proof rdf:datatype='&xsd;anyURI'>&proof-export;proof(\\d+)</defeasible:proof>\\s*</export:" + match + ">";
            Pattern pattern = Pattern.compile(fullRegex);
            Matcher matcher = pattern.matcher(input);
            while (matcher.find()) {
                if (match.equals("min_imprisonment")) finalResult += dict.get(match) + matcher.group(2);
                else if (match.equals("max_imprisonment")) finalResult += dict.get(match) + matcher.group(2) + " godina. ";
                else finalResult += "Od okrivljenog se oduzimaju gorepomenute novčanice.";
            }
        }
        return finalResult;
    }

    private String addCrime(String input) {
        String finalResult = "";
        ArrayList<String> possibleCrimes = getPossibleMatches();
        HashMap<String, String> dict = getSentenceDict();
        for (String match : possibleCrimes)
        {
            String fullRegex = "(?s)export:" + match + " rdf:about.*defeasibly-proven-positive.*export:" + match + ">";
            Pattern pattern = Pattern.compile(fullRegex);
            Matcher matcher = pattern.matcher(input);
            if (matcher.find()) {
                finalResult += dict.get(match);
            }
        }
        return finalResult;
    }

    private String readExport(String filePath) {
        String content = "";
        try {
            Path path = Paths.get(filePath);
            byte[] bytes = Files.readAllBytes(path);
            content = new String(bytes, StandardCharsets.UTF_8);
        } catch (IOException e) {
            e.printStackTrace(); // Handle the exception as needed
        }
        return content;
    }

    private void runScript(String scriptPath) {
        ProcessBuilder processBuilder = new ProcessBuilder("cmd.exe", "/c", scriptPath);
        processBuilder.directory(new File("dr-device")); // run inside dr-device folder
//        processBuilder.inheritIO();
        try {
            processBuilder.redirectOutput(ProcessBuilder.Redirect.INHERIT);
            processBuilder.redirectError(ProcessBuilder.Redirect.INHERIT);
            Process process = processBuilder.start();
            int exitCode = process.waitFor();
            System.out.println("Batch script exited with code: " + exitCode + "ime skripte je " + scriptPath);
        } catch (InterruptedException | IOException e) {
            e.printStackTrace();
        }
    }

    private void createFile(Verdict verdict) {
        HashMap<String, String> dict = createDict();
        String text = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n" +
                "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n" +
                "        xmlns:rdfs=\"http://www.w3.org/2000/01/rdf-schema#\"\n" +
                "        xmlns:xsd=\"http://www.w3.org/2001/XMLSchema#\"\n" +
                "        xmlns:lc=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#\">\n" +
                "    <lc:case rdf:about=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#counterfeiting_case\">\n" +
                "        <lc:name>Case 01</lc:name>\n" +
                "        <lc:defendant>John Doe</lc:defendant>\n" +
                "        <lc:num_of_victims rdf:datatype=\"http://www.w3.org/2001/XMLSchema#integer\">" + verdict.getNumVictimsEndangered() + "</lc:num_of_victims>\n" +
                "        <lc:previously_convicted>" + verdict.getPreviouslyConvicted().toString() + "</lc:previously_convicted>\n" +
                "        <lc:psychological_abuse_involved>" + verdict.getPsychologicalAbuseInvolved().toString() + "</lc:psychological_abuse_involved>\n" +
                "        <lc:physical_abuse_involved>" + verdict.getPhysicalAbuseInvolved().toString() + "</lc:physical_abuse_involved>\n" +
                "        <lc:financial_status>" + dict.get(verdict.getDefendantFinancialStatus().toString()) + "</lc:financial_status>\n" +
                "    </lc:case>\n" +
                "</rdf:RDF>";
        writeToFile(text);
    }

    private void writeToFile(String text) {
        String filePath = "./dr-device/facts.rdf";
        try {
            Path path = Paths.get(filePath);
            Files.createDirectories(path.getParent());
            try (BufferedWriter writer = Files.newBufferedWriter(path)) {
                writer.write(text);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private HashMap<String, String> createDict() {
        HashMap<String, String> dict = new HashMap<>();
        dict.put(String.valueOf(FinancialStatus.POOR), "poor");
        dict.put(String.valueOf(FinancialStatus.LOW_INCOME), "low_income");
        dict.put(String.valueOf(FinancialStatus.MIDDLE_INCOME), "middle_income");
        dict.put(String.valueOf(FinancialStatus.HIGH_INCOME), "high_income");
        dict.put(String.valueOf(FinancialStatus.WEALTHY), "wealthy");
        dict.put(String.valueOf(FinancialStatus.UNKNOWN), "unknown");
        return dict;
    }

    private ArrayList<String> getPossibleMatches() {
        ArrayList<String> r = new ArrayList<>();
        r.add("psychological_abuse_one_victim");
        r.add("psychological_abuse_more_victims");
        r.add("physical_abuse_one_victim");
        r.add("physical_abuse_more_victim");
        r.add("physical_psychological_abuse_one_victim");
        r.add("physical_psychological_abuse_more_victim");

        return r;
    }

    private HashMap<String, String> getSentenceDict() {
        HashMap<String, String> r = new HashMap<>();

        r.put("not_previously_convicted",
                "Okrivljeni je počinio krivično djelo protiv jedne žrtve. Tokom izvršenja djela bilo je prisutno psihičko zlostavljanje žrtve. Okrivljeni je ranije osuđivan, što otežava njegov položaj pred sudom.");

        r.put("psychological_abuse_one_victim",
                "Okrivljeni je počinio krivično djelo protiv jedne žrtve. Tokom izvršenja djela bilo je prisutno psihičko zlostavljanje žrtve.");

        r.put("psychological_abuse_more_victims",
                "Okrivljeni je počinio krivično djelo protiv vise žrtava. Tokom izvršenja djela bilo je prisutno psihičko zlostavljanje.");


        r.put("physical_abuse_one_victim", "Okrivljeni je počinio krivično djelo protiv jedne žrtve. Tokom izvršenja djela bilo je prisutno fizicko zlostavljanje.");
        r.put("physical_abuse_more_victim", "MORE Okrivljeni je počinio krivično djelo protiv jedne žrtve. Tokom izvršenja djela bilo je prisutno fizicko zlostavljanje.");
        r.put("physical_psychological_abuse_one_victim", "LALALALLALALALALALALLALALALAL");
        r.put("physical_psychological_abuse_more_victim", "HAHAHAHAHHAHAHAHAHAHAHHA");

        r.put("min_imprisonment", "Te ga sud primjenom pomenutih propisa osuđuje na zatvorsku kaznu u trajanju od minimum ");
        r.put("max_imprisonment", ", a najviše ");
        return r;
    }

    private ArrayList<String> getPossiblePenalties() {
        ArrayList<String> r = new ArrayList<>();
        r.add("to_increase_penalty");
        r.add("min_imprisonment");
        r.add("max_imprisonment");
        r.add("to_confiscate");
        return r;
    }


}
