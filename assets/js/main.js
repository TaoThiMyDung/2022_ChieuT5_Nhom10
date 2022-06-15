let numOfChoose = 0;
const notification = document.querySelector("#notification-background");
const btnOK = notification.querySelector(".ok");
btnOK.onclick = () => {
  notification.classList.toggle("show");
};

const choose = (e) => {
  if (!e.target.classList.matchs("not-available"));
  console.log("sss");
};

const diagram = document.querySelector(
  "#content #ticket-diagram-gh-16 .ticket-diagram .diagram"
);
let ticketID = 2;
for (let i = 1; i <= 5; i++) {
  for (let j = 1; j <= 4; j++) {
    const ticketElememt = document.createElement("div");
    ticketElememt.classList.add("ticket", "ticket-" + ticketID);
    ticketElememt.style.gridRowStart = i;
    ticketElememt.style.gridColumnStart = j;
    ticketElememt.style.cursor = "pointer";
    const iElement = document.createElement("i");
    iElement.onclick = (e) => {
      if (!e.target.classList.contains("not-available")) {
        if (e.target.classList.contains("choose")) {
          e.target.classList.remove("choose");
          numOfChoose--;
        } else {
          if (numOfChoose < 5) {
            e.target.classList.add("choose");
            numOfChoose++;
          } else {
            notification.classList.add("show");
          }
        }
      }
    };
    iElement.classList.add("fa-solid", "fa-user");
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
