
import React from "react";
import DetailAreaGrid from "../DetailAreaGrid/DetailAreaGrid"

function App() {

     let metaData;


     metaData = [{
         "detailArea": "건물"
     }, {
        "detailArea": "탄소"
    }, {
        "detailArea": "소탄"
    }, {
        "detailArea": "탄소"
    }, {
        "detailArea": "탄소"
    }

     ];


    return <div className="flex flex-col">
        <div className="m-auto">
            <h1 className="mb-8 mt-3">2030 NDC 부문별 목표와 현황</h1>
        <DetailAreaGrid detailArea="건물" carbonDetailDatas={metaData}/>   
        </div>
           
    </div>;
}

export default App;
