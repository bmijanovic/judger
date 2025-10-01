package org.example.judgerserver.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.example.judgerserver.jcolibri.CaseDescription;
import org.example.judgerserver.model.FinancialStatus;
import org.example.judgerserver.model.InjurySeverity;
import org.example.judgerserver.model.VerdictType;
import org.example.judgerserver.model.WeaponType;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Set;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SimilarVerdict {
    private Long id;
    private String court;
    private String verdictNumber;
    private LocalDate date; // formatted as dd.MM.yyyy
    private String judgeName;
    private String prosecutor;
    private String defendantName;
    private String criminalOffense;
    private Set<String> appliedProvisions;
    private VerdictType verdict;
    private Integer numDefendants;
    private Boolean previouslyConvicted;
    private Boolean awareOfIllegality;
    private FinancialStatus defendantFinancialStatus;
    private Integer numVictimsEndangered;
    private Boolean physicalAbuseInvolved;
    private Boolean psychologicalAbuseInvolved;
    private Set<String> injuryDescriptions;
    private WeaponType weaponType;
    private InjurySeverity injurySeverity;

    private double similarity;

    public SimilarVerdict(CaseDescription v) {
        this.id = v.getId();
        this.court = v.getCourt();
        this.verdictNumber = v.getVerdictNumber();
        this.date = v.getDate() != null ? LocalDate.parse(v.getDate(), DateTimeFormatter.ofPattern("dd-MM-yyyy")) : null;
        this.judgeName = v.getJudgeName();
        this.prosecutor = v.getProsecutor();
        this.defendantName = v.getDefendantName();
        this.criminalOffense = v.getCriminalOffense();
        this.appliedProvisions = v.getAppliedProvisions();
        this.verdict = v.getVerdict();
        this.numDefendants = v.getNumDefendants();
        this.previouslyConvicted = v.getPreviouslyConvicted();
        this.awareOfIllegality = v.getAwareOfIllegality();
        this.defendantFinancialStatus = v.getDefendantFinancialStatus();
        this.numVictimsEndangered = v.getNumVictimsEndangered();
        this.physicalAbuseInvolved = v.getPhysicalAbuseInvolved();
        this.psychologicalAbuseInvolved = v.getPsychologicalAbuseInvolved();
        this.injuryDescriptions = v.getInjuryDescriptions();
        this.weaponType = v.getWeaponType();
        this.injurySeverity = v.getInjurySeverity();
    }

    public String toCSV() {
        String separator = "|";
        String injuries = injuryDescriptions != null ? String.join(",", injuryDescriptions) : "";
        String provisions = appliedProvisions != null ? String.join(",", appliedProvisions) : "";
        return id + separator +
                court + separator +
                verdictNumber + separator +
                date + separator +
                judgeName + separator +
                prosecutor + separator +
                defendantName + separator +
                criminalOffense + separator +
                provisions + separator +
                verdict + separator +
                numDefendants + separator +
                previouslyConvicted + separator +
                awareOfIllegality + separator +
                (defendantFinancialStatus != null ? defendantFinancialStatus.name().toLowerCase() : "unknown") + separator +
                numVictimsEndangered + separator +
                physicalAbuseInvolved + separator +
                psychologicalAbuseInvolved + separator +
                injuries + separator +
                weaponType + separator +
                injurySeverity + separator +
                similarity;
    }
}