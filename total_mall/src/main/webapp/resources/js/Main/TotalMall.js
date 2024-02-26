const EventMall = document.getElementById("EventMall");
const FoodSlide = document.getElementById("FoodSlide");
const imageSources = [];
let EventSlideCount = 0;
let aaa = 0;
let eventnum = 0;
let eventonmouse = true;
for (let i = 0; i < 10; i++) {
    const imgElement = document.createElement('img');
    imgElement.src = "resources/img/MainEventimg/이벤트" + 2 + i + ".jpg";
    imgElement.style.width = "701px";
    imgElement.style.height = "350px";
    imgElement.style.marginLeft = 700*aaa+"px";
    aaa++;
    imgElement.classList.add('image');
    imageSources.push(imgElement);
    EventMall.appendChild(imgElement);
}
// function Eventovermouse(){
//     eventonmouse=false;
// }
// function Eventoutmouse(){
//     eventonmouse=true;
// }
function RunTime() {
    EventSlide();
    requestAnimationFrame(RunTime);
}
function EventSlide() {
    if(eventonmouse){
        EventSlideCount++;
        for (let i = 0; i < 10; i++) {
            imageSources[i].style.marginLeft = parseInt(imageSources[i].style.marginLeft) + 1 + "px";
            if(parseInt(imageSources[i].style.marginLeft)>=6300){
                imageSources[i].style.marginLeft = -700 + "px";
            }
        }
        if(EventSlideCount == 500){
            for(let n = 0; n < 10; n++){
            imageSources[n].src = "resources/img/MainEventimg/이벤트" + eventnum + n + ".jpg";
            }
            EventSlideCount=0;
            eventnum++;
            if(eventnum>2){
                eventnum=0;
            }
        }
    }
}
function FoodSlideLeft(Food){
    if(parseInt(Food.style.marginLeft)<0){
        Food.style.marginLeft = parseInt(Food.style.marginLeft)+1000+"px";
    }
}
function FoodSlideRight(Food){
    if(parseInt(Food.style.marginLeft)>-4000){
        Food.style.marginLeft = parseInt(Food.style.marginLeft)-1000+"px";
    }
}
RunTime();
