
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

    //판매자 페이지 네비게이션 기본 css 설정(홈화면 활성화)
    $(".seller_nav_ul_li:first").css({
        backgroundColor: "rgba(224, 224, 224, 0.42)",
        boldCss
    });
    $(".seller_nav_ul_li:not(.seller_nav_ul_li:first)").css({
        backgroundColor: "rgb(158, 158, 158)",
        lightCss
    });


    //비활성 페이지 숨김처리
    const hidePages = [
        "#short_cut"
    ];
    // hidePages.forEach(page => $(page).css("display", "none"));

    //판매자 페이지 네비게이션 클릭시 css 변경
    $("#seller_nav_ul").on("click", ".seller_nav_ul_li", function () {
        $(".seller_nav_ul_li").css({
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
        

        if ($(this).is(".seller_nav_ul_li:eq(0)")) {
            loadContent("sellermypage/member/sellerhome.do");
            $(".seller_nav_ul_li:not(.seller_nav_ul_li:eq(0))").css({
	            backgroundColor: "rgb(158, 158, 158)",
                lightCss
            });
        };

        if ($(this).is(".seller_nav_ul_li:eq(1)")) {
            loadContent("sellermypage/product/write.do");
            $(".seller_nav_ul_li:not(.seller_nav_ul_li:eq(1))").css({
                backgroundColor: "rgb(158, 158, 158)",
                lightCss
            });
        };

        if ($(this).is(".seller_nav_ul_li:eq(2)")) {
            loadContent("sellermypage/product/myplist.do");
            $(".seller_nav_ul_li:not(.seller_nav_ul_li:eq(2))").css({
                backgroundColor: "rgb(158, 158, 158)",
                lightCss
            });
        };

        if ($(this).is(".seller_nav_ul_li:eq(3)")) {
            loadContent("sellermypage/product/order_management.do");
            $(".seller_nav_ul_li:not(.seller_nav_ul_li:eq(3))").css({
                backgroundColor: "rgb(158, 158, 158)",
                lightCss
            });
        };

        if ($(this).is(".seller_nav_ul_li:eq(4)")) {
            loadContent("sellermypage/member/sellerupdate.do");
            $(".seller_nav_ul_li:not(.seller_nav_ul_li:eq(4))").css({
                backgroundColor: "rgb(158, 158, 158)",
                lightCss
            });
        }; 
        
		if ($(this).is(".seller_nav_ul_li:eq(5)")) {
            loadContent("#");
            $(".seller_nav_ul_li:not(.seller_nav_ul_li:eq(5))").css({
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


    //판매자 페이지 네비게이션 hover css 변경    
}).on("mouseenter", ".seller_nav_ul_li", function () {
    $(this).css({
        boxShadow: "0 2px 10px 1px rgba(0,0,0,0.5)"
    });
}).on("mouseleave", ".seller_nav_ul_li", function () {
    $(this).css({
        boxShadow: "none"
    });

});




});




