function changeimage(element, aa) {
    element.querySelector('.normal-image').src = 'resources/img/Headerimg/' + aa +'.gif';
    element.querySelector('.Kategorymain-image').style.opacity = 0;
    element.querySelector('h1').style.opacity = 0;
}
function restoreimage(element, aa) {
    element.querySelector('.normal-image').src = 'resources/img/Headerimg/' + aa +'.png';
    element.querySelector('.Kategorymain-image').style.opacity = 0.5;
    element.querySelector('h1').style.opacity = 1;
}
function KategoryMenuOn(){
    var Kategory = document.getElementById("Kategory");
    var KategoryBackgroundColor = document.getElementById("KategoryBackgroundColor");
    var KategoryBackgroundColor2 = document.getElementById("KategoryBackgroundColor2");
    if (window.getComputedStyle(Kategory).opacity === "0") {
        Kategory.style.opacity = "1";
        Kategory.style.zIndex = 1;
        KategoryBackgroundColor2.style.zIndex = 1;
        KategoryBackgroundColor.style.zIndex = 1;
        KategoryBackgroundColor2.style.opacity = 0.2;
    } else {
        Kategory.style.opacity = "0";
        Kategory.style.zIndex = -1;
        KategoryBackgroundColor.style.zIndex = -1;
        KategoryBackgroundColor2.style.zIndex = -1;
        KategoryBackgroundColor2.style.opacity = 0;
    }
}
function KategoryMenuOff(){
    Kategory.style.opacity = "0";
    Kategory.style.zIndex = -1;
    KategoryBackgroundColor.style.zIndex = -1;
    KategoryBackgroundColor2.style.zIndex = -1;
    KategoryBackgroundColor2.style.opacity = 0;
}
document.getElementById("Kategory1").style.backgroundColor = "white";
document.getElementById("Kategory1").style.color = "green";
document.getElementById("ServeKategory1").style.display = "flex";
function handleMouseOver(KategoryOn, ServeKategoryOn) {
    var KategoryOnElement = document.getElementById(KategoryOn);
    var ServeKategoryOnElement = document.getElementById(ServeKategoryOn);
    for(let i =1;i<10;i++){
        document.getElementById("ServeKategory"+i).style.display = "none";
        document.getElementById("Kategory"+i).style.backgroundColor = "yellowgreen";
        document.getElementById("Kategory"+i).style.color = "white";
    }
    KategoryOnElement.style.backgroundColor = "white";
    KategoryOnElement.style.color = "green";
    ServeKategoryOnElement.style.display = "flex";
}
function ServeMall(){
var Menu = document.getElementById('SearchMenu');
var ServeMallcoloron = document.getElementById('ServeMallcoloron');
    if (window.getComputedStyle(Kategory).opacity === "1"){
        KategoryMenuOn();
    }
    if (Menu.style.right === '0px') {
    // 메뉴가 열려있는 경우
    Menu.style.right = '-450px';
    ServeMallcoloron.style.opacity=0;
    ServeMallcoloron.style.zIndex=-1;
    } else {
    // 메뉴가 닫혀있는 경우
    Menu.style.right = '0px';
    ServeMallcoloron.style.opacity=0.1;
    ServeMallcoloron.style.zIndex=99999;
    }
}
function ServeMallcolorOff(){
    var Menu = document.getElementById('SearchMenu');
    var ServeMallcoloron = document.getElementById('ServeMallcoloron');
    Menu.style.right = '-450px';
    ServeMallcoloron.style.opacity=0;
    ServeMallcoloron.style.zIndex=-1;
}
