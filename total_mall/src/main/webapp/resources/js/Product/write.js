function cancelRegistration() {
    // 상품 등록 취소 여부 확인
    const ans = confirm("상품 등록을 취소하시겠습니까?");
    
    if (ans) {
        alert("마이페이지로 이동합니다.");
        window.location.href = '../member/sellermypage.do';
    }
}

function cancelModify() {
    // 상품 수정 취소 여부 확인
    const ans = confirm("상품 수정을 취소하시겠습니까?");
    
    if (ans) {
        alert("이전 페이지로 돌아갑니다.");
        window.history.back();
    }
}


$(document).ready(function(){
    $("#frm_write").submit(function(e){
        // 필수 입력값 확인을 위한 유효성 검사
        let valid = true;
        
        // 카테고리 선택 확인
        if($("#frm_category").val() === ""){
            alert("카테고리를 선택하세요.");
            valid = false;
        }

        // 노출상품명 확인
        else if($("#product_name").val().trim() === ""){
            alert("노출상품명을 입력하세요.");
            valid = false;
        }

        // 자체 상품코드 확인
        else if($("#product_code").val().trim() === ""){
            alert("자체 상품코드를 입력하세요.");
            valid = false;
        }

        // 브랜드/제조사 확인
        else if($("#brand").val().trim() === ""){
            alert("브랜드/제조사를 입력하세요.");
            valid = false;
        }

        // 상품 요약설명 확인
        else if($("#summary").val().trim() === ""){
            alert("상품 요약설명을 입력하세요.");
            valid = false;
        }

        // 상품 상세설명 확인
        else if($("#detailed_description").val().trim() === ""){
            alert("상품 상세설명을 입력하세요.");
            valid = false;
        }

        // 판매기간 확인
        else if($("#start_date").val().trim() === "" || $("#end_date").val().trim() === ""){
            alert("판매기간을 입력하세요.");
            valid = false;
        }

        // 대표이미지 확인
        else if($("#uploadFile").val().trim() === ""){
            alert("대표이미지를 선택하세요.");
            valid = false;
        }

        // 상세이미지 확인
        else if($("#uploadFile2").val().trim() === ""){
            alert("상세이미지를 선택하세요.");
            valid = false;
        }

        // 가격 확인
        else if($("#price").val().trim() === ""){
            alert("가격을 입력하세요.");
            valid = false;
        }

        // 할인율 확인
        else if($("#discount_rate").val().trim() === ""){
            alert("할인율을 입력하세요.");
            valid = false;
        }

        // 수량 확인
        else if($("#quantity").val().trim() === ""){
            alert("수량을 입력하세요.");
            valid = false;
        }

        // 판매기간이 입력된 경우에만 종료일이 시작일보다 빠른지 확인
        if(valid){
            var startDate = new Date($("#start_date").val().trim());
            var endDate = new Date($("#end_date").val().trim());

            if (endDate < startDate) {
                alert("종료일은 시작일보다 빠를 수 없습니다.");
                valid = false;
            }
        }

        // 필수 입력값이 모두 입력되었는지 확인
        if(!valid){
            e.preventDefault(); // 폼 제출 중지
            e.stopPropagation(); // 이벤트 전파 중지
        }
    });
});
