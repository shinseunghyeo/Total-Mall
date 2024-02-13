

    /* 장바구니 아이템 삭제 스크립트 */
    function removeCartItem(button) {
        var cartItem = button.closest('.cart_item');
        if (cartItem) {
        cartItem.style.display = 'none'; 
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
