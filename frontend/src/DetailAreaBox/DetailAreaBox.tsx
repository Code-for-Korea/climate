import CarbonDetailData from "types/CarbonDetailData";
import "../types/CarbonDetailData.ts"

type Props = {
    carbonDetailData: CarbonDetailData
}

function DetailAreaBox({carbonDetailData}: Props)  {
    return (<article className="w-48 h-fit border flex flex-col">
        <div className="ml-2">
        <div className="text-base mb-2">{carbonDetailData.solutionName}</div>
                <div className="text-sm mb-1.5">{carbonDetailData.targetEmissions}</div>
                {carbonDetailData.currentEmissions  ?
                <div className="text-sm mb-1.5">{carbonDetailData.currentEmissions}</div>
                : <></>}
                <div className="bg-gray-300 h-5 w-10 mb-2 text-center rounded-md">
                <p className="text-sm">{carbonDetailData.detailArea}</p>
            </div>
        </div>
       
            </article>)
}

export default DetailAreaBox;