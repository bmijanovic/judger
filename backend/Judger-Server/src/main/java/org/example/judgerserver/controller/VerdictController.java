package org.example.judgerserver.controller;

import org.example.judgerserver.dto.SimilarVerdict;
import org.example.judgerserver.jcolibri.CbrApp;
import org.example.judgerserver.model.Verdict;
import org.example.judgerserver.repository.VerdictRepository;
import org.example.judgerserver.service.DrDeviceService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.util.ReflectionUtils;

import java.lang.reflect.Field;
import java.time.LocalDate;
import java.util.*;

@CrossOrigin(origins = "http://localhost:5173")
@RestController
@RequestMapping("/verdicts")
public class VerdictController {
    private final VerdictRepository verdictRepository;
    private final DrDeviceService drDeviceService;
    private final CbrApp cbrApp;

    public VerdictController(VerdictRepository verdictRepository, CbrApp cbrApp, DrDeviceService drDeviceService) {
        this.verdictRepository = verdictRepository;
        this.drDeviceService = drDeviceService;
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

    @PatchMapping("/{id}")
    public ResponseEntity<Verdict> updateVerdict(
            @PathVariable Long id,
            @RequestBody Map<String, Object> updates) {

        Optional<Verdict> verdictOpt = verdictRepository.findById(id);
        if (verdictOpt.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        Verdict verdict = verdictOpt.get();

        updates.forEach((key, value) -> {
            Field field = ReflectionUtils.findField(Verdict.class, key);
            if (field != null) {
                field.setAccessible(true);

                Object convertedValue = convertValue(value, field.getType());
                ReflectionUtils.setField(field, verdict, convertedValue);
            }
        });

        Verdict saved = verdictRepository.save(verdict);
        return ResponseEntity.ok(saved);
    }

    @GetMapping("/{id}/similar")
    public ArrayList<SimilarVerdict> getSimilarVerdict(@PathVariable Long id) {
        Verdict verdict = verdictRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
        ArrayList<SimilarVerdict> similarVerdicts = CbrApp.findSimilarJudgements(verdict, cbrApp);
        if (similarVerdicts == null || similarVerdicts.isEmpty()) {
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
    public String getRuleVerdict(@PathVariable Long id) {
        Verdict verdict = verdictRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
        String s = this.drDeviceService.decisionBasedOnLaw(verdict);
        return s;
    }

    private Object convertValue(Object value, Class<?> targetType) {
        switch (value) {
            case null -> {
                return null;
            }

            // --- Enums ---
            case String strValue when targetType.isEnum() -> {
                @SuppressWarnings({"unchecked", "rawtypes"})
                Object enumValue = Enum.valueOf((Class<Enum>) targetType, strValue.toUpperCase());
                return enumValue;
            }

            // --- LocalDate ---
            case String strValue when targetType.equals(LocalDate.class) -> {
                return LocalDate.parse(strValue);
            }

            // --- Set<String> ---
            case List<?> listValue when Set.class.isAssignableFrom(targetType) -> {
                return new HashSet<>(listValue.stream()
                        .map(Object::toString)
                        .toList());
            }

            // --- Integer ---
            case Number numberValue when targetType.equals(Integer.class) -> {
                return numberValue.intValue();
            }

            // --- Boolean (wrapper or primitive) ---
            case Boolean boolValue when (targetType.equals(Boolean.class) || targetType.equals(boolean.class)) -> {
                return boolValue;
            }
            default -> {
            }
        }

        // --- Fallback (Strings etc.) ---
        return value;
    }
}