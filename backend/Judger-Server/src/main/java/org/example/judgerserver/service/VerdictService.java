package org.example.judgerserver.service;

import org.example.judgerserver.repository.VerdictRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VerdictService {

    @Autowired
    private final VerdictRepository verdictRepository;

    public VerdictService(VerdictRepository verdictRepository) {
        this.verdictRepository = verdictRepository;
    }




}
