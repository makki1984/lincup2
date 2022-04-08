const tableBody = document.getElementById("tbody");
const editButton = document.createElement('button');
const deleteButton = document.createElement('button');
const form = document.getElementById("form")
const popup = document.getElementById("popup");
const eventPopup = document.getElementById("eventPopup");
const addEvent = document.getElementById("addEvent");
const editPopup = document.getElementById("editpopup");
const searchInput = document.getElementById("search");
const popupname = document.getElementById("popupname");
const popuplocation = document.getElementById("popuplocation");
const popupdate = document.getElementById("popupdate");
const prevButton = document.getElementById("prevButton");
const nextButton = document.getElementById("nextButton");
const prevText = document.getElementById("prev");
const nextText = document.getElementById("next");
const ename = document.getElementById("ename");
const elocation = document.getElementById("elocation");
const date = document.getElementById("date");
const editForm = document.getElementById("editform")
//Assigning and creating elements from the HTML


let page = 4;
let pageIndex = 0;
let no = 1;
let pageNo = 1;
//Assignning values to the variables

nextButton.addEventListener("click",function(){ //adding click function to the nextbutton
    if(tableRows.length > page){ 
        page+=4; //page = page+4
        pageIndex+=4;
        pageNo++;
        setTable();
    }
    console.log(pageNo)
})

prevButton.addEventListener("click",()=>{
    if(pageNo!==1){ 
        page-=4;
        pageIndex-=4;
        pageNo--;
        setTable();
        console.log(pageNo)
    }
})

let eventname;
let eventlocation;
let eventdate;
let editeventname;
let editeventlocation;
let editeventdate;
let tableRows = [];



function setPage(){
    prevText.innerText = `${pageIndex} - ${tableRows.slice(pageIndex,page).length}`;
    nextText.innerText = `of ${tableRows.length}`;
}

window.onload = setPage();

addEvent.onclick = () => { //display the addevent popup when clicked
    popup.style.display = "flex";
}


window.onclick = (event) => {
    //when the user outside the popup => hide the popup
    if ((event.target == popup)|| (event.target == eventPopup) || (event.target == editPopup)) {
        popup.style.display = "none";
        eventPopup.style.display = "none";

    }
}

// let a = 12;

// Array = [ ab,c,d,e]

searchInput.addEventListener("change", () => {

    let tr = ""; 
    let searchTerm = searchInput.value;
    let searchTermLength = searchInput.value.length;

    let filteredRows = tableRows.filter(e => {
        let en = e.eventName;
        return en.slice(0, searchTermLength) == searchTerm;
    });

    // filters out the rest of events which doesn't match the typed event name

    filteredRows.map((data, i) => {
        tr += `<tr key=${i} >`;
        tr += `<td  onclick='popupevent(${i})' style='cursor:pointer'  > ${data.number}</td>`;
        tr += `<td onclick='popupevent(${i})' style='cursor:pointer'  > ${data.eventName} </td>`;
        tr += `<td  onclick='popupevent(${i})' style='cursor:pointer' > ${data.location} </td>`;
        tr += `<td  onclick='popupevent(${i})' style='cursor:pointer'  > ${data.date}</td>`;
        tr += `<td><button id='edit' onclick='editEvent(${i})' class='warning' >Edit</button></td>`;
        tr += `<td><button id='delete' onclick='deleteEvent(${i})' class='danger' >Delete </button></td>`;
        tr += "</tr>";
    });
    //looping for the filtered array to show the search results
    tableBody.innerHTML = tr;
})

function deleteEvent(id) {
    tableRows.splice(id, 1); //deleting a specific row based on the id
    no--;
    setTable(); // setting the table rows again to show the changes after the delete
    setPage(); 
}

let editEventId ;

function editEvent(i){
    editPopup.style.display = "flex";
    ename.value = tableRows[i].eventName;
    elocation.value = tableRows[i].location;
    date.value = tableRows[i].date;
    editEventId = tableRows[i].number-1;
  
}


const setTable = () => {
    //the default rows than shown when not searched
    let tr = "";

    tableRows.slice(pageIndex,page).map((data, i) => {
        tr += `<tr key=${i} >`;
        tr += `<td  onclick='popupevent(${i})' style='cursor:pointer'  > ${data.number}</td>`;
        tr += `<td onclick='popupevent(${i})' style='cursor:pointer'  > ${data.eventName} </td>`;
        tr += `<td  onclick='popupevent(${i})' style='cursor:pointer' > ${data.location} </td>`;
        tr += `<td  onclick='popupevent(${i})' style='cursor:pointer'  > ${data.date}</td>`;
        tr += `<td><button id='edit' onclick='editEvent(${i})' class='warning' >Edit</button></td>`;
        tr += `<td><button id='delete' onclick='deleteEvent(${i})' class='danger' >Delete </button></td>`;
        tr += "</tr>";
    });
    tableBody.innerHTML = tr;
}

function popupevent(i){
    eventPopup.style.display = "flex";
    popupname.value = tableRows[i].eventName;
    popuplocation.value = tableRows[i].location;
    popupdate.value = tableRows[i].date;
}

form.addEventListener("submit", (e) => { //function to perform when the user clicks on submit
    e.preventDefault();

    //assigning the values from the input form to these variables
    eventname = form.eventname.value;
    eventlocation = form.eventlocation.value;
    eventdate = form.eventdate.value;
   
    if (eventname && eventlocation && eventdate) { // condition to check whether the user has given all the three inputs that are required        
        let newEvent = {
            number : no,
            eventName: eventname,
            location: eventlocation,
            date: eventdate
        }; // the body of the newevent
        
        tableRows.push(newEvent);
        //pushing the newevent to the tabelRows array
        setPage();
        no++;

        popup.style.display = "none";
        setTable();
        form.eventname.value = "";
        form.eventlocation.value = "";
        form.eventdate.value = "";
        //resetting the input fields to empty after the submission
    } else {
        // if the user doesn't enter any of the required inputs
        return alert("Enter all the fields")
    }
})


editForm.addEventListener("submit", (e) => {
    e.preventDefault();
    editeventname = editForm.ename.value;
    editeventlocation = editForm.elocation.value;
    editeventdate = editForm.date.value;
   
    if (editeventname && editeventlocation && editeventdate) {
        
        
        let newEvent = {
            number : editEventId+1,
            eventName: editeventname,
            location: editeventlocation,
            date: editeventdate
        };
        console.log(editEventId);
        tableRows.splice(editEventId, 1,newEvent);
        // tableRows.push(newEvent);
        setPage();
        no++;

        editPopup.style.display = "none";
        setTable();
        editForm.ename.value = "";
        editForm.elocation.value = "";
        editForm.date.value = "";
    } else {
        return alert("Enter all the fields")
    }
})