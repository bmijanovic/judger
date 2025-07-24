import React, { useState } from 'react';
import { Tab, Tabs } from '@mui/material';

export const LawsPDF = () => {
    const [value, setValue] = useState(0);

    const handleChange = (_: React.SyntheticEvent, newValue: number) => {
        setValue(newValue);
    };

    return (
        <div
            style={{
                width: '100%',
                height: '100%',
                display: 'flex',
                flexDirection: 'column',
                justifyContent: 'center',
                alignItems: 'center',
                flexGrow: 1, // Makes it expand inside sidebar layout
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

            <div style={{ flexGrow: 1, width: '100%', overflow: 'hidden' }}>
                <iframe
                    src={
                        value === 0
                            ? 'http://localhost:8080/laws?fileType=pdf&lawType=krivicni_zakonik'
                            : 'http://localhost:8080/laws?fileType=pdf&lawType=zakonik_o_krivicnom_postupku'
                    }
                    title="Zakon"
                    width="100%"
                    height="100%"
                    style={{ border: 'none' }}
                />
            </div>
        </div>
    );
};
