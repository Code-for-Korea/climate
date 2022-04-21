import DetailAreaBox from "../DetailAreaBox/DetailAreaBox";
import CarbonDetailData from "types/CarbonDetailData";
import "../types/CarbonDetailData.ts"

type Props = {
    detailArea: string
    carbonDetailDatas: CarbonDetailData[]
};

function DetailAreaGrid({carbonDetailDatas, detailArea}: Props) {
    
    return (
        <div className="flex flex-col">
            <div className="bg-gray-300 h-5 w-10 mb-2 text-center rounded-md">
                <p className="text-sm">{detailArea}</p>
            </div>
         <section className="grid justify-items-center grid-cols-3 gap-4 ">
                {carbonDetailDatas.map((carbonDetailData) => 
                    <DetailAreaBox carbonDetailData={carbonDetailData}></DetailAreaBox>
                )}
            </section>
        </div>
   );
}

export default DetailAreaGrid;