import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Navbar from "./components/Navbar";
import Home from "./pages/Home";
import Database from "./pages/Database";
import TeamDetails from "./pages/TeamDetails";

export default function App() {
  return (
    <Router>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/database" element={<Database />} />
        <Route path="/teams/:teamId" element={<TeamDetails />} />
      </Routes>
    </Router>
  );
}
