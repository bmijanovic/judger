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
import org.example.judgerserver.model.InjurySeverity;
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

        financialSim.setSimilarity(String.valueOf(FinancialStatus.POOR), String.valueOf(FinancialStatus.LOW_INCOME), 0.85);
        financialSim.setSimilarity(String.valueOf(FinancialStatus.POOR), String.valueOf(FinancialStatus.MIDDLE_INCOME), 0.5);
        financialSim.setSimilarity(String.valueOf(FinancialStatus.POOR), String.valueOf(FinancialStatus.HIGH_INCOME), 0.25);
        financialSim.setSimilarity(String.valueOf(FinancialStatus.POOR), String.valueOf(FinancialStatus.WEALTHY), 0.1);
        financialSim.setSimilarity(String.valueOf(FinancialStatus.POOR), String.valueOf(FinancialStatus.UNKNOWN), 0.0);

        financialSim.setSimilarity(String.valueOf(FinancialStatus.LOW_INCOME), String.valueOf(FinancialStatus.MIDDLE_INCOME), 0.7);
        financialSim.setSimilarity(String.valueOf(FinancialStatus.LOW_INCOME), String.valueOf(FinancialStatus.HIGH_INCOME), 0.4);
        financialSim.setSimilarity(String.valueOf(FinancialStatus.LOW_INCOME), String.valueOf(FinancialStatus.WEALTHY), 0.2);
        financialSim.setSimilarity(String.valueOf(FinancialStatus.LOW_INCOME), String.valueOf(FinancialStatus.UNKNOWN), 0.0);

        financialSim.setSimilarity(String.valueOf(FinancialStatus.MIDDLE_INCOME), String.valueOf(FinancialStatus.HIGH_INCOME), 0.75);
        financialSim.setSimilarity(String.valueOf(FinancialStatus.MIDDLE_INCOME), String.valueOf(FinancialStatus.WEALTHY), 0.5);
        financialSim.setSimilarity(String.valueOf(FinancialStatus.MIDDLE_INCOME), String.valueOf(FinancialStatus.UNKNOWN), 0.0);

        financialSim.setSimilarity(String.valueOf(FinancialStatus.HIGH_INCOME), String.valueOf(FinancialStatus.WEALTHY), 0.85);
        financialSim.setSimilarity(String.valueOf(FinancialStatus.UNKNOWN), String.valueOf(FinancialStatus.UNKNOWN), 0.0);

        simConfig.addMapping(new Attribute("financialStatus", CaseDescription.class), financialSim);

        TabularSimilarity injurySim = new TabularSimilarity(Arrays.asList(
                InjurySeverity.BLACKMAIL.name(),
                InjurySeverity.MINOR.name(),
                InjurySeverity.LIFE_THREATENING.name(),
                InjurySeverity.FATAL.name(),
                InjurySeverity.NONE.name()
        ));

        injurySim.setSimilarity(String.valueOf(InjurySeverity.BLACKMAIL), String.valueOf(InjurySeverity.MINOR), 0.3);
        injurySim.setSimilarity(String.valueOf(InjurySeverity.BLACKMAIL), String.valueOf(InjurySeverity.LIFE_THREATENING), 0.1);
        injurySim.setSimilarity(String.valueOf(InjurySeverity.BLACKMAIL), String.valueOf(InjurySeverity.FATAL), 0.05);
        injurySim.setSimilarity(String.valueOf(InjurySeverity.BLACKMAIL), String.valueOf(InjurySeverity.NONE), 0.0);

        injurySim.setSimilarity(String.valueOf(InjurySeverity.MINOR), String.valueOf(InjurySeverity.LIFE_THREATENING), 0.6);
        injurySim.setSimilarity(String.valueOf(InjurySeverity.MINOR), String.valueOf(InjurySeverity.FATAL), 0.3);
        injurySim.setSimilarity(String.valueOf(InjurySeverity.MINOR), String.valueOf(InjurySeverity.NONE), 0.0);

        injurySim.setSimilarity(String.valueOf(InjurySeverity.LIFE_THREATENING), String.valueOf(InjurySeverity.FATAL), 0.8);
        injurySim.setSimilarity(String.valueOf(InjurySeverity.LIFE_THREATENING), String.valueOf(InjurySeverity.NONE), 0.0);

        simConfig.addMapping(new Attribute("injurySeverity", CaseDescription.class), injurySim);

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
