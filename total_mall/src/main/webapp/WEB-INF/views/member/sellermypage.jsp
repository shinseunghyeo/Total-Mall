<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업회원 마이페이지</title>
	<link rel="stylesheet" href="../resources/css/product/seller.css">
	<script src="../resources/js/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script type="text/javascript" src="../resources/js/Product/seller_mypage.js"></script>
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
					<li class="seller_nav_ul_li">문의사항</li>
				</ul>
			</div>


			<!-- 화면 내용이 변하는 부분: inner_wrap -->
			<div id="inner_wrap">
				<!-- 기업회원 홈 -->
				<div id="short_cut">

					<div id="first_div">
						<div class="small_box">
							<div class="inner_box">
								<h2>상품등록</h2>
							</div>
						</div>
						<div class="big_box">
							<div class="inner_box">
								<h2>주문/배송</h2>
								<ul>
									<li><a href="#">
											<h2>결제완료</h2> <br>
										<b>10 &gt;</b>
									</a></li>
									<li><a href="#">
											<h2>상품준비중</h2> <br>
										<b>10 &gt;</b>
									</a></li>
									<li><a href="#">
											<h2>배송지시</h2> <br>
										<b>10 &gt;</b>
									</a></li>
									<li><a href="#">
											<h2>배송중</h2> <br>
										<b>10 &gt;</b>
									</a></li>
									<li><a href="#">
											<h2>배송완료</h2> <br>
										<b>10 &gt;</b>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div id="second_div">
						<div class="small_box">
							<div class="inner_box">
								<h2>상품관리</h2>
								<ul>
									<li><a href="#">판매중인 상품 수 <b>10 &gt;</b></a></li>
									<li><a href="#">임시저장 상품 수 <b>10 &gt;</b></a></li>
									<li><a href="#">품절/기한 만료 상품 수 <b>10 &gt;</b></a></li>
								</ul>
							</div>
						</div>
						<div class="small_box">
							<div class="inner_box">
								<h2>취소/교환/반품</h2>
								<ul>
									<li><a href="#">교환 요청 <b>10 &gt;</b></a></li>
									<li><a href="#">취소 요청 <b>10 &gt;</b></a></li>
									<li><a href="#">반품 요청 <b>10 &gt;</b></a></li>
								</ul>
							</div>
						</div>
						<div class="small_box">
							<div class="inner_box">
								<h2>고객문의</h2>
								<ul>
									<li><a href="#">진행중인 문의사항 <b>10 &gt;</b></a></li>
									<li><a href="#">완료된 문의사항 <b>10 &gt;</b></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div id="last_div">
						<div class="big_box">
							<a href="#" class="inner_box">
								<h2>매출/통계</h2>
								<div id="chart">
									<canvas id="myLineChart"></canvas>
								</div>
							</a>
						</div>
						<div class="small_box">
							<div class="inner_box">
								<h2>고객센터</h2>
							</div>
						</div>
					</div>

				</div>



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