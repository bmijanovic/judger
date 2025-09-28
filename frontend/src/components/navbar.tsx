import React from 'react';
import Box from '@mui/material/Box';
import List from '@mui/material/List';
import ListItem from '@mui/material/ListItem';
import ListItemButton from '@mui/material/ListItemButton';
import ListItemIcon from '@mui/material/ListItemIcon';
import ListItemText from '@mui/material/ListItemText';
import { Add, Balance, Gavel, PictureAsPdf } from '@mui/icons-material';
import { useNavigate } from 'react-router';

const sidebarWidth = 240;

export default function Navbar({ children }: { children: React.ReactNode }) {
    const navigate = useNavigate();

    const navItems = [
        { icon: <Balance />, title: 'Laws', link: '/laws' },
        { icon: <PictureAsPdf />, title: 'PDF Laws', link: '/laws-pdf' },
        { icon: <Gavel />, title: 'Verdicts', link: '/' },
        { icon: <Add />, title: 'Add verdicts', link: '/add-verdict' },
    ];

    return (
        <Box sx={{ display: 'flex', height: '100vh', width: '100vw' ,backgroundColor:"#ffffff" }}>
            {/* Sidebar */}
            <Box
                sx={{
                    width: sidebarWidth,
                    backgroundColor: '#2f3b59',
                    borderRight: '1px solid #ddd',
                    height: '100%',
                    display: 'flex',
                    flexDirection: 'column',
                    p: 2,
                    boxSizing: 'border-box',
                }}
            >
                <List>
                    {navItems.map((item) => (
                        <ListItem key={item.title} disablePadding>
                            <ListItemButton onClick={() => navigate(item.link)}>
                                <ListItemIcon style={{color:"white"}}>{item.icon}</ListItemIcon>
                                <ListItemText primary={item.title} />
                            </ListItemButton>
                        </ListItem>
                    ))}
                </List>
            </Box>

            {/* Main Content */}
            <Box
                sx={{
                    flexGrow: 1,
                    width: '100%',
                    overflow: 'auto',
                    height: '100%',
                    boxSizing: 'border-box',
                }}
            >
                {children}
            </Box>
        </Box>
    );
}
