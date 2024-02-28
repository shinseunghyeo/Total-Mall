/* 우편번호 찾기 */
function daumPost() {
	new daum.Postcode({
		oncomplete: function(data) {
			//도로명일 경우 R, 지번일 경우 J 의 값을 가지고 있다.
			console.log('data.userSelectedType : ' + data.userSelectedType)
			console.log('data.roadAddress : ' + data.roadAddress)
			console.log('data.jibunAddress : ' + data.jibunAddress)
			console.log('data.zonecode : ' + data.zonecode)
			var addr = ""
			if (data.userSelectedType == 'R') {//도로명일 경우 R
				addr = data.roadAddress
			} else {//지번일 경우 J
				addr = data.jibunAddress
			}
			document.getElementById("address1").value = data.zonecode
			$("#address2").val(addr)
			$("#address3").focus()

		}
	}).open()

}
/* 우편번호 찾기 */
$(function () {
	/* 유효성 검사 */
    const regExp_id = /^[A-Za-z0-9~!@#$%^()+|=]{8,12}$/;
    const regExp_pw = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[~!@#$%^()+|=])[A-Za-z0-9~!@#$%^()+|=]{8,16}$/;
    const regExp_phone =/^010-\d{4}-\d{4}$/;

    function checkIdValidity() {
        if (!regExp_id.test(frm_join.member_id.value)) {
            $("#id_test").css("color", "black")
        } else {
            $("#id_test").css("color", "white")
        }
    }
    function checkPwValidity(){
        if(!regExp_pw.test(frm_join.member_pw.value)){
            $("#pw_test").css("color","black")
        } else{
            $("#pw_test").css("color","white")
        }
    }
    function checkPw2Validity(){
        if($("#member_pw").val() != $("#member_pw2").val()){
            $("#pw2_test").css("color","black")
        } else{
            $("#pw2_test").css("color","white")
        }
    }
    function checkNameValidity(){
        if(frm_join.member_name.value.length == 0){
            $("#name_test").css("color","black")
        } else{
            $("#name_test").css("color","white")
        }
    }
    function checkHandphoneValidity(){
        if(!regExp_phone.test(frm_join.handphone.value)){
            $("#handphone_test").css("color","black")
        } else{
            $("#handphone_test").css("color","white")
        }
    }
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
    $('input[name="member_id"]').on('focusout', function () {
        checkIdValidity();
    });

    $('input[name="member_pw"]').on('focusout', function () {
        checkPwValidity();
    });

    $('input[name="member_pw2"]').on('focusout', function () {
        checkPw2Validity();
    });

    $('input[name="member_name"]').on('focusout', function () {
        checkNameValidity();
    });

    $('input[name="handphone"]').on('focusout', function () {
        checkHandphoneValidity();
    });
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
        
    });
    /* 유효성 검사 */
    
    

        
    
});





