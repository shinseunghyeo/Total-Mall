function userTypeChange(userType){
    var whiteBoard = document.getElementById("white-board");
    var whiteBoard2 = document.getElementById("white-board2");

    if(userType == "findId"){
        whiteBoard.style.display = "block"
        whiteBoard2.style.display = "none"
        
    } else if(userType == "findPw") {
        whiteBoard.style.display = "none"
        whiteBoard2.style.display = "block"
    }
}

