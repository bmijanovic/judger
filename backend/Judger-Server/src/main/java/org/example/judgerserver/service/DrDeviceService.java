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
                "        <lc:injury_severity>" + verdict.getInjurySeverity().toString() + "</lc:injury_severity>\n" +
                "        <lc:on_duty>" + verdict.getOnDuty().toString() + "</lc:on_duty>\n" +
                "        <lc:num_of_defendants rdf:datatype=\"http://www.w3.org/2001/XMLSchema#integer\">" + verdict.getNumDefendants() + "</lc:num_of_defendants>\n" +
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
        r.add("psychological_abuse");
        r.add("psychological_abuse_on_duty");
        r.add("movement_restrictions");
        r.add("movement_restrictions_on_duty");
        r.add("movement_restrictions_life_threatening");
        r.add("movement_restrictions_death");
        r.add("coercion_abuse");
        r.add("coercion_abuse_multiple_defendant");

        return r;
    }

    private HashMap<String, String> getSentenceDict() {
        HashMap<String, String> r = new HashMap<>();

        r.put("psychological_abuse", "Okrivljeni je počinio krivično delo uskraćivanja ili ograničavanja ljudskih prava i slobode utvrđeno ustavom ( čl 159. st 1.).");
        r.put("psychological_abuse_on_duty", "Okrivljeni je počinio krivično delo uskraćivanja ili ograničavanja ljudskih prava i slobode utvrđeno ustavom tokom vršenja službene dužnosti ( čl 159. st 3.).");
        r.put("movement_restrictions", "Okrivljeni je počinio krivično delo radnji protivpravno zatvoranje, držanje zatvorenog ili ograničavanje slobode kretanja (čl 162. st 1.).");
        r.put("movement_restrictions_on_duty", "Okrivljeni je počinio krivično delo radnji protivpravno zatvoranje, držanje zatvorenog ili ograničavanje slobode kretanja tokom vršenja službene dužnosti (čl 162. st 2.).");
        r.put("movement_restrictions_life_threatening", "Okrivljeni je počinio krivično delo radnji protivpravno zatvoranje, držanje zatvorenog ili ograničavanje slobode kretanja usled čega je licu teško narušeno zdravlje ili su nastupile druge teške posledice (čl 162. st 3.).");
        r.put("movement_restrictions_death", "Okrivljeni je počinio krivično delo radnji protivpravno zatvoranje, držanje zatvorenog ili ograničavanje slobode kretanja usled čega je nastala smrt lica (čl 162. st 4.).");
        r.put("coercion_abuse", "Okrivljeni je silom ili prijetnjom prinudio drugog da nešto učini ili ne učini ili trpi (čl 165 st 1.).");
        r.put("coercion_abuse_multiple_defendant", "Okrivljeni je silom ili prijetnjom prinudio drugog da nešto učini ili ne učini ili trpi u čemu je učestvovalo više okrivljenih (čl 165 st 4.).");


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
