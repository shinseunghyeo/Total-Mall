<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 홈 페이지</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script type="text/javascript" src="../resources/js/Member/admin_mypage.js"></script>
</head>
<body>
            <div id="short_cut">

                <div id="first_div">
                    <div class="small_box">
                        <div class="inner_box">
                            <h2>관리자님 </h2>
                            <div id="current_wrap">
                            <p>지금은</p>
                            <h2 id="currentDate"></h2>
                            <h2 id="currentTime"></h2><p>입니다</p>
                        </div>
                        </div>
                    </div>
                    <div class="big_box">
                        <div class="inner_box">
                            <h2>공지사항</h2>
                            <div id="notice_table">
                                <div id="notice_btn">
                                    <input type="button" value="전체보기">
                                    <input type="button" value="글쓰기">
                                </div>

                                <table>
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>109</td>
                                            <td class="title"><a href="#">번호 누르면 회원 정보 나타남</a></td>
                                            <td>탈퇴</td>
                                            <td>2023-11-02</td>
                                        </tr>
                                        <tr>
                                            <td>109</td>
                                            <td class="title"><a href="#">번호 누르면 회원 정보 나타남</a></td>
                                            <td>탈퇴</td>
                                            <td>2023-11-02</td>
                                        </tr>
                                        <tr>
                                            <td>109</td>
                                            <td class="title"><a href="#">번호 누르면 회원 정보 나타남</a></td>
                                            <td>탈퇴</td>
                                            <td>2023-11-02</td>
                                        </tr>
                                        <tr>
                                            <td>109</td>
                                            <td class="title"><a href="#">번호 누르면 회원 정보 나타남</a></td>
                                            <td>탈퇴</td>
                                            <td>2023-11-02</td>
                                        </tr>
                                        <tr>
                                            <td>109</td>
                                            <td class="title"><a href="#">번호 누르면 회원 정보 나타남</a></td>
                                            <td>탈퇴</td>
                                            <td>2023-11-02</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
                <div id="second_div">
                    <div class="small_box">
                        <div class="inner_box">
                            <h2>상품관리</h2>
                            <ul>
                                <li><a href="#">오늘 등록된 상품 수 <b>10 &gt;</b></a></li>
                                <li><a href="#">별점 낮은 상품 수 <b>10 &gt;</b></a></li>
                                <li><a href="#">품절/기한 만료 상품 수 <b>10 &gt;</b></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="big_box">
                        <div class="inner_box">
                            <h2>고객센터</h2>
                            <div id="cs_table">
                                <div id="cs_btn">
                                    <input type="button" value="기업회원">
                                    <input type="button" value="개인회원">
                                </div>

                                <table>
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>분류</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>109</td>
                                            <td>개인회원</td>
                                            <td class="title"><a href="#">번호 누르면 회원 정보 나타남</a></td>
                                            <td>탈퇴</td>
                                            <td>2023-11-02</td>
                                        </tr>
                                        <tr>
                                            <td>109</td>
                                            <td>개인회원</td>
                                            <td class="title"><a href="#">번호 누르면 회원 정보 나타남</a></td>
                                            <td>탈퇴</td>
                                            <td>2023-11-02</td>
                                        </tr>
                                        <tr>
                                            <td>109</td>
                                            <td>개인회원</td>
                                            <td class="title"><a href="#">번호 누르면 회원 정보 나타남</a></td>
                                            <td>탈퇴</td>
                                            <td>2023-11-02</td>
                                        </tr>
                                        <tr>
                                            <td>109</td>
                                            <td>기업회원</td>
                                            <td class="title"><a href="#">번호 누르면 회원 정보 나타남</a></td>
                                            <td>탈퇴</td>
                                            <td>2023-11-02</td>
                                        </tr>
                                        <tr>
                                            <td>109</td>
                                            <td>기업회원</td>
                                            <td class="title"><a href="#">번호 누르면 회원 정보 나타남</a></td>
                                            <td>탈퇴</td>
                                            <td>2023-11-02</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="last_div">
                    <div class="small_box">
                        <div class="inner_box">
                            <h2>이벤트</h2>
                            <ul>
                                <li><a href="#">진행중인 이벤트 <b>10 &gt;</b></a></li>
                                <li><a href="#">완료된 이벤트 <b>10 &gt;</b></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="big_box">
                        <a href="#" class="inner_box">
                            <h2>매출/통계</h2>
                            <div id="chart"><canvas id="myLineChart"></canvas></div>
                        </a>
                    </div>
                </div>

            </div>


</body>
</html>