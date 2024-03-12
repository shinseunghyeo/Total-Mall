<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 마이페이지</title>
<link rel="stylesheet" href="../resources/css/Member/buyer.css">
<script src="../resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../resources/js/Member/buyer_mypage.js"></script>
</head>
<body>
	<%@ include file="../Main/Header2.jsp"%>
	<section>
		<div id="wrap">

			<div id="buyer_nav">
				<ul id="buyer_nav_ul">
					<li class="buyer_nav_ul_li">MY PAGE</li>
					<li class="buyer_nav_ul_li">전체주문내역</li>
					<li class="buyer_nav_ul_li">회원정보설정</li>
					<li class="buyer_nav_ul_li">나의 상품평가</li>
					<li class="buyer_nav_ul_li">상품 문의 답변</li>
					<li class="buyer_nav_ul_li">고객센터 문의 답변</li>
				</ul>
			</div>
			<div id="inner_wrap">
    <%@ include file="buyerhome.jsp" %>


			</div>







		</div>




	</section>

	<%@ include file="../Main/Footer2.jsp"%>
</body>
</html>