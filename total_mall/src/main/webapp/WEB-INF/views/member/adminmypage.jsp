<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 마이페이지</title>
    <link rel="stylesheet" href="../resources/css/Member/admin.css">
	<script src="../resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="../resources/js/Member/admin_mypage.js"></script>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>

<body>
    <%@ include file="../Main/Header2.jsp" %>
    <section>
        <!-- 전체 화면 wrap -->
        <div id="wrap">
            <div id="admin_nav">
                <ul id="admin_nav_ul">
                    <li class="admin_nav_ul_li">홈</li>
                    <li class="admin_nav_ul_li">회원관리</li>
                    <li class="admin_nav_ul_li">상품관리</li>
                    <li class="admin_nav_ul_li">주문조회</li>
                    <li class="admin_nav_ul_li">매출/통계</li>
                    <li class="admin_nav_ul_li">고객응대</li>
                </ul>
            </div>

           
            <!-- 화면 내용이 변하는 부분: inner_wrap -->
            <div id="inner_wrap">
             <!-- 관리자 홈 -->
            				<%@ include file="adminhome.jsp" %>
            
                <!-- 회원관리 전체 페이지 -->

                <!-- 상품관리 -->
                

                <!-- 이벤트 -->
                

                <!-- 매출/통계 -->
                

                <!-- 고객응대 -->
                

            </div><!-- 화면 내용이 변하는 부분: inner_wrap -->


        </div>




    </section>
        <%@ include file="../Main/Footer2.jsp" %>
</body>
</html>