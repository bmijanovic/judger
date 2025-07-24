import {Card, CardContent, Typography} from "@mui/material";
import {useEffect, useState} from "react";
import axios from "axios";
import Box from "@mui/material/Box";

export const Verdicts = () => {
    const [verdicts, setVerdicts] = useState([]);
    const [selectedVerdict, setSelectedVerdict] = useState(null);

    useEffect(() => {
        axios.get('http://localhost:8080/verdicts').then(response => {
            setVerdicts(response.data);
            setSelectedVerdict(response.data[0]);
        });
    }, []);
    return <div style={{
        display: "flex",
        flexDirection: "row",
        justifyContent: "space-between",
        width: "100%",
        overflow: "hidden",
        height: "100%",
    }}>

        <Box sx={{
            overflow: "auto",
            minWidth: "320px",
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
            height: "100%",
            backgroundColor: "#c0cff3"
        }}>
            {verdicts.length > 0 && verdicts.map((verdict) => (
                <Card key={verdict.id} sx={{
                    minWidth: '280px',
                    minHeight:'150px',
                    width: "80%",
                    mt: 3,
                    mb: 3,
                    cursor: "pointer",
                    backgroundColor: verdict.id == selectedVerdict.id ? '#84a2ec' : 'white'
                }} onClick={() => setSelectedVerdict(verdict)}>
                    <CardContent>
                        <Typography gutterBottom sx={{color: 'text.secondary', fontSize: 14}}>
                            {verdict.date}
                        </Typography>
                        <Typography variant="h5" component="div">
                            {verdict.verdictNumber}
                        </Typography>
                        <Typography sx={{color: 'text.secondary', mb: 1.5}}>{verdict.court}</Typography>
                        <Typography variant="body2">
                            {verdict.defendantName}
                        </Typography>
                    </CardContent>
                </Card>
            ))}
        </Box>
        <Box sx={{overflow: "auto", width: '100%'}}>
            {selectedVerdict != null &&
                <div style={{color: 'black', padding: '20px', maxWidth: '800px', margin: '0 auto', lineHeight: '1.6'}}>
                    <h2 style={{marginBottom: '30px', textTransform: 'uppercase'}}>
                        Verdict: {selectedVerdict.verdictNumber}
                    </h2>

                    <table style={{width: '100%', borderCollapse: 'collapse', marginBottom: '20px'}}>
                        <tbody>
                        {[
                            ['Court', selectedVerdict.court],
                            ['Verdict Date', selectedVerdict.date],
                            ['Judge', selectedVerdict.judgeName],
                            ['Prosecutor', selectedVerdict.prosecutor],
                            ['Defendant(s)', selectedVerdict.defendantName],
                            ['Criminal Offense', selectedVerdict.criminalOffense],
                            ['Applied Provisions', selectedVerdict.appliedProvisions],
                            ['Verdict Type', selectedVerdict.verdict],
                            ['Number of Defendants', selectedVerdict.numDefendants],
                            ['Previously Convicted', selectedVerdict.previouslyConvicted ? 'Yes' : 'No'],
                            ['Aware of Illegality', selectedVerdict.awareOfIllegality ? 'Yes' : 'No'],
                            ['Defendant Financial Status', selectedVerdict.defendantFinancialStatus],
                            ['Number of Victims Endangered', selectedVerdict.numVictimsEndangered],
                            ['Physical Abuse Involved', selectedVerdict.physicalAbuseInvolved ? 'Yes' : 'No'],
                            ['Psychological Abuse Involved', selectedVerdict.psychologicalAbuseInvolved ? 'Yes' : 'No'],
                        ].map(([label, value], i) => (
                            <tr key={label} style={{backgroundColor: i % 2 === 0 ? '#f9f9f9' : '#ffffff'}}>
                                <td style={{
                                    padding: '10px',
                                    fontWeight: 'bold',
                                    verticalAlign: 'top',
                                    width: '40%'
                                }}>{label}:
                                </td>
                                <td style={{padding: '10px'}}>{value}</td>
                            </tr>
                        ))}
                        </tbody>
                    </table>

                    <h3 style={{marginTop: '30px'}}>Injury Descriptions:</h3>
                    <ul style={{paddingLeft: '20px'}}>
                        {selectedVerdict.injuryDescriptions.map((desc, i) => (
                            <li key={i} style={{marginBottom: '8px'}}>{desc}</li>
                        ))}
                    </ul>

                    <h3>Actions Taken Against Victim:</h3>
                    <p>{selectedVerdict.actionsTakenAgainstVictim}</p>

                    <h3>Methods of Restraint:</h3>
                    <p>{selectedVerdict.methodsOfRestraint}</p>
                </div>}


        </Box>


    </div>;
}