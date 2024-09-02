import React from 'react'
import { BrowserRouter as Router, Route, Routes, Link  } from 'react-router-dom'
import './App.css';
import Home from './pages/Home';
import DogDetails from './pages/DogDetails';

function App() {

  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/dog/:id" element={<DogDetails />} />
      </Routes>
    </Router>
  );
}

export default App;
