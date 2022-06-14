import DetailAreaBox from "../DetailAreaBox/DetailAreaBox";
import CarbonSummaryData from "types/CarbonSummaryData";
import "../types/CarbonSummaryData.ts";

import "bootstrap/dist/css/bootstrap.min.css";;
import CarbonDetailData from "types/CarbonDetailData";

type Props = {
    detailArea: string;
    carbonSummaryDatas: CarbonSummaryData[];
    carbonDetailDatas: CarbonDetailData[];
};

function DetailAreaGrid({ carbonSummaryDatas, carbonDetailDatas, detailArea }: Props) {
    

    return (
        <div className="flex flex-col">
         
            <div className="bg-gray-300 h-5 w-10 mb-2 text-center rounded-md">
                <p className="text-sm">{detailArea}</p>
            </div>
            <section className="grid justify-items-center grid-cols-3 gap-4 hover:cursor-pointer">

                {carbonSummaryDatas.map((carbonSummaryData, index) => (
                     <DetailAreaBox
                        carbonSummaryData={carbonSummaryData}
                        carbonDetailData={carbonDetailDatas[index]}
                    ></DetailAreaBox>
                ))}
            </section>
        </div>
    );
}

export default DetailAreaGrid;
