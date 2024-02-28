        window.onload = function() {
            // 페이지가 로드될 때 실행되는 JavaScript 코드
            formatPrices();
        }

        function formatPrices() {
            // 모든 클래스가 "price"인 요소를 찾음
            var priceElements = document.getElementsByClassName("price");
            
            // 각 요소에서 텍스트 가져와서 형식 변경
            for (var i = 0; i < priceElements.length; i++) {
                var priceText = priceElements[i].innerText;
                // 쉼표를 포함한 형식으로 변경
                var formattedPrice = addCommasToNumber(priceText);
                // 형식 변경된 텍스트를 요소에 설정
                priceElements[i].innerText = formattedPrice;
            }
        }

        function addCommasToNumber(numberString) {
            // 정규식을 사용하여 3자리마다 쉼표 추가
            return numberString.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }