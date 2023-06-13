import React, { useState } from "react";
import Cards from "../cards/Cards";
import Table from "../table/Table";
import { ChartDataContext } from "../../utils/chartDataContext";
import "./mainDash.css";

const MainDash = () => {
  const [chartData, setChartData] = useState(null); // These should not be undefined

  return (
    <ChartDataContext.Provider value={{ chartData, setChartData }}>
      <div className="MainDash">
        <h1>Dashboard</h1>
        <Cards />
        <Table />
      </div>
    </ChartDataContext.Provider>
  );
};

export default MainDash;
