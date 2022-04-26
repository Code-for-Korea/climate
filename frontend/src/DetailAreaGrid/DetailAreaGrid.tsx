import DetailAreaBox from "../DetailAreaBox/DetailAreaBox";
import CarbonDetailData from "types/CarbonDetailData";
import "../types/CarbonDetailData.ts";

import "bootstrap/dist/css/bootstrap.min.css";
import Modal from "react-bootstrap/Modal";
import React, { useCallback } from "react";

type Props = {
    detailArea: string;
    carbonDetailDatas: CarbonDetailData[];
};

function DetailAreaGrid({ carbonDetailDatas, detailArea }: Props) {
    const [show, setShow] = React.useState(false);

    const handleClose = () => setShow(false);
    const handleShow = () => setShow(true);

    return (
        <div className="flex flex-col">
            <Modal
                className="modal"
                dialogClassName="modal-container"
                keyboard
                centered
                show={show}
                onHide={handleClose}
            >
                <Modal.Body className="h-80"></Modal.Body>
            </Modal>
            <div className="bg-gray-300 h-5 w-10 mb-2 text-center rounded-md">
                <p className="text-sm">{detailArea}</p>
            </div>
            <section className="grid justify-items-center grid-cols-3 gap-4 hover:cursor-pointer" onClick={handleShow}>
                {carbonDetailDatas.map((carbonDetailData) => (
                    <DetailAreaBox carbonDetailData={carbonDetailData}></DetailAreaBox>
                ))}
            </section>
        </div>
    );
}

export default DetailAreaGrid;
