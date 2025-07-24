import React, {useEffect, useState} from 'react';
import { Tab, Tabs } from '@mui/material';
import {AkomaNtosoRenderer} from "../components/akomantosoRenderer.tsx";

export const Laws = () => {
    const [value, setValue] = useState(0);

    const handleChange = (_: React.SyntheticEvent, newValue: number) => {
        setValue(newValue);
    };
    const [krivicniZakonik, setKrivicniZakonik] = useState<string | null>(null);
    const [zakonOKrivicnomPostupku, setzakonOKrivicnomPostupku] = useState<string | null>(null);

    useEffect(() => {
        fetch("/krivicni_zakonik.xml")
            .then((res) => res.text())
            .then(setKrivicniZakonik)
            .catch((err) => {
                console.error("Error loading XML file:", err);
            });
        fetch("/zakonik_o_krivicnom_postupku.xml")
            .then((res) => res.text())
            .then(setzakonOKrivicnomPostupku)
            .catch((err) => {
                console.error("Error loading XML file:", err);
            });
    }, []);

    if (!krivicniZakonik) return <div style={{color:"black"}}>Loading XML...</div>;
    if (!zakonOKrivicnomPostupku) return <div style={{color:"black"}}>Loading XML...</div>;

    return (
        <div
            style={{
                width: '100%',
                height: '100%',
                display: 'flex',
                flexDirection: 'column',
                justifyContent: 'center',
                alignItems: 'center',
                flexGrow: 1,
                overflow: 'auto', // Enables scrolling when content overflows
            }}
        >
        <Tabs
                value={value}
                onChange={handleChange}
                aria-label="PDF tab selector"
                centered={true}
                sx={{ width: '100%', display: 'flex', justifyContent: 'center', alignItems: 'center' }}
            >
                <Tab label="Krivični zakonik" value={0} />
                <Tab label="Zakon o krivičnom postupku" value={1} />
            </Tabs>

            <div style={{width: '100%', overflow: 'auto' }}>
                <div>
                    <h1 style={{color:"black"}} >{value == 0? "Krivični zakonik Crne Gore (Izvod)":"Zakonik o krivičnom postupku Crne Gore"}</h1>
                    <div style={{display:"flex"}}><AkomaNtosoRenderer xmlString={value==0?krivicniZakonik:zakonOKrivicnomPostupku} />
                    </div>
                </div>
            </div>
        </div>
    );
};
