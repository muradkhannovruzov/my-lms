import * as React from "react";
import { useEffect, useState } from "react";
import Table from "@mui/material/Table";
import TableBody from "@mui/material/TableBody";
import TableCell from "@mui/material/TableCell";
import TableContainer from "@mui/material/TableContainer";
import TableHead from "@mui/material/TableHead";
import TableRow from "@mui/material/TableRow";
import Paper from "@mui/material/Paper";
import "./table.css";

function createData(id, surname, name, pin) {
  return { id, surname, name, pin };
}

const rows = [];

export default function BasicTable() {
  const [rows, setRows] = useState([]);

  useEffect(() => {
    async function fetchData() {
      const response = await fetch("");
      const data = await response.json();

      const formattedData = data.map((item) =>
        createData(item.name, item.trackingId, item.date, item.status)
      );
      setRows(formattedData);
    }

    fetchData();
  }, []);

  return (
    <div className="Table">
      <h3>Teachers</h3>

      <TableContainer
        component={Paper}
        style={{ boxShadow: "0px 13px 20px 0px #80808029" }}
      >
        <Table sx={{ minWidth: 650 }} aria-label="simple table">
          <TableHead>
            <TableRow>
              <TableCell>Product</TableCell>
              <TableCell align="left">Surname</TableCell>
              <TableCell align="left">Name</TableCell>
              <TableCell align="left">Pin</TableCell>
              <TableCell align="left"></TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {rows.map((row) => (
              <TableRow
                key={row.name}
                sx={{ "&:last-child td, &:last-child th": { border: 0 } }}
              >
                <TableCell component="th" scope="row">
                  {row.name}
                </TableCell>
                <TableCell align="left">{row.trackingId}</TableCell>
                <TableCell align="left">{row.date}</TableCell>
                <TableCell align="left" className="Details">
                  Detail
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>
    </div>
  );
}
