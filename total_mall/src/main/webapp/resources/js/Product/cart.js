$(function () {
    
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