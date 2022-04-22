
import React from "react";
import DetailAreaGrid from "../DetailAreaGrid/DetailAreaGrid"

function App() {

     let metaData;


     metaData = [{
         "targetEmissions": 2.7,
         "solutionName": "제로에너지 건축",
         "detailArea": "건물"
     }, {
         "targetEmissions": 2.7,
         "solutionName": "그린모델링",
        "detailArea": "건물"
    }, {
        "targetEmissions": 2.7, 
        "detailArea": "건물",
        "solutionName":  "실시간 에너지 자동제어 시스템 도입",
        "currentEmissions": 0.2
    }, 
     ];


    return <div className="flex flex-col">
        <div className="m-auto">
            <div className="mb-8 mt-3 font-bold text-xl">2030 NDC 부문별 목표와 현황</div>
        <DetailAreaGrid detailArea="건물" carbonDetailDatas={metaData}/>   
        </div>
           
    </div>;
}

export default App;
