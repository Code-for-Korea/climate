
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
            <div className="mb-8 mt-3 font-bold text-xl">2030 NDC 부문별 목표와 현황</div>
        <DetailAreaGrid detailArea="건물" carbonDetailDatas={metaData}/>   
        </div>
           
    </div>;
}

export default App;
