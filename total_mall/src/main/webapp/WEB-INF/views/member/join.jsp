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
</head>

<body>
    <%@ include file="../Main/Header2.jsp" %>
    <section>
        <div id="section-wrap">
            <div id="section-1">
                <div id="section-header">
                    <div id="section-header1">
                        <p>회원가입</p>
                    </div>
                    <div id="section-header2">
                        <p>1 가입</p>
                        <p>2 정보입력</p>
                    </div>
                </div>
                <form name="frm_join" method="post" action="buyerJoinProcess1.do" id="myForm">
                	
                    <div id="white-board">
                        <div id="white-board-header">
                            <div>
                                <p onclick="userTypeChange('buyer')">개인 회원</p>
                            </div>
                            <div>
                                <p onclick="userTypeChange('seller')">기업 회원</p>
                            </div>
                        </div>
                        <div id="check-all">
                            <input type="checkbox" name="" id="checkAll" class="checkbox-design-All" >
                            <p>모두 동의하기</p>
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
                            <p>관심 카테고리</p>
                        </div>
                        <div id="categorie-header2">
                            <p>(3개 선택 필수)</p>
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
                        <input type="submit" value="다음">
                    </div>
                </form>
            </div>
            <div id="section-2">
                <div id="section-header">
                    <div id="section-header1">
                        <p>회원가입</p>
                    </div>
                    <div id="section-header2">
                        <p>1 가입</p>
                        <p>2 정보입력</p>
                    </div>
                </div>
                <form name="frm_join2" method="post" action="sellerJoinProcess1.do" id="myForm2">
                    <div id="white-board2">
                        <div id="white-board-header2">
                            <div>
                                <p onclick="userTypeChange('buyer')">개인 회원</p>
                            </div>
                            <div>
                                <p onclick="userTypeChange('seller')">기업 회원</p>
                            </div>
                        </div>
                        <div id="check-all">
                            <input type="checkbox" name="" id="checkAll2">
                            <p>모두 동의하기</p>
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
                        <input type="submit" value="다음">
                    </div>
                </form>
            </div>
        </div>
    </section>
    
</body>
<script>
    /* 구매자/판매자 스크립트로 구분 */
    function userTypeChange(userType){
        var buyerSection = document.getElementById("section-1");
        var sellerSection = document.getElementById("section-2");
        var whiteBoard = document.getElementById("white-board");
        var whiteBoard2 = document.getElementById("white-board2");
        var checkBox = document.getElementById("check-box");
        var sectionWrap = document.getElementById("section-wrap");

        if(userType == "buyer"){
            buyerSection.style.display = "block";
            sellerSection.style.display ="none";
            whiteBoard.style.height = "900px";
            whiteBoard2.style.height = "500px";
            checkBox.style.borderBottom = "1px solid gray";
            sectionWrap.style.height = "1100px";
            
        } else if(userType == "seller") {
            buyerSection.style.display = "none";
            sellerSection.style.display ="block";
            whiteBoard.style.height = "900px";
            whiteBoard2.style.height = "500px";
            checkBox.style.borderBottom = "none";
            sectionWrap.style.height = "800px";
        }
    }
    /* 구매자/판매자 스크립트로 구분 */
    /* 모두 체크하기 스크립트 */
    document.querySelector('#checkAll');

    checkAll.addEventListener('click', function(){

        const isChecked = checkAll.checked;

        if(isChecked){
            const checkboxes = document.querySelectorAll('.checkbox-design');

            for(const checkbox of checkboxes){
                checkbox.checked = true;
            }
        }

        else{
            const checkboxes = document.querySelectorAll('.checkbox-design');
            for(const checkbox of checkboxes){
                checkbox.checked = false;
            }
        }
    })

    document.querySelector('#checkAll2');

    checkAll2.addEventListener('click', function(){

        const isChecked = checkAll2.checked;

        if(isChecked){
            const checkboxes = document.querySelectorAll('.checkbox-design2');

            for(const checkbox of checkboxes){
                checkbox.checked = true;
            }
        }

        else{
            const checkboxes = document.querySelectorAll('.checkbox-design2');
            for(const checkbox of checkboxes){
                checkbox.checked = false;
            }
        }
    })

    /* 모두 체크하기 스크립트 */
    /* 개인회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    function checkAgreement() {
        const agreementCheckboxes = $('.checkbox-design');
        let isAllAgreed = true;

        agreementCheckboxes.each(function () {
            if (!$(this).prop('checked')) {
                isAllAgreed = false;
                return false; // 하나라도 체크되어 있지 않으면 종료
            }
        });

        return isAllAgreed;
    }
    $('#myForm').submit(function (e) {
        if (!checkAgreement()) {
            alert('이용약관에 모두 동의해야 합니다.');
            e.preventDefault(); // 폼 제출을 중단합니다.
        }
    });

    /* 개인회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    /* 기업회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    function checkAgreement2() {
        const agreementCheckboxes = $('.checkbox-design2');
        let isAllAgreed = true;

        agreementCheckboxes.each(function () {
            if (!$(this).prop('checked')) {
                isAllAgreed = false;
                return false; // 하나라도 체크되어 있지 않으면 종료
            }
        });

        return isAllAgreed;
    }
    $('#myForm2').submit(function (e) {
        if (!checkAgreement2()) {
            alert('이용약관에 모두 동의해야 합니다.');
            e.preventDefault(); // 폼 제출을 중단합니다.
        }
    });

    /* 기업회원 이용약관 동의하지 않으면 안넘어가는 스크립트 */
    /* 카테고리 3개만 클릭하기 스크립트 */
        $(document).ready(function(){
            var maxAllowed = 3;

            $('.checkbox-categorie').on('change', function() {
                var count = $('.checkbox-categorie:checked').length;

                if (count > maxAllowed) {
                    $(this).prop('checked', false);
                    alert('최대 3개까지만 선택 가능합니다.');
                }
            });

            $('#myForm').submit(function() {
                var count = $('.checkbox-categorie:checked').length;

                if (count !== maxAllowed) {
                    alert('카테고리는 3개를 선택해야 합니다.');
                    return false; // 폼 전송을 중단합니다.
                }
            });
        });
    /* 카테고리 3개만 클릭하기 스크립트 */
</script>
</html>