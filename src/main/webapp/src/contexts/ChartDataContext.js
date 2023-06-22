import { createContext } from 'react';

const ChartDataContext = createContext({
  chartData: [],
  setChartData: () => {},
});

export default ChartDataContext;
