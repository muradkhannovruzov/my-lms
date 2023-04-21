import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { setAccessToken } from "../../utils/auth";

import "./login.css";

const Login = () => {
  const navigate = useNavigate();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post(
        "http://localhost:8080/api/v1/auth/sign-in",
        {
          email,
          password,
        }
      );
      console.log(response);
      setAccessToken(response.data.token); // store JWT in local storage
      navigate("/home"); // redirect to dashboard page
    } catch (err) {
      console.error(err);
      setError("Invalid email or password"); // set error message
    }
  };

  return (
    <div id="login-container">
      <h2 id="login-title">Login</h2>
      <form id="login-form" onSubmit={handleSubmit}>
        <div className="input-group">
          <label htmlFor="email-input">Email</label>
          <input
            type="email"
            id="email-input"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
          />
        </div>
        <div className="input-group">
          <label htmlFor="password-input">Password</label>
          <input
            type="password"
            id="password-input"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
        </div>
        {error && <p id="error-message">{error}</p>}
        <button id="login-button" type="submit">Login</button>
      </form>
    </div>
  );
};

export default Login;
