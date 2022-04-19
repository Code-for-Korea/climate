import CarbonDetailData from "types/CarbonDetailData";
import "../types/CarbonDetailData.ts"

type Props = {
    carbonDetailData: CarbonDetailData
}

function DetailAreaBox({carbonDetailData}: Props)  {
    return (<article className="w-48 h-32 border">
                예시
            </article>)
}

export default DetailAreaBox;