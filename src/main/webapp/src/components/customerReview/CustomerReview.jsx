import React, { useEffect, useState, useContext } from "react";
import Chart from "react-apexcharts";
import ChartDataContext from "../../contexts/ChartDataContext";

const CustomerReview = () => {
  const { chartData } = useContext(ChartDataContext);

  const [seriesData, setSeriesData] = useState([1, 3, 0, 5, 2, 0, 0]);

  useEffect(() => {
    if(chartData) {
      const counts = chartData.map(item => item.count);
      setSeriesData(counts);
    }
  }, [chartData]);

  const [data, setData] = useState({
    series: [
      {
        name: "Lesson",
        data: seriesData,
      },
    ],
    options: {
      chart: {
        type: "bar",
        height: "auto",
      },
      fill: {
        colors: ["#00CED1"],
        type: "gradient",
        gradient: {
          shade: "light",
          type: "horizontal",
          shadeIntensity: 0.5,
          gradientToColors: undefined,
          inverseColors: true,
          opacityFrom: 1,
          opacityTo: 1,
          stops: [0, 100],
        },
      },
      dataLabels: {
        enabled: true,
        formatter: function (value) {
          return value;
        },
        offsetY: -6,
        style: {
          fontSize: "12px",
          colors: ["#304758"],
        },
      },
      stroke: {
        curve: "smooth",
        colors: ["#ff929f"],
      },
      tooltip: {
        x: {
          formatter: function (
            value,
            { series, seriesIndex, dataPointIndex, w }
          ) {
            return series[seriesIndex].name;
          },
        },
      },
      grid: {
        show: false,
      },
      xaxis: {
        type: "categories",
        categories: [
          "Monday",
          "Tuesday",
          "Wednesday",
          "Thursday",
          "Friday",
          "Saturday",
          "Sunday",
        ],
      },
      yaxis: {
        show: false,
      },
      toolbar: {
        show: false,
      },
      plotOptions: {
        bar: {
          barWidth: "50%",
        },
      },
    },
  });

  // Update chart data when seriesData changes
  useEffect(() => {
    setData(oldData => ({
      ...oldData,
      series: [
        {
          name: 'Lesson',
          data: seriesData,
        }
      ]
    }));
  }, [seriesData]);

  return (
    <div className="CustomerReview">
      <Chart series={data.series} options={data.options} type="bar" />
    </div>
  );
};

export default CustomerReview;
