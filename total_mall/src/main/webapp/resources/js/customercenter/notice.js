    // 페이지가 로드될 때 실행되는 함수
    window.onload = function() {
        // 현재 URL에서 'service' 매개변수 값을 가져옴
        var urlParams = new URLSearchParams(window.location.search);
        var service = urlParams.get('service');

        // 모든 링크 요소를 가져옴
        var links = document.querySelectorAll('#NoticeMenu a');

        // 각 링크 요소에 대해 반복
        links.forEach(function(link) {
            // href 속성에서 'service' 매개변수 값을 가져옴
            var linkService = new URL(link.href).searchParams.get('service');

            // 만약 'service' 값이 현재 서비스와 같다면 색상을 변경
            if (linkService === service) {
                link.style.color = '#ff0000'; // 원하는 색상으로 변경
                link.style.textDecoration = 'underline'; // 원하는 텍스트 꾸밈 설정
            }
        });
    };