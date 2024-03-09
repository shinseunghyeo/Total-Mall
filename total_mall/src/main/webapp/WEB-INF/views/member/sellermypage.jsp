<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업회원 마이페이지</title>
	<link rel="stylesheet" href="../resources/css/Member/seller.css">
	<script src="../resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="../resources/js/Member/seller_mypage.js"></script>
  
</head>
<body>
    <%@ include file="../Main/Header2.jsp" %>
	<section>
		<!-- 전체 화면 wrap -->
		<div id="wrap">
			<div id="seller_nav">
				<ul id="seller_nav_ul">
					<li class="seller_nav_ul_li">홈</li>
					<li class="seller_nav_ul_li">상품등록</li>
					<li class="seller_nav_ul_li">상품관리</li>
					<li class="seller_nav_ul_li">주문관리</li>
					<li class="seller_nav_ul_li">회원설정</li>
					<li class="seller_nav_ul_li">고객문의</li>
					<li class="seller_nav_ul_li">고객센터</li>
				</ul>
			</div>


			<!-- 화면 내용이 변하는 부분: inner_wrap -->
			<div id="inner_wrap">
				<!-- 기업회원 홈 -->

				<%@ include file="sellerhome.jsp" %>

				<!-- 상품등록 전체 페이지 -->

				<!-- 상품관리 -->

				<!-- 판매자 설정 -->


				<!-- 주문관리에 사용할 주문리스트 -->


			</div>
			<!-- 화면 내용이 변하는 부분: inner_wrap -->

		</div>

	</section>
    <%@ include file="../Main/Footer2.jsp" %>
</body>
</html>