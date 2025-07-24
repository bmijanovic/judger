import React, {useState} from 'react';
import {
    TextField,
    Button,
    MenuItem,
    Checkbox,
    FormControlLabel,
    Box,
    Typography,
} from '@mui/material';

const verdictTypes = ['PRISON', 'PROBATION', 'FINE']; // ← adjust if needed
const financialStatuses = ['LOW_INCOME', 'MIDDLE_INCOME', 'HIGH_INCOME']; // ← adjust if needed
export const NewVerdicts = () => {
    const [formData, setFormData] = useState({
        court: '',
        verdictNumber: '',
        date: '',
        judgeName: '',
        prosecutor: '',
        defendantName: '',
        criminalOffense: '',
        appliedProvisions: '',
        verdict: '',
        numDefendants: '',
        previouslyConvicted: false,
        awareOfIllegality: false,
        defendantFinancialStatus: '',
        numVictimsEndangered: '',
        physicalAbuseInvolved: false,
        psychologicalAbuseInvolved: false,
        injuryDescriptions: '',
        actionsTakenAgainstVictim: '',
        methodsOfRestraint: '',
    });

    const handleChange = (e) => {
        const {name, value, type, checked} = e.target;
        setFormData((prev) => ({
            ...prev,
            [name]: type === 'checkbox' ? checked : value,
        }));
    };

    const handleSubmit = async (e) => {
        e.preventDefault();

        // Convert comma-separated injury descriptions into array
        const payload = {
            ...formData,
            injuryDescriptions: formData.injuryDescriptions
                .split(',')
                .map((s) => s.trim())
                .filter((s) => s.length > 0),
        };

        try {
            const res = await fetch('http://localhost:8080/verdicts', {
                method: 'POST',
                headers: {'Content-Type': 'application/json'},
                body: JSON.stringify(payload),
            });

            if (res.ok) {
                alert('Verdict submitted successfully!');
                setFormData((prev) => ({...prev, verdictNumber: '', court: '', judgeName: '', /* reset as needed */}));
            } else {
                alert('Error submitting verdict.');
            }
        } catch (err) {
            console.error('Error:', err);
            alert('Submission failed.');
        }
    };

    return (
        <Box sx={{maxWidth: 800, mx: 'auto', p: 3, color: 'black'}}>
            <Typography variant="h5" gutterBottom>
                New Verdict Form
            </Typography>
            <form onSubmit={handleSubmit}>
                <Box sx={{display: 'flex', width: '100%', flexDirection: 'row'}}>
                    <TextField sx={{mr: 3}} fullWidth label="Court" name="court" value={formData.court}
                               onChange={handleChange}
                               margin="normal"/>
                    <TextField sx={{ml: 3}} fullWidth label="Verdict Number" name="verdictNumber"
                               value={formData.verdictNumber}
                               onChange={handleChange} margin="normal"/>

                </Box>
                <Box sx={{display: 'flex', width: '100%', flexDirection: 'row'}}>

                    <TextField sx={{mr: 3}}  fullWidth type="date" label="Date" name="date" value={formData.date}
                               onChange={handleChange}
                               margin="normal" InputLabelProps={{shrink: true}}/>

                    <TextField sx={{ml: 3}}  fullWidth label="Judge Name" name="judgeName" value={formData.judgeName}
                               onChange={handleChange} margin="normal"/>
                </Box>
                <Box sx={{display: 'flex', width: '100%', flexDirection: 'row'}}>

                    <TextField sx={{mr: 3}}  fullWidth label="Prosecutor" name="prosecutor" value={formData.prosecutor}
                               onChange={handleChange} margin="normal"/>
                    <TextField sx={{ml: 3}}  fullWidth label="Defendant Name" name="defendantName" value={formData.defendantName}
                               onChange={handleChange} margin="normal"/>
                </Box>
                <Box sx={{display: 'flex', width: '100%', flexDirection: 'row'}}>

                    <TextField sx={{mr: 3}}  fullWidth label="Criminal Offense" name="criminalOffense"
                               value={formData.criminalOffense}
                               onChange={handleChange} margin="normal"/>
                    <TextField sx={{ml: 3}}  fullWidth label="Applied Provisions" name="appliedProvisions"
                               value={formData.appliedProvisions} onChange={handleChange} margin="normal"/>
                </Box>
                <Box sx={{display: 'flex', width: '100%', flexDirection: 'row'}}>

                    <TextField
                        sx={{mr: 3}}
                        select
                        fullWidth
                        label="Verdict Type"
                        name="verdict"
                        value={formData.verdict}
                        onChange={handleChange}
                        margin="normal"
                    >
                        {verdictTypes.map((v) => (
                            <MenuItem key={v} value={v}>{v}</MenuItem>
                        ))}
                    </TextField>

                    <TextField sx={{ml: 3}}  fullWidth label="Number of Defendants" type="number" name="numDefendants"
                               value={formData.numDefendants} onChange={handleChange} margin="normal"/>
                </Box>
                <Box sx={{display: 'flex', width: '100%', flexDirection: 'row'}}>

                    <TextField
                        sx={{mr: 3}}
                        select
                        fullWidth
                        label="Financial Status"
                        name="defendantFinancialStatus"
                        value={formData.defendantFinancialStatus}
                        onChange={handleChange}
                        margin="normal"
                    >
                        {financialStatuses.map((s) => (
                            <MenuItem key={s} value={s}>{s}</MenuItem>
                        ))}
                    </TextField>

                    <TextField
                        sx={{ml: 3}} fullWidth label="Number of Victims Endangered" type="number" name="numVictimsEndangered"
                               value={formData.numVictimsEndangered} onChange={handleChange} margin="normal"/>
                </Box>

                <Box sx={{display: 'flex', width: '100%', flexDirection: 'column',justifyContent:"space-between"}}>

            <FormControlLabel control={<Checkbox checked={formData.physicalAbuseInvolved} onChange={handleChange}
                                                     name="physicalAbuseInvolved"/>} label="Physical Abuse Involved"/>
                <FormControlLabel
                    control={<Checkbox checked={formData.psychologicalAbuseInvolved} onChange={handleChange}
                                       name="psychologicalAbuseInvolved"/>} label="Psychological Abuse Involved"/>
                </Box>
                <Box sx={{display: 'flex', width: '100%', flexDirection: 'column',justifyContent:"space-between"}}>

                <FormControlLabel control={<Checkbox checked={formData.previouslyConvicted} onChange={handleChange}
                                                     name="previouslyConvicted"/>} label="Previously Convicted"/>
                <FormControlLabel control={<Checkbox checked={formData.awareOfIllegality} onChange={handleChange}
                                                     name="awareOfIllegality"/>} label="Aware of Illegality"/>
                </Box>
                <TextField
                    fullWidth
                    minRows={3}
                    multiline={true}
                    label="Injury Descriptions (comma-separated)"
                    name="injuryDescriptions"
                    value={formData.injuryDescriptions}
                    onChange={handleChange}
                    margin="normal"
                />
                <TextField
                    fullWidth
                    minRows={3}
                    multiline={true}
                    label="Actions Taken Against Victim"
                    name="actionsTakenAgainstVictim"
                    value={formData.actionsTakenAgainstVictim}
                    onChange={handleChange}
                    margin="normal"
                />
                <TextField
                    fullWidth
                    minRows={3}
                    multiline={true}
                    label="Methods of Restraint"
                    name="methodsOfRestraint"
                    value={formData.methodsOfRestraint}
                    onChange={handleChange}
                    margin="normal"
                />

                <Button type="submit" variant="contained" sx={{mt: 3}}>
                    Submit Verdict
                </Button>
            </form>
        </Box>
    );
}