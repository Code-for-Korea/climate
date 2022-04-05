
import React from "react";
import DetailAreaGrid from "../DetailAreaGrid/DetailAreaGrid"

function App() {

     let metaData;


     metaData = [{
         "detailArea": "탄소"
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


    return <div>코드포코리아 기후변화
        
         <DetailAreaGrid carbonDetailDatas={metaData}/>     
    </div>;
}

export default App;
