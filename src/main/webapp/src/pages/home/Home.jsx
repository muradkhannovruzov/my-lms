import React from 'react'
import './home.css'

import Sidebar from '../../components/sidebar/Sidebar'
import MainDash from '../../components/mainDash/MainDash'
import RightSide from '../../components/rightSide/RightSide'

const Home = () => {
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

export default Home