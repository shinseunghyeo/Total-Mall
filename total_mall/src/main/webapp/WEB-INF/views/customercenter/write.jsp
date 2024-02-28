<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글쓰기</title>
<link rel="stylesheet" href="../resources/css/customercenter/noticeWrite.css">
<script type="text/javascript" src="../resources/js/customercenter/noticeWrite.js"></script>

</head>
<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <div class="container">
        <h1>공지사항 게시글 작성</h1>
        <form id="frm_write" method="post" action="writeProcess.do" enctype="multipart/form-data" onsubmit="return validateForm()">
            <input type="hidden" name="m_idx" value="${member.m_idx}">
            <label for="writer">작성자</label>
            <input type="text" value="${member.member_name}" disabled>
            <input type="hidden" name="writer" value="${member.member_name}">
            <label for="service">서비스</label>
            <select name="service" id="service">
                <option value="menu">옵션 선택</option>
                <option value="customer">고객 서비스</option>
                <option value="event">이벤트 당첨</option>
                <option value="transaction">안전 거래</option>
                <option value="hazardousgoods">위해 상품</option>
            </select>
            <label for="title">제목</label>
            <input type="text" id="title" name="title">
            <label for="content">내용</label>
            <textarea name="content" id="content" cols="30" rows="10"></textarea>
            <label for="uploadFile">첨부 파일</label>
            <input type="file" id="uploadFile" name="uploadFile">
            <input type="submit" value="작성 완료">
        </form>
    </div>
  	<%@ include file="../Main/Footer2.jsp" %>
</body>
</html>