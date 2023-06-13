import React, { useEffect, useState, useContext } from "react";
import Chart from "react-apexcharts";
import { ChartDataContext } from "../../utils/chartDataContext";

const CustomerReview = () => {
  const chartDataContext = useContext(ChartDataContext);
  let chartData = null;
  
  const [seriesData, setSeriesData] = useState([1, 3, 0, 5, 2, 0, 0]); // Initialize your state with default data

  if (chartDataContext !== undefined) {
    chartData = chartDataContext.chartData;
  }

  // Update your chart data whenever chartData changes
  useEffect(() => {
    console.log(chartData);
    if(chartData) {
      const counts = chartData.map(item => item.count);
      setSeriesData(counts);
    }
  }, [chartData]);

  const [data, setData] = useState({
    series: [
      {
        name: "Lesson",
        data: seriesData, // If chartData is null, use the default array.
      },
    ],
    options: {
      chart: {
        type: "bar",
        height: "auto",
      },

      fill: {
        colors: ["#00CED1"], // change this to control the color of the bars
        type: "gradient", // change this to 'solid' for solid color bars, or 'gradient' for gradient color bars
        gradient: {
          shade: "light", // this can be 'light' or 'dark' to control the gradient shade
          type: "horizontal", // this can be 'horizontal' or 'vertical' to control the gradient direction
          shadeIntensity: 0.5, // this controls the intensity of the gradient
          gradientToColors: undefined, // you can specify an array of color codes here to control the gradient colors
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
          // the barWidth is a percentage. 100% means that the bars will occupy the whole space, while 50% means the bars will take up half the space
          barWidth: "50%",
        },
      },
    },
  });

  return (
    <div className="CustomerReview">
      <Chart series={data.series} options={data.options} type="bar" />
    </div>
  );
};

export default CustomerReview;
