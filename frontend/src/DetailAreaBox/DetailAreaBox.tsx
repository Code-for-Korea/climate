
import CarbonSummaryData from "types/CarbonSummaryData";
import Modal from "react-bootstrap/Modal";
import React from "react";
import "../types/CarbonDetailData.ts"
import CarbonDetailData from "types/CarbonDetailData";
import ClimateModalContent from "../ClimateModalContent/ClimateModalContent";
import { Button } from "react-bootstrap";

type Props = {
    carbonSummaryData: CarbonSummaryData,
    carbonDetailData: CarbonDetailData
}

function DetailAreaBox({carbonSummaryData, carbonDetailData}: Props)  {
    const [show, setShow] = React.useState(false);
    console.log(show)

    const handleClose = () => setShow(false);
    const handleShow = () => setShow(true);

    return (
    <>
    <Modal
                show={show}
                onHide={handleClose}
            >
                <Modal.Body className="h-80">
                    <ClimateModalContent
                       carbonDetailData={carbonDetailData}
                    ></ClimateModalContent>
                </Modal.Body>
            </Modal>
    <article className="w-48 h-fit border flex flex-col" onClick={handleShow}>
         
        <div className="ml-2">
        <div className="text-base mb-2">{carbonSummaryData.solutionName}</div>
                <div className="text-sm mb-1.5">{carbonSummaryData.targetEmissions}</div>
                {carbonSummaryData.currentEmissions  ?
                <div className="text-sm mb-1.5">{carbonSummaryData.currentEmissions}</div>
                : <></>}
                <div className="bg-gray-300 h-5 w-10 mb-2 text-center rounded-md">
                <p className="text-sm">{carbonSummaryData.detailArea}</p>
            </div>
        </div>
       
            </article>
    </>
    )
}

export default DetailAreaBox;