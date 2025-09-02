import React, { useState } from 'react';
import {
    TextField,
    Button,
    MenuItem,
    Checkbox,
    FormControlLabel,
    Box,
    Typography,
} from '@mui/material';
import {useNavigate} from "react-router";

const verdictTypes = ['PRISON', 'SUSPENDED', 'ACQUITTED'];
const financialStatuses = ['POOR','LOW_INCOME', 'MIDDLE_INCOME', 'HIGH_INCOME','WEALTHY','UNKNOWN'];

interface FormErrors {
    court?: string;
    verdictNumber?: string;
    date?: string;
    judgeName?: string;
    prosecutor?: string;
    defendantName?: string;
    criminalOffense?: string;
    numDefendants?: string;
    defendantFinancialStatus?: string;
    injuryDescriptions?: string;
    methodsOfRestraint?: string;
}

interface PatchErrors {
    verdict?: string;
    appliedProvisions?: string;
    actionsTakenAgainstVictim?: string;
}

export const NewVerdicts = () => {
    const [formData, setFormData] = useState({
        court: '',
        verdictNumber: '',
        date: '',
        judgeName: '',
        prosecutor: '',
        defendantName: '',
        criminalOffense: '',
        numDefendants: '',
        previouslyConvicted: false,
        awareOfIllegality: false,
        defendantFinancialStatus: '',
        numVictimsEndangered: '',
        physicalAbuseInvolved: false,
        psychologicalAbuseInvolved: false,
        injuryDescriptions: '',
        methodsOfRestraint: '',
    });

    const navigate = useNavigate();
    const [similarVerdicts, setSimilarVerdicts] = useState([]);
    const [createdVerdictId, setCreatedVerdictId] = useState(null);
    const [patchData, setPatchData] = useState({
        verdict: '',
        appliedProvisions: '',
        actionsTakenAgainstVictim: '',
    });
    const [formErrors, setFormErrors] = useState<FormErrors>({});
    const [patchErrors, setPatchErrors] = useState<PatchErrors>({});

    const handleChange = (e) => {
        const { name, value, type, checked } = e.target;
        setFormData((prev) => ({
            ...prev,
            [name]: type === 'checkbox' ? checked : value,
        }));

        setFormErrors((prev) => ({ ...prev, [name]: '' }));
    };

    const handlePatchChange = (e) => {
        const { name, value } = e.target;
        setPatchData((prev) => ({
            ...prev,
            [name]: value,
        }));
        setPatchErrors((prev) => ({ ...prev, [name]: '' }));
    };

    // Validate New Verdict form
    const validateForm = () => {
        const errors = {};
        const requiredFields = [
            'court',
            'verdictNumber',
            'date',
            'judgeName',
            'prosecutor',
            'defendantName',
            'criminalOffense',
            'numDefendants',
            'defendantFinancialStatus',
            'injuryDescriptions',
            'methodsOfRestraint',
        ];

        requiredFields.forEach((field) => {
            if (!formData[field] || formData[field].toString().trim() === '') {
                errors[field] = 'This field is required';
            }
        });

        if (formData.numDefendants && Number(formData.numDefendants) <= 0) {
            errors.numDefendants = 'Must be at least 1';
        }

        setFormErrors(errors);
        return Object.keys(errors).length === 0;
    };

    // Validate Patch (Finalize Verdict) form
    const validatePatchForm = () => {
        const errors = {};
        if (!patchData.verdict) errors.verdict = 'This field is required';
        if (!patchData.appliedProvisions || patchData.appliedProvisions.trim() === '') {
            errors.appliedProvisions = 'This field is required';
        }
        if (!patchData.actionsTakenAgainstVictim || patchData.actionsTakenAgainstVictim.trim() === '') {
            errors.actionsTakenAgainstVictim = 'This field is required';
        }
        setPatchErrors(errors);
        return Object.keys(errors).length === 0;
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        if (!validateForm()) return;

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
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(payload),
            });

            if (res.ok) {
                const createdVerdict = await res.json();
                setCreatedVerdictId(createdVerdict.id);
                alert('Verdict submitted successfully!');

                setFormData({
                    court: '',
                    verdictNumber: '',
                    date: '',
                    judgeName: '',
                    prosecutor: '',
                    defendantName: '',
                    criminalOffense: '',
                    numDefendants: '',
                    previouslyConvicted: false,
                    awareOfIllegality: false,
                    defendantFinancialStatus: '',
                    numVictimsEndangered: '',
                    physicalAbuseInvolved: false,
                    psychologicalAbuseInvolved: false,
                    injuryDescriptions: '',
                    methodsOfRestraint: '',
                });
                setFormErrors({});

                const simRes = await fetch(`http://localhost:8080/verdicts/${createdVerdict.id}/similar`);
                if (simRes.ok) {
                    const simData = await simRes.json();
                    setSimilarVerdicts(simData);

                    setPatchData({
                        verdict: createdVerdict.verdict || '',
                        appliedProvisions: createdVerdict.appliedProvisions || '',
                        actionsTakenAgainstVictim: createdVerdict.actionsTakenAgainstVictim || ''
                    });
                } else {
                    console.warn('Could not fetch similar verdicts');
                }
            } else {
                alert('Error submitting verdict.');
            }
        } catch (err) {
            console.error('Error:', err);
            alert('Submission failed.');
        }
    };

    const handlePatchSubmit = async () => {
        if (!createdVerdictId) return;
        if (!validatePatchForm()) return;

        try {
            const res = await fetch(`http://localhost:8080/verdicts/${createdVerdictId}`, {
                method: 'PATCH',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(patchData),
            });

            if (res.ok) {
                const updated = await res.json();
                alert('Verdict submited successfully!');
                console.log('Updated verdict:', updated);
                navigate('/');
            } else {
                alert('Error patching verdict.');
            }
        } catch (err) {
            console.error('Error:', err);
            alert('Patch failed.');
        }
    };

    return (
        <Box sx={{ maxWidth: 800, mx: 'auto', p: 3, color: 'black' }}>
            {!createdVerdictId && (
                <Box>
                    <Typography variant="h5" gutterBottom>New Verdict</Typography>
                    <form onSubmit={handleSubmit}>
                        <Box sx={{ display: 'flex', width: '100%', flexDirection: 'row' }}>
                            <TextField
                                sx={{ mr: 3 }}
                                fullWidth
                                label="Court"
                                name="court"
                                value={formData.court}
                                onChange={handleChange}
                                margin="normal"
                                error={!!formErrors.court}
                                helperText={formErrors.court || ''}
                            />
                            <TextField
                                sx={{ ml: 3 }}
                                fullWidth
                                label="Verdict Number"
                                name="verdictNumber"
                                value={formData.verdictNumber}
                                onChange={handleChange}
                                margin="normal"
                                error={!!formErrors.verdictNumber}
                                helperText={formErrors.verdictNumber || ''}
                            />
                        </Box>

                        <Box sx={{ display: 'flex', width: '100%', flexDirection: 'row' }}>
                            <TextField
                                sx={{ mr: 3 }}
                                fullWidth
                                type="date"
                                label="Date"
                                name="date"
                                value={formData.date}
                                onChange={handleChange}
                                margin="normal"
                                slotProps={{ label: { shrink: true } }}
                                error={!!formErrors.date}
                                helperText={formErrors.date || ''}
                            />
                            <TextField
                                sx={{ ml: 3 }}
                                fullWidth
                                label="Judge Name"
                                name="judgeName"
                                value={formData.judgeName}
                                onChange={handleChange}
                                margin="normal"
                                error={!!formErrors.judgeName}
                                helperText={formErrors.judgeName || ''}
                            />
                        </Box>

                        <Box sx={{ display: 'flex', width: '100%', flexDirection: 'row' }}>
                            <TextField
                                sx={{ mr: 3 }}
                                fullWidth
                                label="Prosecutor"
                                name="prosecutor"
                                value={formData.prosecutor}
                                onChange={handleChange}
                                margin="normal"
                                error={!!formErrors.prosecutor}
                                helperText={formErrors.prosecutor || ''}
                            />
                            <TextField
                                sx={{ ml: 3 }}
                                fullWidth
                                label="Defendant Name"
                                name="defendantName"
                                value={formData.defendantName}
                                onChange={handleChange}
                                margin="normal"
                                error={!!formErrors.defendantName}
                                helperText={formErrors.defendantName || ''}
                            />
                        </Box>

                        <TextField
                            fullWidth
                            label="Criminal Offense"
                            name="criminalOffense"
                            value={formData.criminalOffense}
                            onChange={handleChange}
                            margin="normal"
                            error={!!formErrors.criminalOffense}
                            helperText={formErrors.criminalOffense || ''}
                        />

                        <Box sx={{ display: 'flex', width: '100%', flexDirection: 'row' }}>
                            <TextField
                                sx={{ mr: 3 }}
                                fullWidth
                                label="Number of Defendants"
                                type="number"
                                name="numDefendants"
                                value={formData.numDefendants}
                                onChange={handleChange}
                                margin="normal"
                                slotProps={{ htmlInput: { min: 1 } }}
                                error={!!formErrors.numDefendants}
                                helperText={formErrors.numDefendants || ''}
                            />
                            <TextField
                                sx={{ ml: 3 }}
                                select
                                fullWidth
                                label="Financial Status"
                                name="defendantFinancialStatus"
                                value={formData.defendantFinancialStatus}
                                onChange={handleChange}
                                margin="normal"
                                error={!!formErrors.defendantFinancialStatus}
                                helperText={formErrors.defendantFinancialStatus || ''}
                            >
                                {financialStatuses.map((s) => (
                                    <MenuItem key={s} value={s}>{s}</MenuItem>
                                ))}
                            </TextField>
                        </Box>

                        <Box sx={{ display: 'flex', flexDirection: 'column', mt: 1 }}>
                            <FormControlLabel control={<Checkbox checked={formData.physicalAbuseInvolved} onChange={handleChange} name="physicalAbuseInvolved" />} label="Physical Abuse Involved" />
                            <FormControlLabel control={<Checkbox checked={formData.psychologicalAbuseInvolved} onChange={handleChange} name="psychologicalAbuseInvolved" />} label="Psychological Abuse Involved" />
                            <FormControlLabel control={<Checkbox checked={formData.previouslyConvicted} onChange={handleChange} name="previouslyConvicted" />} label="Previously Convicted" />
                            <FormControlLabel control={<Checkbox checked={formData.awareOfIllegality} onChange={handleChange} name="awareOfIllegality" />} label="Aware of Illegality" />
                        </Box>

                        <TextField
                            fullWidth
                            minRows={3}
                            multiline
                            label="Injury Descriptions (comma-separated)"
                            name="injuryDescriptions"
                            value={formData.injuryDescriptions}
                            onChange={handleChange}
                            margin="normal"
                            error={!!formErrors.injuryDescriptions}
                            helperText={formErrors.injuryDescriptions || ''}
                        />
                        <TextField
                            fullWidth
                            minRows={3}
                            multiline
                            label="Methods of Restraint"
                            name="methodsOfRestraint"
                            value={formData.methodsOfRestraint}
                            onChange={handleChange}
                            margin="normal"
                            error={!!formErrors.methodsOfRestraint}
                            helperText={formErrors.methodsOfRestraint || ''}
                        />

                        <Button type="submit" variant="contained" sx={{ mt: 3 }}>Initialize Verdict</Button>
                    </form>
                </Box>
            )}

            {similarVerdicts.length > 0 && (
                <Box sx={{ mt: 5 }}>
                    <Typography variant="h6" gutterBottom>Similar Verdicts</Typography>
                    <table style={{ width: '100%', borderCollapse: 'collapse' }}>
                        <thead>
                        <tr>
                            <th style={{ border: '1px solid #ccc', padding: '8px' }}>Verdict Number</th>
                            <th style={{ border: '1px solid #ccc', padding: '8px' }}>Court</th>
                            <th style={{ border: '1px solid #ccc', padding: '8px' }}>Financial Status</th>
                            <th style={{ border: '1px solid #ccc', padding: '8px' }}>Verdict Type</th>
                            <th style={{ border: '1px solid #ccc', padding: '8px' }}>Similarity</th>
                        </tr>
                        </thead>
                        <tbody>
                        {similarVerdicts.map((v) => (
                            <tr key={v.id}>
                                <td style={{ border: '1px solid #ccc', padding: '8px' }}>{v.verdictNumber}</td>
                                <td style={{ border: '1px solid #ccc', padding: '8px' }}>{v.court}</td>
                                <td style={{ border: '1px solid #ccc', padding: '8px' }}>{v.defendantFinancialStatus}</td>
                                <td style={{ border: '1px solid #ccc', padding: '8px' }}>{v.verdict}</td>
                                <td style={{ border: '1px solid #ccc', padding: '8px' }}>{(v.similarity * 100).toFixed(2)}%</td>
                            </tr>
                        ))}
                        </tbody>
                    </table>
                </Box>
            )}

            {createdVerdictId && (
                <Box sx={{ mt: 3 }}>
                    <Typography variant="h6" gutterBottom>Finalize Verdict</Typography>

                    <TextField
                        sx={{ mr: 3 }}
                        select
                        fullWidth
                        label="Verdict Type"
                        name="verdict"
                        value={patchData.verdict}
                        onChange={handlePatchChange}
                        margin="normal"
                        error={!!patchErrors.verdict}
                        helperText={patchErrors.verdict || ''}
                    >
                        {verdictTypes.map((v) => (
                            <MenuItem key={v} value={v}>{v}</MenuItem>
                        ))}
                    </TextField>

                    <TextField
                        fullWidth
                        label="Applied Provisions (comma-separated)"
                        name="appliedProvisions"
                        value={patchData.appliedProvisions}
                        onChange={handlePatchChange}
                        margin="normal"
                        error={!!patchErrors.appliedProvisions}
                        helperText={patchErrors.appliedProvisions || ''}
                    />

                    <TextField
                        fullWidth
                        minRows={3}
                        multiline
                        label="Actions Taken Against Victim"
                        name="actionsTakenAgainstVictim"
                        value={patchData.actionsTakenAgainstVictim || ''}
                        onChange={handlePatchChange}
                        margin="normal"
                        error={!!patchErrors.actionsTakenAgainstVictim}
                        helperText={patchErrors.actionsTakenAgainstVictim || ''}
                    />

                    <Button variant="contained" sx={{ mt: 2 }} onClick={handlePatchSubmit}>Submit Verdict</Button>
                </Box>
            )}
        </Box>
    );
};
