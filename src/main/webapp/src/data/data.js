// Sidebar imports
import {
  UilEstate,
  UilClipboardAlt,
  UilUsersAlt,
  UilPackage,
  UilChart,
  UilSubject,
  UilUserSquare
} from "@iconscout/react-unicons";

// Recent Card Imports
import img1 from "../imgs/img1.png";
import img2 from "../imgs/img2.png";
import img3 from "../imgs/img3.png";

// Analytics Cards imports

// Sidebar Data
export const SidebarData = [
  {
    icon: UilEstate,
    heading: "Dashboard",
  },
  // {
  //   icon: UilClipboardAlt,
  //   heading: "Subject Groups",
  // },
  // {
  //   icon: UilUsersAlt,
  //   heading: "Students",
  // },
  // {
  //   icon: UilUserSquare,
  //   heading: "Teachers",
  // },
  // {
  //   icon: UilChart,
  //   heading: "Rooms",
  // },
];

// Analytics Cards Data
export const CardsData = [
  {
    title: "Students",
    color: {
      background: "linear-gradient(180deg, #bb67ff 0%, #c484f3 100%)",
      boxShadow: "0px 10px 20px 0px #e0c6f5",
    },
    barValue: 87,
    value: "228",
    png: UilUsersAlt,
    series: [
      {
        name: "Students",
        data: [31, 40, 28, 51, 42, 109, 100],
      },
    ],
  },
  {
    title: "Lessons",
    color: {
      background: "linear-gradient(180deg, #FF919D 0%, #FC929D 100%)",
      boxShadow: "0px 10px 20px 0px #FDC0C7",
    },
    barValue: 43,
    value: "309",
    png: UilSubject,
    series: [
      {
        name: "Lessons",
        data: [23, 35, 14, 27, 29, 19, 9],
      },
    ],
  },
  {
    title: "Rooms",
    color: {
      background:
        "linear-gradient(rgb(248, 212, 154) -146.42%, rgb(255 202 113) -46.42%)",
      boxShadow: "0px 10px 20px 0px #F9D59B",
    },
    barValue: 60,
    value: "8",
    png: UilEstate,
    series: [
      {
        name: "Rooms",
        data: [10, 25, 15, 30, 12, 15, 20],
      },
    ],
  },
];

// Recent Update Card Data
export const UpdatesData = [
  {
    img: img1,
    name: "Andrew Thomas",
    noti: "Lessons for new groups have been set.",
    time: "25 seconds ago",
  },
  {
    img: img2,
    name: "James Adam",
    noti: "The renovation of 4 classrooms has been completed",
    time: "45 minutes ago",
  },
  {
    img: img3,
    name: "Antony G",
    noti: "The lesson date of 4 groups will change",
    time: "2 hours ago",
  },
];
