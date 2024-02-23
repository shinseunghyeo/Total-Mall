<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 마이페이지</title>
</head>
<body>
<body>
    <div id="nav_back"></div>
    <div id="buyer_home">
        <div id="home_wrap">
            <img src="../resources/img/Mallimg/마이페이지 광고.png" alt="마이페이지 광고">

            <div id="grade_wrap">
                <h3>${member.member_name} 회원님의 등급은 ${member.grade} 입니다</h3>
                <br>
                <div id="bar">
                <c:choose>
                	<c:when test="${member.grade eq 1}">
	                	<svg class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    </c:when>
	                    <c:when test="${member.grade eq 2}">
	                	<svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    </c:when>
	                    <c:when test="${member.grade eq 3}">
	                	<svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    </c:when>
	                    <c:when test="${member.grade eq 4}">
	                	<svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    </c:when>
	                    <c:when test="${member.grade eq 5}">
	                	<svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg style="opacity: 0" class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    <svg class="svg" xmlns="http://www.w3.org/2000/svg" width="1.5rem" height="1.5rem"
	                        fill="#3498DB" class="bi bi-circle-fill" viewBox="0 0 16 16">
	                        <circle cx="8" cy="8" r="8" />
	                    </svg>
	                    </c:when>
                </c:choose>
                    
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



            <h1>최근 주문내역<sub><small>1개월</small></sub></h1>



            <div class="new_order">
                <div class="new-menu">
                    <div class="p-1">
                        <p></p>
                    </div>
                    <div class="p-2">
                        <p>상품명</p>
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
                <c:forEach begin="1" end="10" varStatus="vs">
                <div class="new-item">
                    <div class="new-img-div">
                        <img src="Mallimg/냉동.png" alt="" class="new-img">
                    </div>
                    <div class="new-name">
                        <p><a href="${pageContext.request.contextPath}/product/item.do?p_idx=${orderList[vs.count-1].p_idx}">${orderList[vs.count-1].product_name} </a></p>
                    </div>
                    <div class="new-date">
                        <p>${orderList[vs.count-1].c_update_time}</p>
                    </div>
                    <div class="new-quantity">
                        <p>${orderList[vs.count-1].c_quantity}</p>
                    </div>
                    <div class="new-price">
                        <p>${orderList[vs.count-1].price}</p>
                    </div>
                    <div class="new-another">
                        <input type="button" value="리뷰 작성" class="new-another-button">
                        <input type="button" value="문의 하기" class="new-another-button">
                        <input type="button" value="주문 상세보기" class="new-another-button">
                    </div>
                </div>
                </c:forEach>
     </div>
        </div>
    </div>

</body>

</body>
</html>