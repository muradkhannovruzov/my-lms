import React, { useState } from 'react';
import Login from './components/Login/Login';
import Dashboard from './components/Dashboard';
import { BrowserRouter as Router, Switch, Route, Redirect } from 'react-router-dom';
import axios from 'axios';

function App() {
  const [loggedIn, setLoggedIn] = useState(false);

  const handleLogin = async (email, password) => {
    try {
      const response = await axios.post('http://your-api-url/login', { email, password });
      localStorage.setItem('token', response.data.token);
      setLoggedIn(true);
    } catch (error) {
      console.error(error);
    }
  };

  const handleLogout = () => {
    localStorage.removeItem('token');
    setLoggedIn(false);
  };

  return (
    <Router>
      <Switch>
        <Route exact path="/">
          {loggedIn ? <Redirect to="/dashboard" /> : <Login onLogin={handleLogin} />}
        </Route>
        <Route path="/dashboard">
          {!loggedIn ? <Redirect to="/" /> : <Dashboard onLogout={handleLogout} />}
        </Route>
      </Switch>
    </Router>
  );
}

export default App;
