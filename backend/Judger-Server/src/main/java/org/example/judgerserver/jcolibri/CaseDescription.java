package org.example.judgerserver.jcolibri;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.example.judgerserver.model.*;

import java.time.format.DateTimeFormatter;
import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class CaseDescription implements CaseComponent {

    private Long id;
    private String court;
    private String verdictNumber;
    private String date;
    private String judgeName;
    private String prosecutor;
    private String defendantName;
    private String criminalOffense;
    private Set<String> appliedProvisions;
    private VerdictType verdict;

    private Integer numDefendants;
    private String previouslyConvicted;
    private String awareOfIllegality;
    private String defendantFinancialStatus;
    private Integer numVictimsEndangered;
    private String physicalAbuseInvolved;
    private String psychologicalAbuseInvolved;

    private Set<String> injuryDescriptions;
    private WeaponType weaponType;
    private String injurySeverity;

    public CaseDescription(Verdict v) {
        this.id = v.getId();
        this.court = truncate(v.getCourt());
        this.verdictNumber = truncate(v.getVerdictNumber());
        this.date = v.getDate() != null ? v.getDate().format(DateTimeFormatter.ofPattern("dd-MM-yyyy")) : "";
        this.judgeName = truncate(v.getJudgeName());
        this.prosecutor = truncate(v.getProsecutor());
        this.defendantName = truncate(v.getDefendantName());
        this.criminalOffense = truncate(v.getCriminalOffense());
        this.appliedProvisions = v.getAppliedProvisions();
        this.verdict = v.getVerdict();

        this.numDefendants = v.getNumDefendants();
        this.previouslyConvicted = v.getPreviouslyConvicted().toString();
        this.awareOfIllegality = v.getAwareOfIllegality().toString();
        this.defendantFinancialStatus = v.getDefendantFinancialStatus().name();
        this.numVictimsEndangered = v.getNumVictimsEndangered();
        this.physicalAbuseInvolved = v.getPhysicalAbuseInvolved().toString();
        this.psychologicalAbuseInvolved = v.getPsychologicalAbuseInvolved().toString();
        this.injuryDescriptions = v.getInjuryDescriptions();
        this.weaponType = v.getWeaponType();
        this.injurySeverity = v.getInjurySeverity().name();
    }

    private String truncate(String s) {
        if (s == null) return "";
        return s.length() > 255 ? s.substring(0, 255) : s;
    }

    @Override
    public Attribute getIdAttribute() {
        return new Attribute("id", this.getClass());
    }
}
