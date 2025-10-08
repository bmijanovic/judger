import React, { useState } from 'react';
import {
    TextField,
    Button,
    MenuItem,
    Checkbox,
    FormControlLabel,
    Box,
    Typography,
    IconButton,
} from '@mui/material';
import { useNavigate } from 'react-router';

const verdictTypes = ['PRISON', 'SUSPENDED', 'ACQUITTED'];
const financialStatuses = ['POOR','LOW_INCOME', 'MIDDLE_INCOME', 'HIGH_INCOME','WEALTHY','UNKNOWN'];
const weaponTypes = ['NONE', 'BLUNT_OBJECT', 'SHARP_OBJECT', 'FIREARM', 'EXPLOSIVE', 'OTHER'];
const injurySeverities = ['NONE', 'BLACKMAIL', 'MINOR', 'LIFE_THREATENING', 'FATAL'];

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
        numVictimsEndangered: '',
        previouslyConvicted: false,
        awareOfIllegality: false,
        defendantFinancialStatus: '',
        physicalAbuseInvolved: false,
        psychologicalAbuseInvolved: false,
        injuryDescriptions: [],
        weaponType: '',
        injurySeverity: '',
        onDuty: false
    });

    const navigate = useNavigate();
    const [similarityVerdicts, setSimilarityVerdicts] = useState([]);
    const [ruleVerdict, setRuleVerdict] = useState("");
    const [createdVerdictId, setCreatedVerdictId] = useState(null);
    const [patchData, setPatchData] = useState({
        verdict: '',
        appliedProvisions: []
    });
    const [formErrors, setFormErrors] = useState({});
    const [patchErrors, setPatchErrors] = useState({});

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

    // Validation
    const validateForm = () => {
        const errors: any = {};
        const requiredFields = [
            'court', 'verdictNumber', 'date', 'judgeName', 'prosecutor',
            'defendantName', 'criminalOffense', 'numDefendants', 'numVictimsEndangered',
            'defendantFinancialStatus', 'weaponType', 'injurySeverity'
        ];

        requiredFields.forEach((field) => {
            if (!formData[field] || formData[field].toString().trim() === '') {
                errors[field] = 'This field is required';
            }
        });

        if (formData.numDefendants && Number(formData.numDefendants) <= 0)
            errors.numDefendants = 'Must be at least 1';
        if (formData.numVictimsEndangered && Number(formData.numVictimsEndangered) <= 0)
            errors.numVictimsEndangered = 'Must be at least 1';

        if (!formData.injuryDescriptions.length && formData.injurySeverity.toUpperCase() != "NONE")
            errors.injuryDescriptions = 'Add at least one description';

        setFormErrors(errors);
        return Object.keys(errors).length === 0;
    };

    const validatePatchForm = () => {
        const errors: any = {};
        if (!patchData.verdict) errors.verdict = 'This field is required';
        if (!patchData.appliedProvisions.length)
            errors.appliedProvisions = 'Add at least one provision';
        setPatchErrors(errors);
        return Object.keys(errors).length === 0;
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        if (!validateForm()) return;

        const payload = { ...formData };
        try {
            const res = await fetch('http://localhost:8080/verdicts', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(payload),
            });

            if (res.ok) {
                const created = await res.json();
                setCreatedVerdictId(created.id);
                alert('Verdict submitted successfully!');
                setFormData({
                    court: '', verdictNumber: '', date: '', judgeName: '',
                    prosecutor: '', defendantName: '', criminalOffense: '',
                    numDefendants: '', numVictimsEndangered: '',
                    previouslyConvicted: false, awareOfIllegality: false,
                    defendantFinancialStatus: '', physicalAbuseInvolved: false,
                    psychologicalAbuseInvolved: false, injuryDescriptions: [],
                    weaponType: '', injurySeverity: '', onDuty: false
                });
                setFormErrors({});

                const simRes = await fetch(`http://localhost:8080/verdicts/${created.id}/similar`);
                if (simRes.ok) setSimilarityVerdicts(await simRes.json());
                const ruleRes = await fetch(`http://localhost:8080/verdicts/${created.id}/rule`);
                if (ruleRes .ok) setRuleVerdict(await ruleRes.text());
            } else alert('Error submitting verdict.');
        } catch (err) {
            console.error(err);
            alert('Submission failed.');
        }
    };

    const handlePatchSubmit = async () => {
        if (!createdVerdictId || !validatePatchForm()) return;
        try {
            const res = await fetch(`http://localhost:8080/verdicts/${createdVerdictId}`, {
                method: 'PATCH',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(patchData),
            });
            if (res.ok) {
                alert('Verdict finalized successfully!');
                navigate('/');
            } else alert('Error patching verdict.');
        } catch (err) {
            console.error(err);
            alert('Patch failed.');
        }
    };

    const [newInjuryDesc, setNewInjuryDesc] = useState('');
    const [newProvision, setNewProvision] = useState('');

    const handleAddInjuryDescription = () => {
        if (newInjuryDesc.trim() === '') return;
        setFormData((prev) => ({
            ...prev,
            injuryDescriptions: [...prev.injuryDescriptions, newInjuryDesc.trim()],
        }));
        setNewInjuryDesc('');
    };

    const handleRemoveInjuryDescription = (i) => {
        setFormData((prev) => ({
            ...prev,
            injuryDescriptions: prev.injuryDescriptions.filter((_, index) => index !== i),
        }));
    };

    const handleAddProvision = () => {
        if (newProvision.trim() === '') return;
        setPatchData((prev) => ({
            ...prev,
            appliedProvisions: [...prev.appliedProvisions, newProvision.trim()],
        }));
        setNewProvision('');
    };

    const handleRemoveProvision = (i) => {
        setPatchData((prev) => ({
            ...prev,
            appliedProvisions: prev.appliedProvisions.filter((_, index) => index !== i),
        }));
    };

    return (
        <Box sx={{ maxWidth: 900, mx: 'auto', p: 4, color: 'black' }}>
            {/* ==================== NEW VERDICT FORM ==================== */}
            {!createdVerdictId && (
                <Box sx={{ p: 4, borderRadius: 3, boxShadow: 2, bgcolor: 'background.paper' }}>
                    <Typography sx={{mb: 3}} variant="h5" gutterBottom>New Verdict</Typography>
                    <form onSubmit={handleSubmit}>
                        <Box sx={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 3 }}>
                            <TextField label="Court" name="court" value={formData.court} onChange={handleChange}
                                       error={!!formErrors.court} helperText={formErrors.court} fullWidth />
                            <TextField label="Verdict Number" name="verdictNumber" value={formData.verdictNumber}
                                       onChange={handleChange} error={!!formErrors.verdictNumber} helperText={formErrors.verdictNumber} fullWidth />
                            <TextField type="date" label="Date" name="date" value={formData.date}
                                       onChange={handleChange} InputLabelProps={{ shrink: true }}
                                       error={!!formErrors.date} helperText={formErrors.date} fullWidth />
                            <TextField label="Judge Name" name="judgeName" value={formData.judgeName}
                                       onChange={handleChange} error={!!formErrors.judgeName} helperText={formErrors.judgeName} fullWidth />
                            <TextField label="Prosecutor" name="prosecutor" value={formData.prosecutor}
                                       onChange={handleChange} error={!!formErrors.prosecutor} helperText={formErrors.prosecutor} fullWidth />
                            <TextField label="Defendant Name" name="defendantName" value={formData.defendantName}
                                       onChange={handleChange} error={!!formErrors.defendantName} helperText={formErrors.defendantName} fullWidth />
                        </Box>

                        <TextField fullWidth sx={{ mt: 3 }} label="Criminal Offense" name="criminalOffense"
                                   value={formData.criminalOffense} onChange={handleChange}
                                   error={!!formErrors.criminalOffense} helperText={formErrors.criminalOffense} />

                        <Box sx={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: 3, mt: 3 }}>
                            <TextField label="Number of Defendants" type="number" name="numDefendants"
                                       value={formData.numDefendants} onChange={handleChange}
                                       error={!!formErrors.numDefendants} helperText={formErrors.numDefendants} />
                            <TextField label="Number of Victims" type="number" name="numVictimsEndangered"
                                       value={formData.numVictimsEndangered} onChange={handleChange}
                                       error={!!formErrors.numVictimsEndangered} helperText={formErrors.numVictimsEndangered} />
                            <TextField select label="Financial Status" name="defendantFinancialStatus"
                                       value={formData.defendantFinancialStatus} onChange={handleChange}
                                       error={!!formErrors.defendantFinancialStatus} helperText={formErrors.defendantFinancialStatus}>
                                {financialStatuses.map((s) => (
                                    <MenuItem key={s} value={s}>{s.replace("_", " ")}</MenuItem>
                                ))}
                            </TextField>
                        </Box>

                        <Box sx={{ display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: 2, mt: 3 }}>
                            <FormControlLabel control={<Checkbox checked={formData.physicalAbuseInvolved}
                                                                 onChange={handleChange} name="physicalAbuseInvolved" />} label="Physical Abuse" />
                            <FormControlLabel control={<Checkbox checked={formData.psychologicalAbuseInvolved}
                                                                 onChange={handleChange} name="psychologicalAbuseInvolved" />} label="Psychological Abuse" />
                            <FormControlLabel control={<Checkbox checked={formData.previouslyConvicted}
                                                                 onChange={handleChange} name="previouslyConvicted" />} label="Previously Convicted" />
                            <FormControlLabel control={<Checkbox checked={formData.awareOfIllegality}
                                                                 onChange={handleChange} name="awareOfIllegality" />} label="Aware of Illegality" />
                            <FormControlLabel control={<Checkbox checked={formData.onDuty}
                                                                 onChange={handleChange} name="onDuty" />} label="On Duty" />
                        </Box>

                        <Box sx={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 3, mt: 3 }}>
                            <TextField select label="Weapon Type" name="weaponType" value={formData.weaponType}
                                       onChange={handleChange} error={!!formErrors.weaponType} helperText={formErrors.weaponType}>
                                {weaponTypes.map((s) => <MenuItem key={s} value={s}>{s.replace("_", " ")}</MenuItem>)}
                            </TextField>
                            <TextField select label="Injury Severity" name="injurySeverity" value={formData.injurySeverity}
                                       onChange={handleChange} error={!!formErrors.injurySeverity} helperText={formErrors.injurySeverity}>
                                {injurySeverities.map((s) => <MenuItem key={s} value={s}>{s.replace("_", " ")}</MenuItem>)}
                            </TextField>
                        </Box>

                        {/* INJURY DESCRIPTIONS */}
                        <Box sx={{ mt: 4, p: 3, borderRadius: 2, bgcolor: '#fafafa' }}>
                            <Typography variant="subtitle1" gutterBottom>Injury Descriptions</Typography>
                            <Box sx={{ display: 'flex', gap: 1, mt: 1 }}>
                                <TextField fullWidth label="Add Injury Description"
                                           value={newInjuryDesc} onChange={(e) => setNewInjuryDesc(e.target.value)}
                                           error={!!formErrors.injuryDescriptions} helperText={formErrors.injuryDescriptions} />
                                <Button variant="contained" onClick={handleAddInjuryDescription}>Add</Button>
                            </Box>

                            <Box sx={{ mt: 2 }}>
                                {formData.injuryDescriptions.length === 0 ? (
                                    <Typography variant="body2" color="text.secondary">No injury descriptions yet.</Typography>
                                ) : (
                                    formData.injuryDescriptions.map((desc, i) => (
                                        <Box key={i} sx={{
                                            display: 'flex', alignItems: 'center', justifyContent: 'space-between',
                                            border: '1px solid #ddd', borderRadius: 1, p: 1, mb: 0.5, bgcolor: 'white'
                                        }}>
                                            <Typography sx={{ flex: 1 }}>{desc}</Typography>
                                            <IconButton color="error" onClick={() => handleRemoveInjuryDescription(i)}>❌</IconButton>
                                        </Box>
                                    ))
                                )}
                            </Box>
                        </Box>

                        <Button type="submit" variant="contained" color="primary" sx={{ mt: 4, px: 4, borderRadius: 2 }}>
                            Initialize Verdict
                        </Button>
                    </form>
                </Box>
            )}

            {/* SIMILAR VERDICTS */}
            {similarityVerdicts.length > 0 && (
                <Box sx={{ mt: 5, p: 3, borderRadius: 2, boxShadow: 1, bgcolor: 'background.paper' }}>
                    <Typography variant="h6" gutterBottom>Similar Verdicts</Typography>
                    <table style={{ width: '100%', borderCollapse: 'separate', borderSpacing: 0 }}>
                        <thead style={{ backgroundColor: '#f5f5f5' }}>
                        <tr>
                            {['Verdict Number', 'Court', 'Financial Status', 'Verdict Type', 'Similarity'].map((h) => (
                                <th key={h} style={{ borderBottom: '2px solid #ccc', padding: '8px', textAlign: 'left' }}>{h}</th>
                            ))}
                        </tr>
                        </thead>
                        <tbody>
                        {similarityVerdicts.map((v, i) => (
                            <tr key={v.id} style={{ backgroundColor: i % 2 ? '#fafafa' : 'white' }}>
                                <td style={{ padding: '8px', borderBottom: '1px solid #ddd' }}>{v.verdictNumber}</td>
                                <td style={{ padding: '8px', borderBottom: '1px solid #ddd' }}>{v.court}</td>
                                <td style={{ padding: '8px', borderBottom: '1px solid #ddd' }}>{v.defendantFinancialStatus.replace("_", " ")}</td>
                                <td style={{ padding: '8px', borderBottom: '1px solid #ddd' }}>{v.verdict}</td>
                                <td style={{ padding: '8px', borderBottom: '1px solid #ddd' }}>{(v.similarity * 100).toFixed(2)}%</td>
                            </tr>
                        ))}
                        </tbody>
                    </table>
                </Box>
            )}

            {/* RULE-BASED VERDICT */}
            {ruleVerdict && (
                <Box sx={{ mt: 5, p: 3, borderRadius: 2, bgcolor: '#f9f9ff', border: '1px solid #e0e0ff' }}>
                    <Typography variant="h6" gutterBottom color="primary">
                        Rule Based Verdict Recommendation
                    </Typography>
                    <Typography variant="body1" sx={{ fontStyle: 'italic' }}>
                        {ruleVerdict}
                    </Typography>
                </Box>
            )}

            {/* FINALIZE VERDICT */}
            {createdVerdictId && (
                <Box sx={{ mt: 5, p: 4, borderRadius: 3, boxShadow: 2, bgcolor: 'background.paper' }}>
                    <Typography variant="h6" gutterBottom>Finalize Verdict</Typography>
                    <TextField select fullWidth label="Verdict Type" name="verdict" value={patchData.verdict}
                               onChange={handlePatchChange} error={!!patchErrors.verdict} helperText={patchErrors.verdict}>
                        {verdictTypes.map((v) => <MenuItem key={v} value={v}>{v.replace("_", " ")}</MenuItem>)}
                    </TextField>

                    <Box sx={{ mt: 3 }}>
                        <Typography variant="subtitle1">Applied Provisions</Typography>
                        <Box sx={{ display: 'flex', gap: 1, mt: 1 }}>
                            <TextField fullWidth label="Add Provision" value={newProvision}
                                       onChange={(e) => setNewProvision(e.target.value)} error={!!patchErrors.appliedProvisions}
                                       helperText={patchErrors.appliedProvisions} />
                            <Button variant="contained" onClick={handleAddProvision}>Add</Button>
                        </Box>

                        <Box sx={{ mt: 2 }}>
                            {patchData.appliedProvisions.length === 0 ? (
                                <Typography variant="body2" color="text.secondary">No provisions added yet.</Typography>
                            ) : (
                                patchData.appliedProvisions.map((prov, i) => (
                                    <Box key={i} sx={{
                                        display: 'flex', alignItems: 'center', justifyContent: 'space-between',
                                        border: '1px solid #ddd', borderRadius: 1, p: 1, mb: 0.5, bgcolor: 'white'
                                    }}>
                                        <Typography sx={{ flex: 1 }}>{prov}</Typography>
                                        <IconButton color="error" onClick={() => handleRemoveProvision(i)}>❌</IconButton>
                                    </Box>
                                ))
                            )}
                        </Box>
                    </Box>

                    <Button onClick={handlePatchSubmit} variant="contained" color="success" sx={{ mt: 4, px: 4, borderRadius: 2 }}>
                        Finalize Verdict
                    </Button>
                </Box>
            )}
        </Box>
    );
};
