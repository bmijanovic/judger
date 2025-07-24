import './App.css'
import { BrowserRouter, Route, Routes } from 'react-router'
import {Verdicts} from "./pages/verdicts.tsx";
import {Laws} from "./pages/laws.tsx";
import {LawsPDF} from "./pages/lawsPDF.tsx";
import {NewVerdicts} from "./pages/newVerdicts.tsx";
import Navbar from "./components/navbar.tsx";

function App() {

  return (
      <BrowserRouter>
          <Routes>
              <Route index element={<Navbar><Verdicts/></Navbar>}/>
              <Route path="laws" element={<Navbar><Laws/></Navbar>}/>
              <Route path="laws-pdf" element={<Navbar><LawsPDF/></Navbar>}/>
              <Route path="add-verdict" element={<Navbar><NewVerdicts/></Navbar>}/>
          </Routes>
      </BrowserRouter>)
}

export default App
