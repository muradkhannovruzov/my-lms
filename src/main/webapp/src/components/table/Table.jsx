import * as React from "react";
import { useEffect, useState, useContext } from "react";
import Table from "@mui/material/Table";
import TableBody from "@mui/material/TableBody";
import TableCell from "@mui/material/TableCell";
import TableContainer from "@mui/material/TableContainer";
import TableHead from "@mui/material/TableHead";
import TableRow from "@mui/material/TableRow";
import Paper from "@mui/material/Paper";
import TablePagination from "@mui/material/TablePagination";
import "./table.css";
import { getAccessToken } from "../../utils/auth";
import ChartDataContext from "../../contexts/ChartDataContext";

function createData(id, surname, name, pin) {
  return { id, surname, name, pin };
}

export default function BasicTable() {
  const [rows, setRows] = useState([]);
  const [page, setPage] = useState(0);
  const [rowsPerPage, setRowsPerPage] = useState(5);
  const [totalRecords, setTotalRecords] = useState(0);
  const [selectedRow, setSelectedRow] = useState(null);

  const { setChartData } = useContext(ChartDataContext);

  const handleChangePage = (event, newPage) => {
    setPage(newPage);
  };

  const handleChangeRowsPerPage = (event) => {
    setRowsPerPage(parseInt(event.target.value, 10)); 
    setPage(0);
  };

  const handleRowClick = async (row) => {
    setSelectedRow(row);
    const response = await fetch(`http://localhost:8080/api/v1/lesson/weeklyCount?teacherId=${row.id}`, {
      headers: {
        Authorization: `Bearer ${getAccessToken()}`,
      },
    });
    const data = await response.json();
    setChartData(data);
  };

  useEffect(() => {
    async function fetchData() {
      const response = await fetch(
        `http://localhost:8080/api/v1/teacher/list?page=${page}&size=${rowsPerPage}`,
        {
          headers: {
            Authorization: `Bearer ${getAccessToken()}`,
          },
        }
      );
      const data = await response.json();

      const formattedData = data.content.map((item) =>
        createData(item.id, item.surname, item.name, item.pin)
      );
      setRows(formattedData);
      setTotalRecords(data.totalElements);
    }

    fetchData();
  }, [page, rowsPerPage]);

  return (
    <div className="Table">
      <h3>Teachers</h3>
      <TableContainer component={Paper} style={{ boxShadow: "0px 13px 20px 0px #80808029" }}>
        <Table sx={{ minWidth: 650 }} aria-label="simple table">
          <TableHead>
            <TableRow>
              <TableCell align="left">Surname</TableCell>
              <TableCell align="left">Name</TableCell>
              <TableCell align="left">Pin</TableCell>
              <TableCell align="left"></TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {rows.map((row) => (
              <TableRow key={row.id} sx={{ "&:last-child td, &:last-child th": { border: 0 } }}>
                <TableCell component="th" scope="row">{row.surname}</TableCell>
                <TableCell align="left">{row.name}</TableCell>
                <TableCell align="left">{row.pin}</TableCell>
                <TableCell align="left" className="Details" onClick={() => handleRowClick(row)}>
                  Detail
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
        <TablePagination
          component="div"
          count={totalRecords}
          page={page}
          onPageChange={handleChangePage}
          rowsPerPage={rowsPerPage}
          onRowsPerPageChange={handleChangeRowsPerPage}
          rowsPerPageOptions={[5, 10]}
        />
      </TableContainer>
    </div>
  );
}
