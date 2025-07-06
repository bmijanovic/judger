package org.example.judgerserver.repository;

import org.example.judgerserver.model.Verdict;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VerdictRepository extends JpaRepository<Verdict, Long> {

}