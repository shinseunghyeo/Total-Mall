// -----------개수최대값-----------
var prevValue = "0"; // 이전 값 저장 변수

function checkInput() {
    var inputBox = document.getElementById("inputBox");
    var value = inputBox.value;

    if (/^\d*$/.test(value) || value === "") {
        if (parseInt(value) > 999) {
            inputBox.value = prevValue; // 999 이상의 값은 이전 값으로 복원
        } else {
            prevValue = value; // 이전 값 갱신
        }
    } else {
        inputBox.value = prevValue; // 숫자가 아닌 경우 이전 값으로 복원
    }

    // 첫자리가 0이 되지 않도록 처리
    if (value.length > 1 && value[0] === "0") {
        inputBox.value = value.slice(1);
    }
     updateLinks();
}

function increment() {
    var inputBox = document.getElementById("inputBox");
    var value = parseInt(inputBox.value) || 0;
    if (value < 999) {
        inputBox.value = value + 1;
        prevValue = inputBox.value;
    }
     updateLinks();
}

function decrement() {
    var inputBox = document.getElementById("inputBox");
    var value = parseInt(inputBox.value) || 0;
    if (value > 0) {
        inputBox.value = value - 1;
        prevValue = inputBox.value;
    }
     updateLinks();
}
// -----------개수최대값-----------
// 쿼리스트링 변경문 
var contextPath = "${pageContext.request.contextPath}";
var productPIdx = "${product.p_idx}";
var memberMIdx = "${member.m_idx}";
var prevValue = 0; // 이전 값 저장 변수
function updateLinks() {
    // 장바구니 링크 업데이트
    updateLink("cartLink", "c_quantity", getInputBoxValue());

    // 구매 링크 업데이트
    updateLink("purchaseLink", "c_quantity", getInputBoxValue());
}
function getInputBoxValue() {
    return document.getElementById("inputBox").value;
}
function updateLink(linkId, parameterName, parameterValue) {
    // 기존의 href 값을 읽어옴
    var link = document.getElementById(linkId);
    var originalHref = link.getAttribute("href");

    // 기존의 parameter 값을 찾아냄
    var parameterIndex = originalHref.indexOf(parameterName + "=");

    if (parameterIndex !== -1) {
        // parameter가 이미 존재하면 값을 수정
        var newHref = originalHref.substring(0, parameterIndex) + parameterName + "=" + parameterValue;
        link.setAttribute("href", newHref);
    } else {
        // parameter가 없으면 추가
        var separator = originalHref.indexOf('?') !== -1 ? '&' : '?';
        var newHref = originalHref + separator + parameterName + "=" + parameterValue;
        link.setAttribute("href", newHref);
    }
}
// 쿼리스트링 변경문 
// -------------- 장바구니에 상품 담김 ------------------

    
// -------------- 장바구니에 상품 담김 ------------------

// -----------상품정보-----------
let linkTime = true;
var a1 = document.getElementById("a1");
var a2 = document.getElementById("a2");
var a3 = document.getElementById("a3");
function totallink_Left(){
    if(linkTime){
        moveLink(a1);
        moveLink(a2);
        moveLink(a3);
        linkTime=false;
    }
    function moveLink(asd){
        asd.style.marginLeft = parseInt(asd.style.marginLeft) + 1000 + "px";
        if(parseInt(asd.style.marginLeft)>1000){
            asd.style.marginLeft = "-1000px";
            asd.style.zIndex = -1;
        }else{
            asd.style.zIndex = 0;
        }
        setTimeout(() => {
            linkTime =true;
        }, 500);
    }
}
function totallink_Right(){
    if(linkTime){
    moveLink(a1);
    moveLink(a2);
    moveLink(a3);
    linkTime=false;
    }
    function moveLink(asd){
        asd.style.marginLeft = parseInt(asd.style.marginLeft) - 1000 + "px";
        if(parseInt(asd.style.marginLeft)<-1000){
            asd.style.marginLeft = "1000px";
            asd.style.zIndex = -1;
        }else{
            asd.style.zIndex = 0;
        }
        setTimeout(() => {
            linkTime =true;
        }, 500);
    }
}
function product_On(product){
    var productDetails = document.getElementById("productDetails");
    var productReviews = document.getElementById("productReviews");
    var customerQuestions = document.getElementById("customerQuestions");
    var shippingInfo = document.getElementById("shippingInfo");
    var producton = document.getElementById(product);
    productDetails.style.display ="none";
    productReviews.style.display ="none";
    customerQuestions.style.display ="none";
    shippingInfo.style.display ="none";
    producton.style.display = "block";

    const buttons = document.querySelectorAll('.pageColor');
    buttons.forEach(button => {
        button.classList.remove('pageColor_on');
    });

    event.target.classList.add('pageColor_on');
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
// -----------상품정보-----------

/* 즉시 구매 스크립트 */


// 서버에서 전달한 메시지를 자바스크립트 변수에 저장
var msg = "${msg2}";
function showCartAlert() {
    // 서버에서 전달한 메시지가 존재하고 비어있지 않다면
    if (msg && msg.trim() !== "") {
        alert(msg);
    } else {
        alert('장바구니에 상품이 추가되었습니다!');
    }
}
