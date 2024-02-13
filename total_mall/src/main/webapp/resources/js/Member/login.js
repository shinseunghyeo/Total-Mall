$(function () {

    /* 구매자/판매자 스크립트로 구분 */
    function userTypeChange(userType){
        var buyerSection = document.getElementById("buyerSection");
        var sellerSection = document.getElementById("sellerSection");
        var buyer = document.querySelector(".buyer");
        var seller = document.querySelector(".seller");

        if(userType == "buyer"){
            buyerSection.style.display = "block";
            sellerSection.style.display ="none";
            buyer.style.backgroundColor = "gray";
            seller.style.backgroundColor = "red";
        } else {
            buyerSection.style.display = "none";
            sellerSection.style.display ="block";
            buyer.style.backgroundColor = "gray";
            seller.style.backgroundColor = "gray";
        }
    }
    /* 구매자/판매자 스크립트로 구분 */
    	


});