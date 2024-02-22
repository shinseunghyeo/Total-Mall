

$(function () {
	/* 유효성 검사 */
    function checkRnameValidity() {
        if (frm_join.representative_name.value.length == 0) {
            $("#representative_name_test").css("color", "black")
        } else {
            $("#representative_name_test").css("color", "white")
        }
    }
    function checkCnumberValidity(){
        if(frm_join.company_number.value.length == 0){
            $("#company_number_test").css("color","black")
        } else{
            $("#company_number_test").css("color","white")
        }
    }
    function checkMutualValidity(){
        if(frm_join.mutual.value.length == 0){
            $("#mutual_test").css("color","black")
        } else{
            $("#mutual_test").css("color","white")
        }
    }
    function checkMailOrderValidity(){
        if(frm_join.mail_order_number.value.length == 0){
            $("#mail_order_number_test").css("color","black")
        } else{
            $("#mail_order_number_test").css("color","white")
        }
    }
    function checkAccountValidity(){
        if(frm_join.account1.value.length == 0){
            $("#account_test").css("color","black")
        } else{
            $("#account_test").css("color","white")
        }
    }
    function checkDepositorNameValidity(){
        if(frm_join.depositor_name.value.length == 0){
            $("#depositor_name_test").css("color","black")
        } else{
            $("#depositor_name_test").css("color","white")
        }
    }

    // focusout 이벤트에 유효성 검사 함수 연결
    $('input[name="representative_name"]').on('focusout', function () {
    	checkRnameValidity();
    });

    $('input[name="company_number"]').on('focusout', function () {
    	checkCnumberValidity();
    });

    $('input[name="mutual"]').on('focusout', function () {
    	checkMutualValidity();
    });

    $('input[name="mail_order_number"]').on('focusout', function () {
    	checkMailOrderValidity();
    });

    $('input[name="account1"]').on('focusout', function () {
    	checkAccountValidity();
    });
    
    $('input[name="depositor_name"]').on('focusout', function () {
    	checkDepositorNameValidity();
    });
    // submit 이벤트에 전체 유효성 검사 함수 연결
    frm_join.addEventListener("submit", function (e) {
        const idValue = frm_join.member_id.value;
        const idMessage = $("#id_test");

        // 전체 유효성 검사 수행
        if (!regExp_id.test(idValue)) {
            e.preventDefault(); // 유효성 검사 실패 시 폼 제출 방지
            idMessage.css("color", "black").text("아이디를 올바르게 입력해주세요.");
        }
    });
    /* 유효성 검사 */
    
    window.historyBack = function () {
        window.history.back();
    };

});

