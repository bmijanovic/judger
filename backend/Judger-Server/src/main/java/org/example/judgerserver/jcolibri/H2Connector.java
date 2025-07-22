package org.example.judgerserver.jcolibri;

import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseBaseFilter;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.exception.InitializingException;
import org.example.judgerserver.jcolibri.CaseDescription;
import org.example.judgerserver.model.Verdict;
import org.example.judgerserver.repository.VerdictRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.net.URL;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

@Component
public class H2Connector implements Connector {

    @Autowired
    private VerdictRepository verdictRepository;



    @Override
    public Collection<CBRCase> retrieveAllCases() {
        List<Verdict> verdicts = verdictRepository.findAll();
        LinkedList<CBRCase> cases = new LinkedList<>();

        for (Verdict v : verdicts) {
            CaseDescription caseDescription = new CaseDescription(v);

            CBRCase cbrCase = new CBRCase();
            cbrCase.setDescription(caseDescription);

            cases.add(cbrCase);
        }

        return cases;
    }

    @Override
    public Collection<CBRCase> retrieveSomeCases(CaseBaseFilter caseBaseFilter) {
        return null;
    }

    @Override
    public void storeCases(Collection<CBRCase> cases) {
    }

    @Override
    public void deleteCases(Collection<CBRCase> cases) {
    }

    @Override
    public void close() {
    }

    @Override
    public void initFromXMLfile(URL file) throws InitializingException {
    }
}