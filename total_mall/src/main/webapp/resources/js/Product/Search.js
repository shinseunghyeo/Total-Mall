document.getElementById("SearchproductContaner").getElementsByTagName('span')[0].style.color='#3498db';

function asdf(price){
    var spanElements = document.getElementById("SearchproductContaner").getElementsByTagName('span');

for (var i = 0; i < spanElements.length; i++) {
    spanElements[i].style.color = 'black';
}
    document.getElementById(price).style.color='#3498db';
}
let foodimgnum=0;
    for(let i = 1; i<8; i++){
        var FoodI = document.getElementById('FoodImg' + i);
        FoodI.style.backgroundColor = 'white';

    }
function PakgeImg(foodnum, Food){
    var FoodImg = document.getElementById("FoodImg");
    var FoodId = document.getElementById(Food);
    FoodImg.src = "Mallimg/식품" + foodnum + ".jpg";
    foodimgnum = foodnum;
    for(let i = 1; i<8; i++){
        var FoodI = document.getElementById('FoodImg' + i);
        FoodI.style.backgroundColor = 'white';

    }
    FoodId.style.backgroundColor = 'navy';
}