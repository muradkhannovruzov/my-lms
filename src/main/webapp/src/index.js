import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import { AuthProvider } from './contexts/AuthProvider';
import ChartDataProvider from './contexts/ChartDataProvider';

ReactDOM.render(
  <React.StrictMode>
    <AuthProvider>
      <ChartDataProvider>
        <App />
      </ChartDataProvider>
    </AuthProvider>
  </React.StrictMode>,
  document.getElementById('root')
);
