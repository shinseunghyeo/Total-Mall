<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 페이지1</title>
    <link rel="stylesheet" href="../resources/css/Member/join.css">
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="../resources/js/Member/join.js"></script>
</head>

<body>
    <%@ include file="../Main/Header2.jsp" %>
    <section>
        <div id="section-wrap">
            <div id="section-1">
                <div id="section-header">
                    <div id="section-header1">
                        <p class="bold">회원가입</p>
                    </div>
                    <div id="section-header2">
                        <p class="bold">1 가입</p>
                        <p class="bold">2 정보입력</p>
                    </div>
                </div>
                <form name="frm_join" method="post" action="buyerJoinProcess1.do" id="myForm">
                	
                    <div id="white-board">
                        <div id="white-board-header">
                            <div>
                                <p onclick="userTypeChange('buyer')" class="bold">개인 회원</p>
                            </div>
                            <div>
                                <p onclick="userTypeChange('seller')" class="bold">기업 회원</p>
                            </div>
                        </div>
                        <div id="check-all">
                            <input type="checkbox" name="" id="checkAll" class="checkbox-design-All" >
                            <p class="bold">모두 동의하기</p>
                        </div>
                        <div id="check-box">
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>구매회원 이용약관</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>전자금융 서비스 이용약관</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>개인정보 수집 및 이용</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>만 14세 이상입니다.</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>개인정보 제 3자 제공 동의</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design">
                                <p>혜택 알림 이메일, 문자 앱 푸시</p>
                                <p>(필수)</p>
                            </div>
                        </div>
                        <div id="categorie-header">
                            <p class="bold">관심 카테고리</p>
                        </div>
                        <div id="categorie-header2">
                            <p class="bold">(3개 선택 필수)</p>
                        </div>
                        <div id="gray-board">
                            <div class="check-categorie">
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="food">
                                    <p>식품</p>
                                </div>
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="homeDeco">
                                    <p>홈데코</p>
                                </div>
                            </div>
                            <div class="check-categorie">
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="hobby">
                                    <p>취미</p>
                                </div>
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="dailyNecessity">
                                    <p>생필품</p>
                                </div>
                            </div>
                            <div class="check-categorie">
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="clothes">
                                    <p>의류</p>
                                </div>
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="book">
                                    <p>도서</p>
                                </div>
                            </div>
                            <div class="check-categorie">
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="furniture">
                                    <p>가구</p>
                                </div>
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="homeAppliances">
                                    <p>가전</p>
                                </div>
                            </div>
                            <div class="check-categorie">
                                <div>
                                    <input type="checkbox" name="categorie" id="" class="checkbox-categorie" value="sports">
                                    <p>스포츠</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="button">
                        <input type="submit" value="다음" class="bold">
                    </div>
                </form>
            </div>
            <div id="section-2">
                <div id="section-header">
                    <div id="section-header1">
                        <p class="bold">회원가입</p>
                    </div>
                    <div id="section-header2">
                        <p class="bold">1 가입</p>
                        <p class="bold">2 정보입력</p>
                    </div>
                </div>
                <form name="frm_join2" method="post" action="sellerJoinProcess1.do" id="myForm2">
                    <div id="white-board2">
                        <div id="white-board-header2">
                            <div>
                                <p onclick="userTypeChange('buyer')" class="bold">개인 회원</p>
                            </div>
                            <div>
                                <p onclick="userTypeChange('seller')" class="bold">기업 회원</p>
                            </div>
                        </div>
                        <div id="check-all">
                            <input type="checkbox" name="" id="checkAll2">
                            <p class="bold">모두 동의하기</p>
                        </div>
                        <div id="check-box2">
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>판매회원 이용약관</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>전자금융 서비스 이용약관</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>개인정보 수집 및 이용</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>만 14세 이상입니다.</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>개인정보 제 3자 제공 동의</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>혜택 알림 이메일, 문자 앱 푸시</p>
                                <p>(필수)</p>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" name="" id="" class="checkbox-design2">
                                <p>Total Mall 지원 할인동의</p>
                                <p>(필수)</p>
                            </div>
                        </div>
                    </div>
                    <div id="button">
                        <input type="submit" value="다음" class="bold">
                    </div>
                </form>
            </div>
        </div>
    </section>
    <%@ include file="../Main/Footer2.jsp" %>
</body>

</html>