function submitParcel(event) {
    event.preventDefault(); // 기본 제출 동작 방지

    var form = event.target;
    var formData = new FormData(form);

    $.ajax({
        type: form.method,
        url: form.action,
        data: formData,
        processData: false,
        contentType: false,
        success: function(data) {
            alert("송장번호가 입력되었습니다.");
            loadContent("../member/sellermypage/product/order_management.do"); // 성공하면 페이지 다시로드
        },
        error: function(error) {
            console.error("Ajax request failed: ", error);
        }
    });
}

