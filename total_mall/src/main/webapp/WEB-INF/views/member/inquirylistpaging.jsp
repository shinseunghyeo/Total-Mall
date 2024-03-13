<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="../resources/js/Member/loadContent.js"></script>
    <script>
        $(document).ready(function () {
            // 페이지 번호를 클릭할 때의 처리
            $("body").on("click", ".page-link", function (e) {
                e.preventDefault(); // 기본 링크 동작 방지
                var pageUrl = $(this).attr("href"); // 클릭한 링크의 주소 가져오기
                // AJAX 호출
                $.ajax({
                    type: "GET",
                    url: pageUrl,
                    success: function (data) {
                        // AJAX 성공 시 처리
                        loadContent(pageUrl);
                    },
                    error: function () {
                        // AJAX 실패 시 처리
                        alert("페이지 로드에 실패했습니다.");
                    }
                });
            });
        });
    </script>
</head>
<body>
	
    <!-- 3. 현재 페이지번호가 블록당 페이지수보다 큰 경우 '이전'과 맨 처음페이지 기호(<<) 출력 -->
    <c:if test="${pageNav.pageNum > pageNav.pages_pageBlock}">
        <a class="page-link" href="../member/inquirylist.do?pageNum=1&pageBlock=1">&lt;&lt;</a>
        &nbsp;
        <a class="page-link" href="../member/inquirylist.do?pageNum=${(pageNav.pageBlock-2)*pageNav.pages_pageBlock+1}&pageBlock=${pageNav.pageBlock-1}">이전</a>
    </c:if>
    <!-- 1. 총 페이지번호와 페이지블록을 연계하여 페이지번호 출력 -->
    <c:forEach var="p" begin="${(pageNav.pageBlock - 1)*pageNav.pages_pageBlock +1}" end="${pageNav.pageBlock*pageNav.pages_pageBlock}">
        <c:if test="${p le pageNav.total_pageNum}">
            <a class="page-link" href="../member/inquirylist.do?pageNum=${p}&pageBlock=${pageNav.pageBlock}">
                <!-- 현재 페이지를 빨간색으로 출력 -->

                <c:if test="${p eq pageNav.pageNum}" var="flag"> <!-- flag 변수에는 test 결과값이 저장됨 -->
                    <span style="color:red">${p}&nbsp;</span>
                </c:if>
                <c:if test="${not flag}">
                    ${p}&nbsp;
                </c:if>
            </a>
        </c:if>
    </c:forEach>

    <!-- 2. 총 페이지번호가 페이지블록을 초과하는 경우 '다음'과 맨 마지막페이지 기호(>>) 출력 -->
    <c:if test="${pageNav.total_pageNum > (pageNav.pageBlock*pageNav.pages_pageBlock)}">
        <a class="page-link" href="../member/inquirylist.do?pageNum=${(pageNav.pageBlock*pageNav.pages_pageBlock)+1}&pageBlock=${pageNav.pageBlock + 1}">다음</a>
        &nbsp;
        <a class="page-link" href="../member/inquirylist.do?pageNum=${pageNav.total_pageNum}&pageBlock=${pageNav.last_pageBlock}">&gt;&gt;</a>
    </c:if>
    
    
    
  

</body>
</html>