import React from 'react'
import './Dashboard.css'

import Sidebar from './Sidebar/Sidebar'
import MainDash from './MainDash/MainDash'
import RightSide from './RightSide/RightSide'

const Dashboard = () => {
  return (
    <div className="App">
        <div className='AppGlass'>
          <Sidebar/>
          <MainDash/>
          <RightSide/>
        </div>
    </div>
  )
}

export default Dashboard