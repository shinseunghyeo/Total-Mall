<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/product/review.css">
</head>
<body>
  	<%@ include file="../Main/Header2.jsp" %>

    <h1>제품 리뷰 작성 페이지</h1>

    <form method="post" id="reviewForm" action="reviewProcess.do" enctype="multipart/form-data" onsubmit="return validateForm()">
		<input type="hidden" name="p_idx" value="${productReview.p_idx}">
	    <input type="hidden" name="m_idx" value="${member.m_idx}">
		<input type="hidden" name="member_id" value="${member.member_id}">
		<input type="hidden" name="member_name" value="${member.member_name}">
        <div>
            <label for="rating">평점:</label>
            <select id="star" name="star">
                <option value="5">★★★★★</option>
                <option value="4">★★★★☆</option>
                <option value="3">★★★☆☆</option>
                <option value="2">★★☆☆☆</option>
                <option value="1">★☆☆☆☆</option>
            </select>
        </div>
        <div>
            <label for="content">리뷰 내용:</label><br>
            <textarea name="content" rows="4" cols="50" required></textarea>
        </div>
        <div>
            <label for="images">사진 첨부:</label>
            <input type="file" name="uploadFile">
        </div>
        <button type="submit">리뷰 제출</button>
    </form>
  	<%@ include file="../Main/Footer2.jsp" %>
</body>
<script type="text/javascript" src="../resources/js/Product/review.js"></script>
</html>