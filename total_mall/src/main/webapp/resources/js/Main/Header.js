function changeimage(element, aa) {
    element.querySelector('.normal-image').src = 'resources/img/Headerimg/' + aa +'.gif';
    element.querySelector('.Categorymain-image').style.opacity = 0;
    element.querySelector('h1').style.opacity = 0;
}
function restoreimage(element, aa) {
    element.querySelector('.normal-image').src = 'resources/img/Headerimg/' + aa +'.png';
    element.querySelector('.Categorymain-image').style.opacity = 0.5;
    element.querySelector('h1').style.opacity = 1;
}
function CategoryMenuOn(){
    var Category = document.getElementById("Category");
    var CategoryBackgroundColor = document.getElementById("CategoryBackgroundColor");
    var CategoryBackgroundColor2 = document.getElementById("CategoryBackgroundColor2");
    if (window.getComputedStyle(Category).opacity === "0") {
        Category.style.opacity = "1";
        Category.style.zIndex = 1;
        CategoryBackgroundColor2.style.zIndex = 1;
        CategoryBackgroundColor.style.zIndex = 1;
        CategoryBackgroundColor2.style.opacity = 0.2;
    } else {
        Category.style.opacity = "0";
        Category.style.zIndex = -1;
        CategoryBackgroundColor.style.zIndex = -1;
        CategoryBackgroundColor2.style.zIndex = -1;
        CategoryBackgroundColor2.style.opacity = 0;
    }
}
function CategoryMenuOff(){
    Category.style.opacity = "0";
    Category.style.zIndex = -1;
    CategoryBackgroundColor.style.zIndex = -1;
    CategoryBackgroundColor2.style.zIndex = -1;
    CategoryBackgroundColor2.style.opacity = 0;
}
document.getElementById("Category1").style.backgroundColor = "white";
document.getElementById("Category1").style.color = "green";
document.getElementById("ServeCategory1").style.display = "flex";
function handleMouseOver(CategoryOn, ServeCategoryOn) {
    var CategoryOnElement = document.getElementById(CategoryOn);
    var ServeCategoryOnElement = document.getElementById(ServeCategoryOn);
    for(let i =1;i<10;i++){
        document.getElementById("ServeCategory"+i).style.display = "none";
        document.getElementById("Category"+i).style.backgroundColor = "yellowgreen";
        document.getElementById("Category"+i).style.color = "white";
    }
    CategoryOnElement.style.backgroundColor = "white";
    CategoryOnElement.style.color = "green";
    ServeCategoryOnElement.style.display = "flex";
}
function ServeMall(){
var Menu = document.getElementById('SearchMenu');
var ServeMallcoloron = document.getElementById('ServeMallcoloron');
    if (window.getComputedStyle(Category).opacity === "1"){
        CategoryMenuOn();
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
