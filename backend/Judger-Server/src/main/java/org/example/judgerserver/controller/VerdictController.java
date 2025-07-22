package org.example.judgerserver.controller;

import org.example.judgerserver.dto.SimilarVerdict;
import org.example.judgerserver.jcolibri.CbrApp;
import org.example.judgerserver.model.Verdict;
import org.example.judgerserver.repository.VerdictRepository;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/verdicts")
public class VerdictController {
    private final VerdictRepository verdictRepository;
    private final CbrApp cbrApp;

    public VerdictController(VerdictRepository verdictRepository, CbrApp cbrApp) {
        this.verdictRepository = verdictRepository;
        this.cbrApp = cbrApp;
    }

    @PostMapping
    public Verdict createVerdict(@RequestBody Verdict verdict) {
        verdict.setId(null);
        return verdictRepository.save(verdict);
    }

    @GetMapping
    public List<Verdict> getAllVerdicts() {
        return verdictRepository.findAll();
    }

    @GetMapping("/{id}")
    public Verdict getVerdict(@PathVariable Long id) {
        return verdictRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
    }

    @GetMapping("/{id}/similar")
    public ArrayList<SimilarVerdict> getSimilarVerdict(@PathVariable Long id) {
        Verdict verdict = verdictRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
        ArrayList<SimilarVerdict> similarVerdicts = CbrApp.findSimilarJudgements(verdict, cbrApp);
        if (similarVerdicts.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No similar verdicts found");
        }
        similarVerdicts.removeIf(c -> c.getId().equals(id));
        similarVerdicts.forEach(
                c -> c.setSimilarity(Math.max(c.getSimilarity(), 0))
        );
        similarVerdicts.sort((a, b) -> Double.compare(b.getSimilarity(), a.getSimilarity()));
        return similarVerdicts;

    }

    @GetMapping("/{id}/rule")
    public Verdict getRuleVerdict(@PathVariable Long id) {
        throw new ResponseStatusException(HttpStatus.NOT_IMPLEMENTED, "Rule-based logic not implemented yet");
    }
}