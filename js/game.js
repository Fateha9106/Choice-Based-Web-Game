let currentbalance = 0;
let debt = 0;
let day = 1;
let nextchallenge = 1;
let currentchallenge = null;
let currentchoice = null;
let weeklyincome = 0;
let jobstrike = 0;

let paydaylist = [8, 15, 19];


$("#startgame").click(() => {
    $("#balance-current").html("2000");
    currentbalance += 2000;
    getnextchallenge();
});

let getnextchallenge = () => {
    console.log('gameapi/json/?next=true&nextid='+nextchallenge);
    $.ajax({
        url: 'gameapi/json/?next=true&nextid='+nextchallenge,
        method: 'GET',
        datatype: 'json',
        success: (data) => {
            currentchallenge = data;
            console.log(typeof data);
            console.log(data);
        }
    });
    $.ajax({
        url: 'gameapi/challenge/?next=true&nextid='+nextchallenge,
        method: 'GET',
        success: (data) => {
            updateview(data);
            addkeylisteneroptions();
        }
    });
}

let addkeylisteneroptions = () => {
    let options = document.querySelectorAll("#option");
    for (let i = 0; i < options.length; i++){
        options[i].addEventListener('click', () => {
            optionchose(i+1);
        });
    }
}

let optionchose = (choice) => {
    getresult(choice);
    currentchoice = choice;
}

let getresult = (choice) => {
    $.ajax({
        url: 'gameapi/result/?result='+choice+'&cid='+nextchallenge,
        method: 'GET',
        success: (data) => {
            updateview(data);
            integratesuccessbuttonlistener();
        }
    });
}

let integratesuccessbuttonlistener = () => {
    document.getElementById("success-button").addEventListener('click', () => {
        nextoperation();
    });
}

let nextoperation = () => {
    if (currentchallenge['next'+currentchoice] == '#20'){
        getnextchallenge();
    }
    else{
        updatebalance();
        nextchallenge = currentchallenge['next'+currentchoice];
        if (nextchallenge == '35'){
            gameover();
        }
        else if (currentbalance <= 0){
            gameover();
        }
        else if (nextchallenge == '36'){
            gamesurvived();
        }
        else{
            getnextchallenge();
        }
    }
}

let gamesurvived = () => {

}

let updatebalance = () => {
    currentbalance += Number(currentchallenge['cashflow'+currentchoice]);
    let weeklychange = Number(currentchallenge['weeklychange'+currentchoice]);
    if (Number(currentchallenge['jobstrike'+currentchoice]) == 1){
        jobstrike++;
        if (jobstrike == 3){
            joblost();
        }
    }
    if (weeklychange != 0){
        weeklyincome += weeklychange;
        let ptag = document.createElement('p');
        ptag.innerHTML = weeklychange;
        // $("#stats-holder").append(ptag);
    }
    if (ispayday()){
        currentbalance += Number(weeklyincome);
    }
    $("#balance-current").html(currentbalance);
}

let joblost = () => {
    weeklyincome -= 3000;
    $.ajax({
        url: 'gameapi/others/?type=lostjob',
        method: 'GET',
        success: (data) => {
            updateview(data);
            $("#dismiss-button").click(() => {
                nextoperation();
            });
        }
    }
    );
}

let ispayday = () => {
    for (let i = 0; i < paydaylist.length; i++){
        if (paydaylist[i] == nextchallenge){
            return true;
        }
    }
    return false;
}

let updateview = (data) => {
    $("#challenge-div").html(data);
}

let gameover = () => {

}

console.log("loaded gun..\n");
