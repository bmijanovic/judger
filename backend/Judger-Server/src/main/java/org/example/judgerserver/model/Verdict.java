package org.example.judgerserver.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Verdict {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "court")
    private String court;

    @Column(name = "verdict_number")
    private String verdictNumber;

    @Column(name = "date")
    private LocalDate date;

    @Column(name = "judge_name")
    private String judgeName;

    @Column(name = "prosecutor")
    private String prosecutor;

    @Column(name = "defendant_name")
    private String defendantName;

    @Column(name = "criminal_offense")
    private String criminalOffense;

    @Column(name = "applied_provisions")
    private String appliedProvisions;

    @Enumerated(EnumType.STRING)
    @Column(name = "verdict")
    private VerdictType verdict;

    // "Da li je u pitanju jedan ili više okrivljenih?"
    @Column(name = "num_defendants")
    private Integer numDefendants;

    // "Da li je okrivljeni prethodno osuđivan?"
    @Column(name = "previously_convicted")
    private Boolean previouslyConvicted;

    // "Da li je okrivljeni bio svestan da krši zakon?"
    @Column(name = "aware_of_illegality")
    private Boolean awareOfIllegality;

    // "Koje je imovno stanje okrivljenog?"
    @Column(name = "defendant_financial_status")
    private FinancialStatus defendantFinancialStatus;

    // "Da li je ugrožena jedna ili više osoba?"
    @Column(name = "num_victims_endangered")
    private Integer numVictimsEndangered;

    // "Da li je okrivljeni fizički zlostavljao žrtvu?"
    @Column(name = "physical_abuse_involved")
    private Boolean physicalAbuseInvolved;

    // "Da li je okrivljeni psihički zlostavljao žrtvu?"
    @Column(name = "psychological_abuse_involved")
    private Boolean psychologicalAbuseInvolved;

    // "Koje vrste povrede su nanesene žrtvi?" (Could be a Set<String> or a JSON string if multiple detailed types are needed)
    // "Koje su lokacije (i broj povreda)?" (Could be a more complex object/JSON if structured data is needed for each injury)
    @Column(name = "injury_descriptions")
    private Set<String> injuryDescriptions;

    // "Koje radnje su preduzete nad žrtvom?"
    @Column(name = "actions_taken_against_victim")
    private String actionsTakenAgainstVictim;

    // "Koje su metode ograničenja urađene nad žrtvom?"
    @Column(name = "methods_of_restraint")
    private String methodsOfRestraint;
}