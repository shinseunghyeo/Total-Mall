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
/* 유효성 검사 */
$(function () {
    const regExp_id = /^[A-Za-z0-9~!@#$%^()+|=]{8,12}$/;
    const regExp_pw = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[~!@#$%^()+|=])[A-Za-z0-9~!@#$%^()+|=]{8,16}$/;
    const regExp_phone =/^010-\d{4}-\d{4}$/;

    function checkIdValidity() {
        if (!regExp_id.test(frm_join.member_id.value)) {
            $("#id_test").css("color", "red")
        } else {
            $("#id_test").css("color", "white")
        }
    }
    function checkPwValidity(){
        if(!regExp_pw.test(frm_join.member_pw.value)){
            $("#pw_test").css("color","red")
        } else{
            $("#pw_test").css("color","white")
        }
    }
    function checkPw2Validity(){
        if($("#member_pw").val() != $("#member_pw2").val()){
            $("#pw2_test").css("color","red")
        } else{
            $("#pw2_test").css("color","white")
        }
    }
    function checkNameValidity(){
        if(frm_join.member_name.value.length == 0){
            $("#name_test").css("color","red")
        } else{
            $("#name_test").css("color","white")
        }
    }
    function checkHandphoneValidity(){
        if(!regExp_phone.test(frm_join.handphone.value)){
            $("#handphone_test").css("color","red")
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
    // submit 이벤트에 전체 유효성 검사 함수 연결
    frm_join.addEventListener("submit", function (e) {
        const idValue = frm_join.member_id.value;
        const idMessage = $("#id_test");

        // 전체 유효성 검사 수행
        if (!regExp_id.test(idValue)) {
            e.preventDefault(); // 유효성 검사 실패 시 폼 제출 방지
            idMessage.css("color", "red").text("아이디를 올바르게 입력해주세요.");
        }
    });
});
/* 유효성 검사 */
