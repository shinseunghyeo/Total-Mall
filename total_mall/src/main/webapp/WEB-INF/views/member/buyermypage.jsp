<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<li class="buyer_nav_ul_li"><a href="#"
						class="buyer_nav_ul_li_a"></a>MY PAGE</a></li>
					<li class="buyer_nav_ul_li">전체주문내역</li>
					<li class="buyer_nav_ul_li">배송조회</li>
					<li class="buyer_nav_ul_li">회원정보설정</li>
					<li class="buyer_nav_ul_li">주소록 설정</li>
					<li class="buyer_nav_ul_li" id="hide_li">내가 쓴 글</li>
					<ul id="hide_menu">
						<li>문의/답변</li>
						<li>상품평</li>
					</ul>
					<li class="buyer_nav_ul_li">고객센터</li>
				</ul>
			</div>
			<div id="inner_wrap">
				<div id="nav_back"></div>
				<div id="buyer_home">
					<div id="home_wrap">
						<img src="../resources/img/Mallimg/마이페이지 광고.png" alt="마이페이지 광고">

						<div id="grade_wrap">
							<h3>OOO 회원님의 등급은 ###&&& 입니다</h3>
							<br>
							<div id="bar">
								<svg class="svg" xmlns="http://www.w3.org/2000/svg"
									width="1.5rem" height="1.5rem" fill="#3498DB"
									class="bi bi-circle-fill" viewBox="0 0 16 16">
                                    <circle cx="8" cy="8" r="8" />
                                </svg>
								<svg class="svg" xmlns="http://www.w3.org/2000/svg"
									width="1.5rem" height="1.5rem" fill="#3498DB"
									class="bi bi-circle-fill" viewBox="0 0 16 16">
                                    <circle cx="8" cy="8" r="8" />
                                </svg>
								<svg class="svg" xmlns="http://www.w3.org/2000/svg"
									width="1.5rem" height="1.5rem" fill="#3498DB"
									class="bi bi-circle-fill" viewBox="0 0 16 16">
                                    <circle cx="8" cy="8" r="8" />
                                </svg>
								<svg class="svg" xmlns="http://www.w3.org/2000/svg"
									width="1.5rem" height="1.5rem" fill="#3498DB"
									class="bi bi-circle-fill" viewBox="0 0 16 16">
                                    <circle cx="8" cy="8" r="8" />
                                </svg>
								<svg class="svg" xmlns="http://www.w3.org/2000/svg"
									width="1.5rem" height="1.5rem" fill="#3498DB"
									class="bi bi-circle-fill" viewBox="0 0 16 16">
                                    <circle cx="8" cy="8" r="8" />
                                </svg>
							</div>
							<ul id="grade">
								<li>등급1</li>
								<li>등급2</li>
								<li>등급3</li>
								<li>등급4</li>
								<li>등급5</li>
							</ul>

						</div>
						<p>회원등급 안내: 회원등급은 매월 $$일 기준을 산정되며 두가지 기준이 블라블라블라 설명설명설명</p>



						<h1>
							최근 주문내역<sub><small>1개월</small></sub>
						</h1>



						<div class="new_order">
							<div class="new-menu">
								<div class="p-1">
									<p>상품 사진</p>
								</div>
								<div class="p-2">
									<p>상품 이름</p>
								</div>
								<div class="p-3">
									<p>주문일</p>
								</div>
								<div class="p-4">
									<p>수량</p>
								</div>
								<div class="p-5">
									<p>가격</p>
								</div>
								<div class="p-6">
									<p>기타</p>
								</div>
							</div>
							<div class="new-item">
								<div class="new-img-div">
									<img src="Mallimg/냉동.png" alt="" class="new-img">
								</div>
								<div class="new-name">
									<p>
										<a href="">주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품
											주문상품 주문상품 주문상품</a>
									</p>
								</div>
								<div class="new-date">
									<p>2024년 01월 29일</p>
								</div>
								<div class="new-quantity">
									<p>2개</p>
								</div>
								<div class="new-price">
									<p>30000원</p>
								</div>
								<div class="new-another">
									<input type="button" value="리뷰 작성" class="new-another-button">
									<input type="button" value="문의 하기" class="new-another-button">
									<input type="button" value="주문 상세보기" class="new-another-button">
								</div>
							</div>
							<div class="new-item">
								<div class="new-img-div">
									<img src="Mallimg/냉동.png" alt="" class="new-img">
								</div>
								<div class="new-name">
									<p>
										<a href="">주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품
											주문상품 주문상품 주문상품</a>
									</p>
								</div>
								<div class="new-date">
									<p>2024년 01월 29일</p>
								</div>
								<div class="new-quantity">
									<p>2개</p>
								</div>
								<div class="new-price">
									<p>30000원</p>
								</div>
								<div class="new-another">
									<input type="button" value="리뷰 작성" class="new-another-button">
									<input type="button" value="문의 하기" class="new-another-button">
									<input type="button" value="주문 상세보기" class="new-another-button">
								</div>
							</div>
							<div class="new-item">
								<div class="new-img-div">
									<img src="Mallimg/냉동.png" alt="" class="new-img">
								</div>
								<div class="new-name">
									<p>
										<a href="">주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품
											주문상품 주문상품 주문상품</a>
									</p>
								</div>
								<div class="new-date">
									<p>2024년 01월 29일</p>
								</div>
								<div class="new-quantity">
									<p>2개</p>
								</div>
								<div class="new-price">
									<p>30000원</p>
								</div>
								<div class="new-another">
									<input type="button" value="리뷰 작성" class="new-another-button">
									<input type="button" value="문의 하기" class="new-another-button">
									<input type="button" value="주문 상세보기" class="new-another-button">
								</div>
							</div>
							<div class="new-item">
								<div class="new-img-div">
									<img src="Mallimg/냉동.png" alt="" class="new-img">
								</div>
								<div class="new-name">
									<p>
										<a href="">주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품
											주문상품 주문상품 주문상품</a>
									</p>
								</div>
								<div class="new-date">
									<p>2024년 01월 29일</p>
								</div>
								<div class="new-quantity">
									<p>2개</p>
								</div>
								<div class="new-price">
									<p>30000원</p>
								</div>
								<div class="new-another">
									<input type="button" value="리뷰 작성" class="new-another-button">
									<input type="button" value="문의 하기" class="new-another-button">
									<input type="button" value="주문 상세보기" class="new-another-button">
								</div>
							</div>
							<div class="new-item">
								<div class="new-img-div">
									<img src="Mallimg/냉동.png" alt="" class="new-img">
								</div>
								<div class="new-name">
									<p>
										<a href="">주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품
											주문상품 주문상품 주문상품</a>
									</p>
								</div>
								<div class="new-date">
									<p>2024년 01월 29일</p>
								</div>
								<div class="new-quantity">
									<p>2개</p>
								</div>
								<div class="new-price">
									<p>30000원</p>
								</div>
								<div class="new-another">
									<input type="button" value="리뷰 작성" class="new-another-button">
									<input type="button" value="문의 하기" class="new-another-button">
									<input type="button" value="주문 상세보기" class="new-another-button">
								</div>
							</div>
							<div class="new-item">
								<div class="new-img-div">
									<img src="Mallimg/냉동.png" alt="" class="new-img">
								</div>
								<div class="new-name">
									<p>
										<a href="">주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품
											주문상품 주문상품 주문상품</a>
									</p>
								</div>
								<div class="new-date">
									<p>2024년 01월 29일</p>
								</div>
								<div class="new-quantity">
									<p>2개</p>
								</div>
								<div class="new-price">
									<p>30000원</p>
								</div>
								<div class="new-another">
									<input type="button" value="리뷰 작성" class="new-another-button">
									<input type="button" value="문의 하기" class="new-another-button">
									<input type="button" value="주문 상세보기" class="new-another-button">
								</div>
							</div>
							<div class="new-item">
								<div class="new-img-div">
									<img src="Mallimg/냉동.png" alt="" class="new-img">
								</div>
								<div class="new-name">
									<p>
										<a href="">주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품
											주문상품 주문상품 주문상품</a>
									</p>
								</div>
								<div class="new-date">
									<p>2024년 01월 29일</p>
								</div>
								<div class="new-quantity">
									<p>2개</p>
								</div>
								<div class="new-price">
									<p>30000원</p>
								</div>
								<div class="new-another">
									<input type="button" value="리뷰 작성" class="new-another-button">
									<input type="button" value="문의 하기" class="new-another-button">
									<input type="button" value="주문 상세보기" class="new-another-button">
								</div>
							</div>
							<div class="new-item">
								<div class="new-img-div">
									<img src="Mallimg/냉동.png" alt="" class="new-img">
								</div>
								<div class="new-name">
									<p>
										<a href="">주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품 주문상품
											주문상품 주문상품 주문상품</a>
									</p>
								</div>
								<div class="new-date">
									<p>2024년 01월 29일</p>
								</div>
								<div class="new-quantity">
									<p>2개</p>
								</div>
								<div class="new-price">
									<p>30000원</p>
								</div>
								<div class="new-another">
									<input type="button" value="리뷰 작성" class="new-another-button">
									<input type="button" value="문의 하기" class="new-another-button">
									<input type="button" value="주문 상세보기" class="new-another-button">
								</div>
							</div>
						</div>
					</div>
				</div>


			</div>







		</div>




	</section>

	<%@ include file="../Main/Footer2.jsp"%>
</body>
</html>