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
import {useNavigate} from "react-router";

const verdictTypes = ['PRISON', 'SUSPENDED', 'ACQUITTED'];
const financialStatuses = ['POOR','LOW_INCOME', 'MIDDLE_INCOME', 'HIGH_INCOME','WEALTHY','UNKNOWN'];
const weaponTypes = ['NONE', 'BLUNT_OBJECT', 'SHARP_OBJECT', 'FIREARM', 'EXPLOSIVE', 'OTHER'];
const injurySeverities = ['NONE', 'BLACKMAIL', 'MINOR', 'LIFE_THREATENING', 'FATAL'];


interface FormErrors {
    court?: string;
    verdictNumber?: string;
    date?: string;
    judgeName?: string;
    prosecutor?: string;
    defendantName?: string;
    criminalOffense?: string;
    numDefendants?: string;
    numVictimsEndangered?: string;
    defendantFinancialStatus?: string;
    injuryDescriptions?: string;
    weaponType?: string;
    injurySeverity?: string;
}

interface PatchErrors {
    verdict?: string;
    appliedProvisions?: string;
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
    const [similarVerdicts, setSimilarVerdicts] = useState([]);
    const [createdVerdictId, setCreatedVerdictId] = useState(null);
    const [patchData, setPatchData] = useState({
        verdict: '',
        appliedProvisions: []
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
            'numVictimsEndangered',
            'defendantFinancialStatus',
            'injuryDescriptions',
            'weaponType',
            'injurySeverity'
        ];

        requiredFields.forEach((field) => {
            if (!formData[field] || formData[field].toString().trim() === '') {
                errors[field] = 'This field is required';
            }
        });

        if (formData.numDefendants && Number(formData.numDefendants) <= 0) {
            errors.numDefendants = 'Must be at least 1';
        }

        if (formData.numVictimsEndangered && Number(formData.numVictimsEndangered) <= 0) {
            errors.numVictimsEndangered = 'Must be at least 1';
        }

        if (
            !formData.injuryDescriptions ||
            formData.injuryDescriptions.length === 0 ||
            formData.injuryDescriptions.some((p) => p.trim() === '')
        ) {
            errors.injuryDescriptions = 'All descriptions must be non-empty';
        }

        setFormErrors(errors);
        return Object.keys(errors).length === 0;
    };

    // Validate Patch (Finalize Verdict) form
    const validatePatchForm = () => {
        const errors = {};
        if (!patchData.verdict) errors.verdict = 'This field is required';

        if (
            !patchData.appliedProvisions ||
            patchData.appliedProvisions.length === 0 ||
            patchData.appliedProvisions.some((p) => p.trim() === '')
        ) {
            errors.appliedProvisions = 'All provisions must be non-empty';
        }

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
                setFormErrors({});

                const simRes = await fetch(`http://localhost:8080/verdicts/${createdVerdict.id}/similar`);
                if (simRes.ok) {
                    const simData = await simRes.json();
                    setSimilarVerdicts(simData);

                    setPatchData({
                        verdict: createdVerdict.verdict || '',
                        appliedProvisions: createdVerdict.appliedProvisions || ''
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

    const [newInjuryDesc, setNewInjuryDesc] = useState('');
    const handleAddInjuryDescription = () => {
        if (newInjuryDesc.trim() === '') return;
        setFormData((prev) => ({
            ...prev,
            injuryDescriptions: [...prev.injuryDescriptions, newInjuryDesc.trim()],
        }));
        setNewInjuryDesc('');
    };
    const handleRemoveInjuryDescription = (index) => {
        setFormData((prev) => ({
            ...prev,
            injuryDescriptions: prev.injuryDescriptions.filter((_, i) => i !== index),
        }));
    };

    const [newProvision, setNewProvision] = useState('');
    const handleAddProvision = () => {
        if (newProvision.trim() === '') return;
        setPatchData((prev) => ({
            ...prev,
            appliedProvisions: [...prev.appliedProvisions, newProvision.trim()],
        }));
        setNewProvision('');
    };
    const handleRemoveProvision = (index) => {
        setPatchData((prev) => ({
            ...prev,
            appliedProvisions: prev.appliedProvisions.filter((_, i) => i !== index),
        }));
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
                                InputLabelProps={{ shrink: true }}
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
                            <Box sx={{ display: 'flex', mr: 3, width: '100%', gap: 3}}>
                                <TextField
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
                                    fullWidth
                                    label="Number of Victims"
                                    type="number"
                                    name="numVictimsEndangered"
                                    value={formData.numVictimsEndangered}
                                    onChange={handleChange}
                                    margin="normal"
                                    slotProps={{ htmlInput: { min: 1 } }}
                                    error={!!formErrors.numVictimsEndangered}
                                    helperText={formErrors.numVictimsEndangered || ''}
                                />
                            </Box>

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

                        <Box
                            sx={{
                                display: 'grid',
                                gridTemplateColumns: 'repeat(2, 1fr)',
                                gap: 1,
                                mt: 1,
                            }}
                        >
                            <FormControlLabel
                                control={<Checkbox checked={formData.physicalAbuseInvolved} onChange={handleChange} name="physicalAbuseInvolved" />}
                                label="Physical Abuse Involved"
                            />
                            <FormControlLabel
                                control={<Checkbox checked={formData.psychologicalAbuseInvolved} onChange={handleChange} name="psychologicalAbuseInvolved" />}
                                label="Psychological Abuse Involved"
                            />
                            <FormControlLabel
                                control={<Checkbox checked={formData.previouslyConvicted} onChange={handleChange} name="previouslyConvicted" />}
                                label="Previously Convicted"
                            />
                            <FormControlLabel
                                control={<Checkbox checked={formData.awareOfIllegality} onChange={handleChange} name="awareOfIllegality" />}
                                label="Aware of Illegality"
                            />
                            <FormControlLabel
                                control={<Checkbox checked={formData.onDuty} onChange={handleChange} name="onDuty" />}
                                label="On Duty"
                            />
                        </Box>


                        <Box sx={{ display: 'flex', width: '100%', flexDirection: 'row' }}>
                            <TextField
                                sx={{ mr: 3 }}
                                select
                                fullWidth
                                label="Weapon Type"
                                name="weaponType"
                                value={formData.weaponType}
                                onChange={handleChange}
                                margin="normal"
                                error={!!formErrors.weaponType}
                                helperText={formErrors.weaponType || ''}
                            >
                                {weaponTypes.map((s) => (
                                    <MenuItem key={s} value={s}>{s}</MenuItem>
                                ))}
                            </TextField>

                            <TextField
                                sx={{ ml: 3 }}
                                select
                                fullWidth
                                label="Ijury Severity"
                                name="injurySeverity"
                                value={formData.injurySeverity }
                                onChange={handleChange}
                                margin="normal"
                                error={!!formErrors.injurySeverity }
                                helperText={formErrors.injurySeverity  || ''}
                            >
                                {injurySeverities.map((s) => (
                                    <MenuItem key={s} value={s}>{s}</MenuItem>
                                ))}
                            </TextField>
                        </Box>

                        <Box sx={{ mt: 2 }}>
                            <Typography variant="subtitle1">Injury Descriptions</Typography>
                            <Box sx={{ display: 'flex', gap: 1, mt: 1 }}>
                                <TextField
                                    fullWidth
                                    label="Add Injury Description"
                                    value={newInjuryDesc}
                                    error={!!formErrors.injuryDescriptions}
                                    onChange={(e) => setNewInjuryDesc(e.target.value)}
                                />
                                <Button variant="contained" onClick={handleAddInjuryDescription}>
                                    Add
                                </Button>
                            </Box>

                            {/* Display list of added descriptions */}
                            <Box sx={{ mt: 1 }}>
                                {formData.injuryDescriptions.length === 0 ? (
                                    <Typography variant="body2" color="text.secondary">
                                        No injury descriptions added yet.
                                    </Typography>
                                ) : (
                                    formData.injuryDescriptions.map((desc, i) => (
                                        <Box
                                            key={i}
                                            sx={{
                                                display: 'flex',
                                                alignItems: 'center',
                                                justifyContent: 'space-between',
                                                border: '1px solid #ccc',
                                                borderRadius: 1,
                                                p: 1,
                                                mb: 0.5,
                                                gap: 1,
                                            }}
                                        >
                                            <Typography
                                                sx={{
                                                    flex: 1,
                                                    wordBreak: 'break-word',
                                                    overflowWrap: 'anywhere',
                                                    textAlign: 'left',
                                                }}
                                            >
                                                {desc}
                                            </Typography>

                                            <IconButton
                                                color="error"
                                                onClick={() => handleRemoveInjuryDescription(i)}
                                                sx={{ flexShrink: 0 }}
                                            >
                                                ❌
                                            </IconButton>
                                        </Box>
                                    ))
                                )}
                            </Box>
                        </Box>

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

                    <Box sx={{ mt: 2 }}>
                        <Typography variant="subtitle1">Applied Provisions</Typography>

                        <Box sx={{ display: 'flex', gap: 1, mt: 1 }}>
                            <TextField
                                fullWidth
                                label="Add Provision"
                                value={newProvision}
                                onChange={(e) => setNewProvision(e.target.value)}
                                error={!!patchErrors.appliedProvisions}
                                helperText={patchErrors.appliedProvisions || ''}
                            />
                            <Button variant="contained" onClick={handleAddProvision}>
                                Add
                            </Button>
                        </Box>

                        {/* Display added provisions */}
                        <Box sx={{ mt: 1 }}>
                            {patchData.appliedProvisions.length === 0 ? (
                                <Typography variant="body2" color="text.secondary">
                                    No provisions added yet.
                                </Typography>
                            ) : (
                                patchData.appliedProvisions.map((prov, i) => (
                                    <Box
                                        key={i}
                                        sx={{
                                            display: 'flex',
                                            alignItems: 'center',
                                            justifyContent: 'flex-start',
                                            border: '1px solid #ccc',
                                            borderRadius: 1,
                                            p: 1,
                                            mb: 0.5,
                                            gap: 1,
                                        }}
                                    >
                                        <Typography
                                            sx={{
                                                flex: 1,
                                                wordBreak: 'break-word',
                                                overflowWrap: 'anywhere',
                                            }}
                                        >
                                            {prov}
                                        </Typography>
                                        <IconButton
                                            color="error"
                                            onClick={() => handleRemoveProvision(i)}
                                            sx={{ flexShrink: 0 }}
                                        >
                                            ❌
                                        </IconButton>
                                    </Box>
                                ))
                            )}
                        </Box>
                    </Box>

                    <Button variant="contained" sx={{ mt: 2 }} onClick={handlePatchSubmit}>Submit Verdict</Button>
                </Box>
            )}
        </Box>
    );
};
