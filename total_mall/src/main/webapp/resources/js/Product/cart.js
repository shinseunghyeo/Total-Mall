$(function () {
    /* 장바구니 아이템 삭제 스크립트 */
    function deleteCart(i){
		const ans = confirm("정말로 삭제하겠습니까?");
		
		if(ans){
			document.getElementById('deleteForm-${i}').submit();
		}
	}
    /* 장바구니 아이템 삭제 스크립트 */
    /* 모두 체크하기 스크립트 */
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
    
    
    /* 모두 체크하기 스크립트 */
    
    /* 장바구니 수량변경 스크립트 */
	
    /* 장바구니 수량변경 스크립트 */
    
    
});