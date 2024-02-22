$(function () {
    function checkPw2Validity(){
        if($("#input-pw").val() != $("#input-pw2").val()){
            $("#pw2_test").css("color","black")
        } else{
            $("#pw2_test").css("color","white")
        }
    }

    $('input[id="input-pw"]').on('focusout', function () {
        checkPw2Validity();
    });
    $('input[id="input-pw2"]').on('focusout', function () {
        checkPw2Validity();
    });
});