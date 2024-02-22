<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/customercenter/notice.css">
</head>
<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <!-- ---------고객센터--------- -->
    <div id="CustomerMain">
        <div id="CustomerMainbox">
            <div id="CustomerTitle">
                고객센터
            </div>
            <div id="CustomerContent">
                <input type="text">
            </div>
            <div id="CustomerNum">
                <div>
                    고객센터<span> 0000-0000</span> 문의<br>
                    365일, 24시간 운영
                </div>
            </div>
        </div>
    </div>
    <div id="CustomerList"><br>
        <div id="CustomerListbox">
            <a href="${pageContext.request.contextPath}/customercenter/inquiry.do">문의내역</a>
            <a href="${pageContext.request.contextPath}/customercenter/QnA.do">자주 묻는 질문</a>
            <a href="${pageContext.request.contextPath}/customercenter/voc.do">문의하기</a>
            <a href="${pageContext.request.contextPath}/customercenter/notice.do?service" style="color: coral;">토탈소식</a>
        </div><hr style="opacity: 0.45;">
    </div>
    <!-- ---------토탈소식--------- -->
    <div id="NoticeTitle">
        <h3>공지사항</h3>
		<a href="${pageContext.request.contextPath}/customercenter/write.do" style="text-decoration: none;"><input type="button" value="글등록"style="margin-left: auto;width:150px;height:50px;font-weight:bold"></a>
    </div>
    <div id="NoticeLine">
    <style>
    #NoticeMenu a.active {
    color: red; /* 활성 링크의 색상을 변경합니다. */
    text-decoration: underline; /* 활성 링크에 밑줄을 추가합니다. */
}
    </style>

        <div id="NoticeMenubox">
            <div id="NoticeMenu">
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service">전체</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=custoer">고객서비스</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=event">이벤트당첨</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=transaction">안전거래</a>
                <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=hazardousgoods">위해상품</a>
            </div>
        </div>
<script>
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
</script>
        <div id="NoticeContentbox">
            <c:choose>
				<c:when test="${param.service == ''}">
	            <h3 id="NoticeContenttitle">전체</h3>
	       		</c:when>
				<c:when test="${param.service == 'custoer'}">
	            <h3 id="NoticeContenttitle">고객서비스</h3>
	       		</c:when>
				<c:when test="${param.service == 'event'}">
	            <h3 id="NoticeContenttitle">이벤트당첨</h3>
	       		</c:when>
				<c:when test="${param.service == 'transaction'}">
	            <h3 id="NoticeContenttitle">안전거래</h3>
	       		</c:when>
				<c:when test="${param.service == 'hazardousgoods'}">
	            <h3 id="NoticeContenttitle">위해상품</h3>
	       		</c:when>
				<c:otherwise>
	            <h3 id="NoticeContenttitle">토탈소식</h3>
	       		</c:otherwise>
			</c:choose>
            <div id="NoticeContent">
				<c:choose>
					<c:when test="${empty noticeList}">
						<tr><td colspan="6">등록된 게시물이 없습니다</td></tr>
					</c:when>
					<c:when test="${param.n_idx == none}">
						<c:forEach var="i" begin="${CCpageNav.startNum}" end="${CCpageNav.endNum}" varStatus="vs">
							<c:if test="${not empty noticeList[vs.count-1]}"><!-- noticeList에 저장된 데이터가 있는 경우 출력-->
				                <div class="Notcename">
				                    <a href="${pageContext.request.contextPath}/customercenter/notice.do?service=${noticeList[vs.count-1].service}&n_idx=${noticeList[vs.count-1].n_idx}"=>${noticeList[vs.count-1].title}</a>
				                </div>
							</c:if>
						</c:forEach>
					</c:when>
					<c:otherwise>
		                <div class="Notceviews">
	제목: ${noticeList[0].title} <br>
	내용: ${noticeList[0].content} <br>
	조회수: ${noticeList[0].read_cnt} <br>
	작성일: ${noticeList[0].post_date} <br>
	첨부파일: ${noticeList[0].originfile_name} <br><br>

<!-- 수정하기, 삭제하기 버튼은 회원이면서 본인이 작성한 게시글일 때 화면에 출력되도록 함 -->
	<input type="button" value="수정하기" onclick="location.href='update.do?n_idx=${noticeList[0].n_idx}'">
	<input type="button" value="삭제하기" onclick="deletePost()">
<input type="button" value="목록보기" onclick="location.href='notice.do'" >

		                	
		                </div>
					</c:otherwise>
				</c:choose>
            </div>
        </div>
    </div>
    <!-- ---------토탈소식--------- -->
    <!-- ---------고객센터--------- -->
  	<%@ include file="../Main/Footer2.jsp" %>
</body>
</html>