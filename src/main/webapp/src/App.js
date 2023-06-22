import React, { useContext, useEffect } from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import Login from './pages/login/Login';
import Home from './pages/home/Home'
import { getAccessToken, removeAccessToken } from './utils/auth';
import AuthContext from './contexts/AuthContext';

function App() {
  const { isAuthenticated, login, logout } = useContext(AuthContext);

  useEffect(() => {
    const token = getAccessToken();
    if (token) {
      login();
    }
  }, [login]);

  return (
    <Router>
      <Routes>
        <Route path="/login" element={isAuthenticated ? <Navigate to="/home" /> : <Login />} />
        <Route path="/home" element={isAuthenticated ? <Home /> : <Navigate to="/login" />} />
        <Route path="*" element={<Login />} />
      </Routes>
    </Router>
  );
}

export default App;
