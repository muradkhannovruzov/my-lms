import React, { useState } from 'react';
import ChartDataContext from './ChartDataContext';

const ChartDataProvider = ({ children }) => {
  const [chartData, setChartData] = useState([]);

  return (
    <ChartDataContext.Provider value={{ chartData, setChartData }}>
      {children}
    </ChartDataContext.Provider>
  );
};

export default ChartDataProvider;
