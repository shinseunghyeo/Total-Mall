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

    /* 유효성 검사 */

});
//submit시 전체 유효성 검사 순서대로
function validateForm() {
	const regExp_id = /^[A-Za-z0-9~!@#$%^()+|=]{8,12}$/;
    const regExp_pw = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[~!@#$%^()+|=])[A-Za-z0-9~!@#$%^()+|=]{8,16}$/;
    const regExp_phone =/^010-\d{4}-\d{4}$/;
    var memberId = document.forms["frm_join"]["member_id"].value;
    var memberPw = document.forms["frm_join"]["member_pw"].value;
    var memberPw2 = document.forms["frm_join"]["member_pw2"].value;
    var memberName = document.forms["frm_join"]["member_name"].value;
    var handphone = document.forms["frm_join"]["handphone"].value;
    var email = document.forms["frm_join"]["email"].value;
    var address1 = document.forms["frm_join"]["address1"].value;
    var address2 = document.forms["frm_join"]["address2"].value;
    var address3 = document.forms["frm_join"]["address3"].value;
	
	if(memberId.trim() == ""){
		alert("아이디를 작성해 주세요");
		return false;
	}
    if (!regExp_id.test(memberId)) {
        alert("아이디는 8~12자로 영어,숫자를 포함해 주세요.");
        return false;
    }
    if(memberPw.trim() == ""){
		alert("비밀번호를 작성해 주세요");
		return false;
	}
    if (!regExp_pw.test(memberPw)) {
        alert("비밀번호는 8~16자로 영어,특수문자,숫자를 포함해 주세요.");
        return false;
    }
    if ($("#member_pw").val() != $("#member_pw2").val()) {
        alert("비밀번호가 맞지 않습니다.");
        return false;
    }
    if (frm_join.member_name.value.length == 0) {
        alert("이름을 적어주세요.");
        return false;
    }
    if(handphone.trim() == ""){
		alert("핸드폰 번호를 작성해 주세요");
		return false;
	}
    if (!regExp_phone.test(frm_join.handphone.value)) {
        alert("010-숫자4자리-숫자4자리로 입력해야 합니다.");
        return false;
    }
    if(email.trim() == ""){
		alert("이메일을 작성해 주세요");
		return false;
	}
	if(address3.trim() == ""){
		alert("상세주소를 작성해 주세요");
		return false;
	}
    return true;
}
//submit시 전체 유효성 검사 순서대로




