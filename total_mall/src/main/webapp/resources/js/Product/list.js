let foodimgnum=1;
let foodcount=0;
    for(let i = 1; i<8; i++){
        var FoodI = document.getElementById('FoodImg' + i);
        FoodI.style.backgroundColor = 'white';

    }
    var FoodImg = document.getElementById('FoodImg1');
    FoodImg.style.backgroundColor = 'navy';
function PakgeImg(foodnum, Food){
    var FoodImg = document.getElementById("FoodImg");
    var FoodId = document.getElementById(Food);
    FoodImg.src = "../resources/img/Mallimg/식품" + foodnum + ".jpg";
    foodimgnum = foodnum;
    for(let i = 1; i<8; i++){
        var FoodI = document.getElementById('FoodImg' + i);
        FoodI.style.backgroundColor = 'white';
    }
    FoodId.style.backgroundColor = 'navy';
    
}
function RunTime() {
    EventSlide();
    requestAnimationFrame(RunTime);
}
function EventSlide(){
    foodcount++;
    if(foodcount>200){
        var FoodI = document.getElementById('FoodImg' + foodimgnum);
        FoodI.style.backgroundColor = 'white';
        foodimgnum++;
        if(foodimgnum>7){
            foodimgnum=1;
        }
        var FoodI = document.getElementById('FoodImg' + foodimgnum);
        var FoodImg = document.getElementById("FoodImg");
        FoodImg.src = "../resources/img/Mallimg/식품" + foodimgnum + ".jpg";
        FoodI.style.backgroundColor = 'navy';
        foodcount=0;
    }
}
RunTime();