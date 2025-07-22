package org.example.judgerserver.jcolibri;

import java.util.*;

import es.ucm.fdi.gaia.jcolibri.casebase.LinealCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.Interval;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.global.Average;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.Equal;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.selection.SelectCases;
import org.example.judgerserver.dto.SimilarVerdict;
import org.example.judgerserver.jcolibri.CaseDescription;
import org.example.judgerserver.jcolibri.TabularSimilarity;
import org.example.judgerserver.model.FinancialStatus;
import org.example.judgerserver.model.Verdict;
import org.example.judgerserver.model.VerdictType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CbrApp implements StandardCBRApplication {

    Connector _connector; /** Connector object */
    CBRCaseBase _caseBase;  /** CaseBase object */

    @Autowired
    public CbrApp(H2Connector connector) {
        this._connector = connector;
    }

    public CbrApp() {
        this._connector = new H2Connector();
    }



    NNConfig simConfig;  /** KNN configuration */
    public void configure() throws ExecutionException {
        _caseBase = new LinealCaseBase();

        simConfig = new NNConfig();
        simConfig.setDescriptionSimFunction(new Average());
        TabularSimilarity financialSim = new TabularSimilarity(Arrays.asList(
                FinancialStatus.POOR.name(),
                FinancialStatus.LOW_INCOME.name(),
                FinancialStatus.MIDDLE_INCOME.name(),
                FinancialStatus.HIGH_INCOME.name(),
                FinancialStatus.WEALTHY.name(),
                FinancialStatus.UNKNOWN.name()
        ));

        String[] financialStatuses = {
                FinancialStatus.POOR.name(),
                FinancialStatus.LOW_INCOME.name(),
                FinancialStatus.MIDDLE_INCOME.name(),
                FinancialStatus.HIGH_INCOME.name(),
                FinancialStatus.WEALTHY.name(),
                FinancialStatus.UNKNOWN.name()
        };

        Map<String, Integer> financialOrder = Map.of(
                "POOR", 0,
                "LOW_INCOME", 1,
                "MIDDLE_INCOME", 2,
                "HIGH_INCOME", 3,
                "WEALTHY", 4,
                "UNKNOWN", -1
        );

        for (String s1 : financialStatuses) {
            for (String s2 : financialStatuses) {
                if (s1.equals(s2)) {
                    financialSim.setSimilarity(s1, s2, 1.0);
                } else if (s1.equals("UNKNOWN") || s2.equals("UNKNOWN")) {
                    financialSim.setSimilarity(s1, s2, 0.5);
                } else {
                    int dist = Math.abs(financialOrder.get(s1) - financialOrder.get(s2));
                    double similarity = 1.0 - (dist / 4.0);  // normalizovana razlika
                    financialSim.setSimilarity(s1, s2, similarity);
                }
            }
        }

        simConfig.addMapping(new Attribute("defendantFinancialStatus", CaseDescription.class), financialSim);


        TabularSimilarity verdictSim = new TabularSimilarity(Arrays.asList(
                VerdictType.PRISON.name(),
                VerdictType.SUSPENDED.name(),
                VerdictType.ACQUITTED.name()
        ));

        String[] verdicts = {
                VerdictType.PRISON.name(),
                VerdictType.SUSPENDED.name(),
                VerdictType.ACQUITTED.name()
        };

        Map<String, Integer> verdictOrder = Map.of(
                "PRISON", 0,
                "SUSPENDED", 1,
                "ACQUITTED", 2
        );

        for (String v1 : verdicts) {
            for (String v2 : verdicts) {
                if (v1.equals(v2)) {
                    verdictSim.setSimilarity(v1, v2, 1.0);
                } else {
                    int dist = Math.abs(verdictOrder.get(v1) - verdictOrder.get(v2));
                    double similarity = 1.0 - (dist / 2.0);  // 0–1 skala
                    verdictSim.setSimilarity(v1, v2, similarity);
                }
            }
        }

        simConfig.addMapping(new Attribute("verdict", CaseDescription.class), verdictSim);

        simConfig.addMapping(new Attribute("numDefendants", CaseDescription.class), new Interval(5));
        simConfig.addMapping(new Attribute("numVictimsEndangered", CaseDescription.class), new Interval(5));

        TabularSimilarity boolSim = new TabularSimilarity(Arrays.asList("true", "false"));

        simConfig.addMapping(new Attribute("previouslyConvicted", CaseDescription.class), boolSim);
        simConfig.addMapping(new Attribute("awareOfIllegality", CaseDescription.class), boolSim);
        simConfig.addMapping(new Attribute("physicalAbuseInvolved", CaseDescription.class), boolSim);
        simConfig.addMapping(new Attribute("psychologicalAbuseInvolved", CaseDescription.class), boolSim);

    }


    public void cycle(CBRQuery query) throws ExecutionException {
        Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(_caseBase.getCases(), query, simConfig);
        eval = SelectCases.selectTopKRR(eval, 5);
        System.out.println("Retrieved cases:");
        for (RetrievalResult nse : eval)
            System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());
    }

    public void postCycle() throws ExecutionException {

    }

    public CBRCaseBase preCycle() throws ExecutionException {
        _caseBase.init(_connector);
        java.util.Collection<CBRCase> cases = _caseBase.getCases();
//		for (CBRCase c: cases)
//			System.out.println(c.getDescription());
        return _caseBase;
    }
    public ArrayList<SimilarVerdict> getSimilarCases(CBRQuery query) throws ExecutionException {
        ArrayList<SimilarVerdict> cd = new ArrayList<>();
        Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(_caseBase.getCases(), query, simConfig);
        eval = SelectCases.selectTopKRR(eval, 5);
        System.out.println("Retrieved cases:");
        for (RetrievalResult nse : eval)
        {
            System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());
            SimilarVerdict fd = new SimilarVerdict ((CaseDescription) nse.get_case().getDescription());
            fd.setSimilarity(nse.getEval());
            cd.add(fd);
        }
        return cd;

    }
    public static ArrayList<SimilarVerdict> findSimilarJudgements(Verdict data, StandardCBRApplication recommender) {
        try {
            recommender.configure();
            recommender.preCycle();
            CBRQuery query = new CBRQuery();


            CaseDescription cd = new CaseDescription(data);
            query.setDescription(cd);
            recommender.postCycle();
            return ((CbrApp) recommender).getSimilarCases(query);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}