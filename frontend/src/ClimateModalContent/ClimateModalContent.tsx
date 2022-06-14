import React from 'react';
import CarbonDetailData from 'types/CarbonDetailData';

type Props = {
    carbonDetailData: CarbonDetailData;
}

let keyToName: any = {
    goalName: "목표명",
    goalPriority: "목표 수준",
    goalDetail: "목표 세부내용",
    goalDataState: "목표 데이터 상태",
    emission_2016: "2016년 배출량",
    emission_2017: "2017년 배출량",
    emission_2018: "2018년 배출량",
    emission_2019: "2019년 배출량",
    emission_2020: "2020년 배출량",
    emission_2021: "2021년 배출량",
    emission_2022: "2022년 배출량",
    emission_goal_at_2030: "2030년 배출량 목표",
}

function ClimateModalContent({carbonDetailData}: Props) {

    let detailNameAndDatas :string[][] = [];

    for(const [key, value] of Object.entries(carbonDetailData)) {
        detailNameAndDatas.push([keyToName[key], value])
    }

    return (
        <div className='flex flex-col'>
            {detailNameAndDatas.map((detailNameAndData) => (
                  <div className="flex flex-row">
                  <div className='text-sm mr-1'>{detailNameAndData[0]}</div>
                  <div>{detailNameAndData[1]}</div>
              </div>
            ))}
        </div>
    )
}

export default ClimateModalContent;