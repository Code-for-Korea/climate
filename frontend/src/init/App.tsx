import React from "react";
import DetailAreaGrid from "../DetailAreaGrid/DetailAreaGrid";

function App() {
    let metaSummaryData;
    let metaDetailData;

    metaSummaryData = [
        {
            targetEmissions: 2.7,
            solutionName: "제로에너지 건축",
            detailArea: "건물",
        },
        {
            targetEmissions: 2.7,
            solutionName: "그린모델링",
            detailArea: "건물",
        },
        {
            targetEmissions: 2.7,
            detailArea: "건물",
            solutionName: "실시간 에너지 자동제어 시스템 도입",
            currentEmissions: 0.2,
        },
    ];

    metaDetailData = [
        {
            "id": 2,
            "title": "산업",
            "depth": 0,
            "detail": "",
            "data_status": "",
            "emission_2016": null,
            "emission_2017": null,
            "emission_2018": "260.5",
            "emission_2019": null,
            "emission_2020": null,
            "emission_2021": null,
            "emission_2022": null,
            "emission_goal_2030": "222.6",
          },
          {
            "id": 3,
            "title": "건물",
            "depth": 0,
            "detail": "",
            "data_status": "",
            "emission_2016": null,
            "emission_2017": null,
            "emission_2018": "52.1",
            "emission_2019": null,
            "emission_2020": null,
            "emission_2021": null,
            "emission_2022": null,
            "emission_goal_2030": "35.0",
          },
          {
            "id": 4,
            "title": "수송",
            "depth": 0,
            "detail": "",
            "data_status": "",
            "emission_2016": null,
            "emission_2017": null,
            "emission_2018": "98.1",
            "emission_2019": null,
            "emission_2020": null,
            "emission_2021": null,
            "emission_2022": null,
            "emission_goal_2030": "61.0",
          },
    ]


    return (
        <div className="flex flex-col">
            <div className="m-auto">
                <div className="mb-8 mt-3 font-bold text-xl">2030 NDC 부문별 목표와 현황</div>
                <DetailAreaGrid detailArea="건물" carbonSummaryDatas={metaSummaryData} carbonDetailDatas={metaDetailData}/>
            </div>
        </div>
    );
}

export default App;
