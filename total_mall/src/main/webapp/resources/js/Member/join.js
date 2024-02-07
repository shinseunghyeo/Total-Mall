
    /* 구매자/판매자 스크립트로 구분 */
    function userTypeChange(userType) {
	    var buyerSection = $("#section-1");
	    var sellerSection = $("#section-2");
	    var whiteBoard = $("#white-board");
	    var whiteBoard2 = $("#white-board2");
	    var checkBox = $("#check-box");
	    var sectionWrap = $("#section-wrap");
	
	    if (userType == "buyer") {
	        buyerSection.show();
	        sellerSection.hide();
	        whiteBoard.css("height", "900px");
	        whiteBoard2.css("height", "500px");
	        checkBox.css("border-bottom", "1px solid gray");
	        sectionWrap.css("height", "1100px");
	
	    } else if (userType == "seller") {
	        buyerSection.hide();
	        sellerSection.show();
	        whiteBoard.css("height", "900px");
	        whiteBoard2.css("height", "500px");
	        checkBox.css("border-bottom", "none");
	        sectionWrap.css("height", "800px");
	    }
	}
    /* 구매자/판매자 스크립트로 구분 */
    /* 모두 체크하기 스크립트 */
$(function () {
    document.querySelector('#checkAll');

    checkAll.addEventListener('click', function(){

        const isChecked = checkAll.checked;

        if(isChecked){
            const checkboxes = document.querySelectorAll('.checkbox-design');

            for(const checkbox of checkboxes){
                checkbox.checked = true;
            }
        }

        else{
            const checkboxes = document.querySelectorAll('.checkbox-design');
            for(const checkbox of checkboxes){
                checkbox.checked = false;
            }
        }
    })

    document.querySelector('#checkAll2');

    checkAll2.addEventListener('click', function(){

        const isChecked = checkAll2.checked;

        if(isChecked){
            const checkboxes = document.querySelectorAll('.checkbox-design2');

            for(const checkbox of checkboxes){
                checkbox.checked = true;
            }
        }

        else{
            const checkboxes = document.querySelectorAll('.checkbox-design2');
            for(const checkbox of checkboxes){
                checkbox.checked = false;
            }
        }
    })

    /* 모두 체크하기 스크립트 */
    /* 개인회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    function checkAgreement() {
        const agreementCheckboxes = $('.checkbox-design');
        let isAllAgreed = true;

        agreementCheckboxes.each(function () {
            if (!$(this).prop('checked')) {
                isAllAgreed = false;
                return false; // 하나라도 체크되어 있지 않으면 종료
            }
        });

        return isAllAgreed;
    }
    $('#myForm').submit(function (e) {
        if (!checkAgreement()) {
            alert('이용약관에 모두 동의해야 합니다.');
            e.preventDefault(); // 폼 제출을 중단합니다.
        }
    });

    /* 개인회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    /* 기업회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    function checkAgreement2() {
        const agreementCheckboxes = $('.checkbox-design2');
        let isAllAgreed = true;

        agreementCheckboxes.each(function () {
            if (!$(this).prop('checked')) {
                isAllAgreed = false;
                return false; // 하나라도 체크되어 있지 않으면 종료
            }
        });

        return isAllAgreed;
    }
    $('#myForm2').submit(function (e) {
        if (!checkAgreement2()) {
            alert('이용약관에 모두 동의해야 합니다.');
            e.preventDefault(); // 폼 제출을 중단합니다.
        }
    });

    /* 기업회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    /* 카테고리 3개만 클릭하기 스크립트 */
        
        var maxAllowed = 3;

        $('.checkbox-categorie').on('change', function() {
            var count = $('.checkbox-categorie:checked').length;

            if (count > maxAllowed) {
                $(this).prop('checked', false);
                alert('최대 3개까지만 선택 가능합니다.');
            }
        });

        $('#myForm').submit(function() {
            var count = $('.checkbox-categorie:checked').length;

            if (count !== maxAllowed) {
                alert('카테고리는 3개를 선택해야 합니다.');
                return false; // 폼 전송을 중단합니다.
            }
        });
        
    /* 카테고리 3개만 클릭하기 스크립트 */
})