import React from 'react'
import CustomerReview from '../customerReview/CustomerReview'
import Updates from '../updates/Updates'
import './rightSIde.css'


const RightSide = () => {
  return (
    <div className="RightSide">
        <div>
            <h3>Updates</h3>
            <Updates/>
        </div>
        
        <div>
            <h3>Teacher weekly lesson count</h3>
            <CustomerReview/>
        </div>
    </div>

  )
}

export default RightSide