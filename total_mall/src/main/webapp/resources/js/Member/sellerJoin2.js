

$(function () {
	/* 유효성 검사 */
	const regExp_account = /^\d{6}-\d{2}-\d{6}$/;
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
    /* 유효성 검사 */
    
    window.historyBack = function () {
        window.history.back();
    };

});

//submit시 전체 유효성 검사 순서대로
function validateForm() {
	var representativeName = document.forms["frm_join"]["representative_name"].value;
	var companyNumber = document.forms["frm_join"]["company_number"].value;
	var mutual = document.forms["frm_join"]["mutual"].value;
	var mailOrderNumber = document.forms["frm_join"]["mail_order_number"].value;
	var account1 = document.forms["frm_join"]["account1"].value;
	var depositorName = document.forms["frm_join"]["depositor_name"].value;
	const regExp_account = /^\d{6}-\d{2}-\d{6}$/;
	
	if(representativeName.trim() == ""){
		alert("대표자명을 작성해 주세요");
		return false;
	}
	if(companyNumber.trim() == ""){
		alert("사업자 등록번호를 작성해 주세요");
		return false;
	}
	if(mutual.trim() == ""){
		alert("상호를 작성해 주세요");
		return false;
	}
	if(mailOrderNumber.trim() == ""){
		alert("통신판매번호를 작성해 주세요");
		return false;
	}
	if(account1.trim() == ""){
		alert("계좌를 작성해 주세요");
		return false;
	}
	if (!regExp_account.test(frm_join.account1.value)) {
        alert("계좌는 숫자6자리-숫자2자리-숫자6자리로 입력해야 합니다.");
        return false;
    }
	if(depositorName.trim() == ""){
		alert("예금주명을 작성해 주세요");
		return false;
	}
	alert("회원가입이 완료되었습니다.");
    return true;
}
//submit시 전체 유효성 검사 순서대로
