// Hiển thị thông báo chọn quá chổ
const diagram = document.querySelector(
    "#content #ticket-diagram-gh-16 .ticket-diagram .diagram"
);
if (diagram) {
    let numOfChoose = 0;
    let tickets = "";
    let tickedIsBooked = diagram.getAttribute("tickedIsBooked");
    let ticketIdConvert = tickedIsBooked.split(",");
    let ticketIsBookInt = ticketIdConvert.map(s => {
        return parseInt(s.trim());
    })
    const notification = document.querySelector("#notification-background");
    const btnOK = notification.querySelector(".ok");
    btnOK.onclick = () => {
        notification.classList.toggle("show");
    };

    const choose = (e) => {
        if (!e.target.classList.matchs("not-available")) ;
    };
    let ticketID = 2;
    for (let i = 1; i <= 5; i++) {
        for (let j = 1; j <= 4; j++) {
            const ticketElememt = document.createElement("div");
            ticketElememt.classList.add("ticket", "ticket-" + ticketID);
            ticketElememt.style.gridRowStart = i;
            ticketElememt.style.gridColumnStart = j;
            ticketElememt.style.cursor = "pointer";
            const iElement = document.createElement("i");
            iElement.setAttribute("loc", ticketID);
            iElement.onclick = (e) => {
                if (!e.target.classList.contains("not-available")) {
                    if (e.target.classList.contains("choose")) {
                        e.target.classList.remove("choose");
                        let chooseDiagramElement = document.querySelector("#ticket-diagram-gh-16 .choose-diagram");
                        chooseDiagramElement.textContent = chooseDiagramElement.textContent.replace("ghế số " + e.target.getAttribute("loc") + "; ", "");
                        tickets = tickets.replace(e.target.getAttribute("loc") + ",", "");
                        numOfChoose--;
                    } else {
                        if (numOfChoose < 5) {
                            e.target.classList.add("choose");
                            let chooseDiagramElement = document.querySelector("#ticket-diagram-gh-16 .choose-diagram");
                            chooseDiagramElement.textContent = chooseDiagramElement.textContent + "ghế số " + e.target.getAttribute("loc") + "; ";
                            tickets = tickets + e.target.getAttribute("loc") + ",";
                            numOfChoose++;
                        } else {
                            notification.classList.add("show");
                        }
                    }
                    document.querySelector("#order-form input[name = 'danh-sach-ve']").value = tickets;
                }
            };
            iElement.classList.add("fa-solid", "fa-user");
            if(ticketIsBookInt.includes(ticketID)) {
                iElement.classList.add("not-available");
            }
            ticketElememt.appendChild(iElement);
            const p = document.createElement("p");
            p.innerText = "Vé " + ticketID;
            ticketElememt.appendChild(p);
            if (i == 1 && j != 1 && j != 2) {
                diagram.appendChild(ticketElememt);
                ticketID++;
            } else if (i != 1 && j != 4) {
                diagram.appendChild(ticketElememt);
                ticketID++;
            } else if (i == 5 && j == 4) {
                diagram.appendChild(ticketElememt);
                ticketID++;
            }
        }
    }
    const btnBookTicket = document.querySelector("#ticket-diagram-gh-16 .book-ticket");
    btnBookTicket.onclick = (e) => {
        if (numOfChoose === 0) {
            alert("Hãy chọn vé trước");
            e.preventDefault();
        }
    }

}
// process bar
const bookTicketElememt = document.querySelector(
    "#content .process-book-ticket"
);
if (bookTicketElememt) {
    const step2 = bookTicketElememt.querySelector(".step-2");
    const step3 = bookTicketElememt.querySelector(".step-3");
    const step1Elevemt = document.querySelector("#content #step-1");
    const step2Elevemt = document.querySelector("#content #step-2");
    const step3Elevemt = document.querySelector("#content #step-3");
    const processBar = bookTicketElememt.querySelector(".process-bar");
    const goStep2 = () => {
        if (!step2.classList.contains("active")) {
            step2.classList.add("active");
            step1Elevemt.classList.remove("show");
            step2Elevemt.classList.add("show");
            processBar.style.width = "50%";
        }
    };
    const backStep1 = () => {
        if (!step3.classList.contains("active")) {
            step2.classList.remove("active");
            step2Elevemt.classList.remove("show");
            step1Elevemt.classList.add("show");
            processBar.style.width = "15%";
        }
    };
    const goStep3 = () => {
        if (
            !step3.classList.contains("active") &&
            step2.classList.contains("active")
        ) {
            step3.classList.add("active");
            step2Elevemt.classList.remove("show");
            step3Elevemt.classList.add("show");
            processBar.style.width = "85%";
        }
    };
    const backStep2 = () => {
        step3.classList.remove("active");
        step3Elevemt.classList.remove("show");
        step2Elevemt.classList.add("show");
        processBar.style.width = "50%";
    };
    // handle button continue
    const btnContinueStep1 = document.querySelector(
        "#content #step-1 .btn-continue"
    );
    const btnContinueStep2 = document.querySelector(
        "#content #step-2 .btn-continue"
    );
    const btnPaymentStep3 = document.querySelector(
        "#content #step-3 .btn-payment"
    );
    if (btnContinueStep1) {
        btnContinueStep1.onclick = () => {
            goStep2();
        };
    }

    if (btnContinueStep2) {
        btnContinueStep2.onclick = () => {
            goStep3();
        };
    }

    if (btnPaymentStep3) {
        btnPaymentStep3.onclick = () => {
            console.log("Thanh toán");
        };
    }

    // handle button back

    const btnBack2 = document.querySelector("#content #step-2 .btn-back");
    const btnBack3 = document.querySelector("#content #step-3 .btn-back");

    if (btnBack2) {
        btnBack2.onclick = () => {
            backStep1();
        };
    }

    if (btnBack3) {
        btnBack3.onclick = () => {
            backStep2();
        };
    }
    const btnBookTicket = document.querySelector("#content #step-3 .btn-payment");
    const pickUpSelect = document.querySelector("#content #step-2 #pick-up");
    const dropOffSelect = document.querySelector("#content #step-2 #drop-off");
    const inputDiemDon = document.querySelector("#form-book-ticket input[name = 'diem-don']");
    const inputDiemTra = document.querySelector("#form-book-ticket input[name = 'diem-tra']");
    btnBookTicket.onclick = () => {
        // pickUpSelect.option[pickUpSelect.selectedIndex].value
        inputDiemDon.value = pickUpSelect.value;
        inputDiemTra.value = dropOffSelect.value;
    }
}