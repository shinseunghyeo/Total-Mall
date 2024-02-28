<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/customercenter/voc.css">
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
            <a href="${pageContext.request.contextPath}/customercenter/voc.do" style="color: coral;">문의하기</a>
            <a href="${pageContext.request.contextPath}/customercenter/notice.do?service">토탈소식</a>
        </div><hr style="opacity: 0.45;">
    </div><br>
    <!-- ---------문의하기--------- -->
    <div id="VocTitle">
        <div id="VocTitlebox">
            <h1>여러분의 소중한 의견을 기다립니다. </h1><br>
            고객센터 운영시간: 매주 24시간 문의<br>
            또는 직접 이메일을 보내시려면 <span>totalmall@shopingmall.com</span> 으로 문의해 주세요.<br>
            저희 쇼핑몰을 이용해 주셔서 감사합니다. 함께 더 나은 서비스를 제공하기 위해 최선을 다하겠습니다.<br><br><br><br>
            문의량이 많아 답변은 24시간 이상 소요될 수 있습니다.
        </div>
    </div>
    <script>
	function validateForm() {
	    var selectedOption = document.forms["frm_vocWrite"]["voc_type"].value;
	    var title = document.forms["frm_vocWrite"]["title"].value;
	    var content = document.forms["frm_vocWrite"]["content"].value;
	
	    if (selectedOption == "select") {
	        alert("유형을 선택해주세요.");
	        return false;
	    }
	
	    if (title.trim() == "") {
	        alert("문의 사항을 작성해주세요.");
	        return false;
	    }
	
	    if (content.trim() == "") {
	        alert("의견을 작성해주세요.");
	        return false;
	    }
	    alert("문의가 성공적으로 완료되었습니다.");
	    return true;
	}
	</script>
	
    <form name="frm_vocWrite" method="post" action="vocProcess.do" enctype="multipart/form-data"  onsubmit="return validateForm()">
        <div id="VocWrite">
            <div id="VocWritebox">
                <div id="VocWritetitlebox">
					<input type="hidden" name="m_idx" value="${member.m_idx}" >
					<input type="hidden" name="writer" value="${member.member_name}" >
					<input type="hidden" name="email" value="${member.email}" >
					<input type="hidden" name="voc_state" value="1">
                    <select name="voc_type" id="voc_type">
                        <option value="유형을 선택해주세요">유형을 선택해주세요</option>
                        <option value="주문 상품 문의">주문 상품 문의</option>
                        <option value="배송 관련 문의">배송 관련 문의</option>
                        <option value="결제 관련 문의">결제 관련 문의</option>
                        <option value="시스템 개선 의견">시스템 개선 의견</option>
                        <option value="불편사항 전달">불편사항 전달</option>
                        <option value="시스템 오류">시스템 오류</option>
                    </select>
                    
                    <input type="text" id="text" name="title"placeholder="문의 사항을 작성해주세요.">
                </div>
                <div id="VocWritecontentbox">
                    <div id="VocWritecontent">
                        <input style="width: 100%;height: 350px;" type="text" name="content" placeholder="의견을 작성해주세요.">
                    </div>
                    <div id="VocWritefile">
                        <input type="file" id="file" name="uploadFile"><br><br>
                    </div>
                </div>
            </div>
            <input id="Vocbutton" type="submit" value="보내기">
        </div>
    </form>
    <!-- ---------고객센터--------- -->
    <!-- ---------고객센터--------- -->
  	<%@ include file="../Main/Footer2.jsp" %>
</body>
</html>