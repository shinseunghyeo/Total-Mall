
$(function () {

    const boldCss = {
        fontFamily: "G-market-Bold",
        fontSize: "22px"
    };
    const lightCss = {
        fontFamily: "G-market-Light",
        fontSize: "16px"
    };

    //판매자 페이지 네비게이션 기본 css 설정(홈화면 활성화)
    $(".buyer_nav_ul_li:first").css({
        backgroundColor: "rgb(224, 224, 224)",
        boldCss
    });
    $(".buyer_nav_ul_li:not(.buyer_nav_ul_li:first)").css({
        backgroundColor: "rgba(224, 224, 224, 0.42)",
        lightCss
    });


    //비활성 페이지 숨김처리
    const hidePages = [
        "#buyer_home"
    ];
    // hidePages.forEach(page => $(page).css("display", "none"));

    //판매자 페이지 네비게이션 클릭시 css 변경
    $("#buyer_nav_ul").on("click", ".buyer_nav_ul_li", function () {
        $(".buyer_nav_ul_li").css({
             backgroundColor: "rgb(224, 224, 224)"
        });
        $(this).css({
            backgroundColor: "rgb(224, 224, 224)",
            boldCss
        });

        const pages = [
            "#buyer_home"
        ];
        hidePages.forEach(page => $(page).css({
            display: "none"
        }));
        

        if ($(this).is(".buyer_nav_ul_li:eq(0)")) {
            loadContent("buyermypage/member/buyerhome.do");
            $(".buyer_nav_ul_li:not(.buyer_nav_ul_li:eq(0))").css({
                backgroundColor: "rgba(224, 224, 224, 0.42)",
                lightCss,
            });
        };

        if ($(this).is(".buyer_nav_ul_li:eq(1)")) {
            loadContent("buyermypage/product/order_history.do");
            $(".buyer_nav_ul_li:not(.buyer_nav_ul_li:eq(1))").css({
                backgroundColor: "rgba(224, 224, 224, 0.42)",
                lightCss,
            });
        };

        if ($(this).is(".buyer_nav_ul_li:eq(3)")) {
            loadContent("buyermypage/member/buyerupdate.do");
            $(".buyer_nav_ul_li:not(.buyer_nav_ul_li:eq(3))").css({
                backgroundColor: "rgba(224, 224, 224, 0.42)",
                lightCss,
            });
        };

        if ($(this).is(".buyer_nav_ul_li:eq(4)")) {
            loadContent("buyermypage/member/buyeraddress.do");
            $(".buyer_nav_ul_li:not(.buyer_nav_ul_li:eq(4))").css({
                backgroundColor: "rgba(224, 224, 224, 0.42)",
                lightCss,
            });
        };

            if ($(this).is(".buyer_nav_ul_li:eq(6)")) {
        loadContent("buyermypage/product/myreview.do");
        $(".buyer_nav_ul_li:not(.buyer_nav_ul_li:eq(6))").css({
            backgroundColor: "rgba(224, 224, 224, 0.42)",
            lightCss,
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



        //개인회원 페이지 네비게이션 hover css 변경    
    }).on("mouseenter", ".buyer_nav_ul_li", function () {
        $(this).css({
            boxShadow: "0 2px 10px 1px rgba(0,0,0,0.5)"
        });
    }).on("mouseleave", ".buyer_nav_ul_li", function () {
        $(this).css({
            boxShadow: "none"
        })

    });



});

