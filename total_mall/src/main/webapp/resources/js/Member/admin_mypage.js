
$(function () {

    const navCss = {
        backgroundColor: "rgb(158, 158, 158)",

    };

    const boldCss = {
        fontFamily: "G-market-Bold",
        fontSize: "22px"
    };
    const lightCss = {
        fontFamily: "G-market-Light",
        fontSize: "16px"
    };

    //관리자 페이지 네비게이션 기본 css 설정(홈화면 활성화)
    $(".admin_nav_ul_li:first").css({
        backgroundColor: "rgba(224, 224, 224, 0.42)",
        boldCss
    });
    $(".admin_nav_ul_li:not(.admin_nav_ul_li:first)").css({
        backgroundColor: "rgb(158, 158, 158)",
        lightCss
    });


    //비활성 페이지 숨김처리
    const hidePages = [
        "#short_cut"
    ];
    // hidePages.forEach(page => $(page).css("display", "none"));

    //관리자 페이지 네비게이션 클릭시 css 변경
    $("#admin_nav_ul").on("click", ".admin_nav_ul_li", function () {
        $(".admin_nav_ul_li").css({
            backgroundColor: "rgba(224, 224, 224, 0.42)",
        });
        $(this).css({
            backgroundColor: "rgba(224, 224, 224, 0.42)",
            boldCss
        });

        const pages = [
            "#short_cut",
            
        ];
        hidePages.forEach(page => $(page).css({
            display: "none"
        }));
        

        if ($(this).is(".admin_nav_ul_li:eq(0)")) {
            loadContent("adminmypage/member/adminhome.do");
            $(".admin_nav_ul_li:not(.admin_nav_ul_li:eq(0))").css({
	            backgroundColor: "rgb(158, 158, 158)",
                lightCss
            });
        };

        if ($(this).is(".admin_nav_ul_li:eq(1)")) {
            loadContent("adminmypage/member/member_management.do");
            $(".admin_nav_ul_li:not(.admin_nav_ul_li:eq(1))").css({
                backgroundColor: "rgb(158, 158, 158)",
                lightCss
            });
        };

        if ($(this).is(".admin_nav_ul_li:eq(2)")) {
            loadContent("adminmypage/product/allplist.do");
            $(".admin_nav_ul_li:not(.admin_nav_ul_li:eq(2))").css({
                backgroundColor: "rgb(158, 158, 158)",
                lightCss
            });
        };
        
        if ($(this).is(".admin_nav_ul_li:eq(3)")) {
            loadContent("adminmypage/product/allorderlist.do");
            $(".admin_nav_ul_li:not(.admin_nav_ul_li:eq(3))").css({
                backgroundColor: "rgb(158, 158, 158)",
                lightCss
            });
        };

       

    
    // Ajax로 페이지를 불러와서 content 영역에 표시
    function loadContent(url) {
        $.ajax({
            url: url,
            type: 'GET',
            success: function (data) {
                $("#inner_wrap").html(data);
            },
            error: function () {
                $("#inner_wrap").html("Error loading content.");
            }
        });
    }


    //관리자 페이지 네비게이션 hover css 변경    
}).on("mouseenter", ".admin_nav_ul_li", function () {
    $(this).css({
        boxShadow: "0 2px 10px 1px rgba(0,0,0,0.5)"
    });
}).on("mouseleave", ".admin_nav_ul_li", function () {
    $(this).css({
        boxShadow: "none"
    });

});



//이 코드는 무작위 데이터를 생성하여 꺾은선 그래프를 그리는 예시입니다. 
//만약 실제 데이터를 사용하려면 dataValues 배열에 실제 데이터를 할당하면 됩니다. 
//코드의 일부를 수정하여 프로젝트에 통합하세요.
$("div").ready(function () {
// 12개의 임의의 데이터 생성 (예시)
var dataValues = [];
for (var i = 0; i < 12; i++) {
    dataValues.push(Math.floor(Math.random() * 50) + 10);
}

// Chart.js를 사용하여 꺾은선 그래프 그리기
var ctx = document.getElementById('myLineChart').getContext('2d');
var myLineChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: Array.from({
            length: 12
        }, (_, i) => (i + 1).toString()), // 1부터 12까지 레이블 생성
        datasets: [{
            label: 'My Line Chart',
            data: dataValues,
            borderColor: 'rgb(75, 192, 192)',
            borderWidth: 2,
            fill: false
        }]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false,
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});
});

//페이지 로드 시에 현재 날짜와 시간을 표시
    $(function () {
        displayCurrentDateTime();

        // 1초마다 갱신되도록 설정 (1000 밀리초 = 1초)
        setInterval(displayCurrentDateTime, 1000);
    });

    // 현재 날짜와 시간을 가져와서 HTML에 표시하는 함수
    function displayCurrentDateTime() {
        var currentDateElement = $("#currentDate");
        var currentTimeElement = $("#currentTime");
        var currentDateTime = new Date();

        // 날짜를 포맷에 맞게 설정하고, 타임존을 'Asia/Seoul'로 설정
        var dateOptions = {
            timeZone: 'Asia/Seoul',
            year: 'numeric',
            month: 'long',
            day: 'numeric'
        };

        // 시간을 포맷에 맞게 설정
        var timeOptions = {
            hour: 'numeric',
            minute: 'numeric',
            second: 'numeric',
            hour12: false
        };

        // 현재 날짜와 시간을 HTML 요소에 표시
        currentDateElement.text(currentDateTime.toLocaleString('ko-KR', dateOptions));
        currentTimeElement.text(currentDateTime.toLocaleString('ko-KR', timeOptions));
    }




});




