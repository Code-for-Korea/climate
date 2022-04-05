import DetailAreaBox from "../DetailAreaBox/DetailAreaBox";
import CarbonDetailData from "types/CarbonDetailData";
import "../types/CarbonDetailData.ts"

type Props = {
    carbonDetailDatas: CarbonDetailData[]
};

function DetailAreaGrid({carbonDetailDatas}: Props) {
    
    return (<section className="grid grid-cols-3 gap-4">
                {carbonDetailDatas.map((carbonDetailData) => 
                    <DetailAreaBox carbonDetailData={carbonDetailData}></DetailAreaBox>
                )}
            </section>);
}

export default DetailAreaGrid;