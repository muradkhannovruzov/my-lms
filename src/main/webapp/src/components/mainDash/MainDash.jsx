import React from "react";
import Cards from "../cards/Cards";
import Table from "../table/Table";
import "./mainDash.css";

const MainDash = () => {
  return (
    <div className="MainDash">
      <h1>Dashboard</h1>
      <Cards />
      <Table />
    </div>
  );
};

export default MainDash;
