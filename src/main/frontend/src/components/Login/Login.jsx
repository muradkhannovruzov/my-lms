import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { setAccessToken } from '../../utils/auth';

import './Login.css'

const Login = () => {
  const history = useNavigate();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post("your-auth-api-url", { email, password });
      setAccessToken("token", response.data.token); // store JWT in local storage
      history.push("/dashboard"); // redirect to dashboard page
    } catch (err) {
      setError("Invalid email or password"); // set error message
    }
  };

  return (
    <div>
      <h2>Login</h2>
      <form onSubmit={handleSubmit}>
        <div>
          <label>Email</label>
          <input type="email" value={email} onChange={(e) => setEmail(e.target.value)} required />
        </div>
        <div>
          <label>Password</label>
          <input type="password" value={password} onChange={(e) => setPassword(e.target.value)} required />
        </div>
        {error && <p>{error}</p>}
        <button type="submit">Login</button>
      </form>
    </div>
  );
};

export default Login;
