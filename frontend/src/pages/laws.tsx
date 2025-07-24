import React, {useEffect, useState} from 'react';
import { Tab, Tabs } from '@mui/material';
import {AkomaNtosoRenderer} from "../components/akomantosoRenderer.tsx";
import axios from 'axios';

export const Laws = () => {
    const [value, setValue] = useState(0);

    const handleChange = (_: React.SyntheticEvent, newValue: number) => {
        setValue(newValue);
    };
    const [krivicniZakonik, setKrivicniZakonik] = useState<string | null>(null);
    const [zakonOKrivicnomPostupku, setzakonOKrivicnomPostupku] = useState<string | null>(null);

    useEffect(() => {
        axios
            .get('http://localhost:8080/laws', {
                params: {
                    fileType: 'xml',
                    lawType: 'krivicni_zakonik'
                },
                responseType: 'text'
            })
            .then((res) => setKrivicniZakonik(res.data))
            .catch((err) => {
                console.error('Error loading Krivični Zakonik XML:', err);
            });

        axios
            .get('http://localhost:8080/laws', {
                params: {
                    fileType: 'xml',
                    lawType: 'zakonik_o_krivicnom_postupku'
                },
                responseType: 'text'
            })
            .then((res) => setzakonOKrivicnomPostupku(res.data))
            .catch((err) => {
                console.error('Error loading Zakon o Krivičnom Postupku XML:', err);
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
