<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>일반회원 회원가입 페이지</title>
</head>
<style>
    /* ---------BASE--------- */
    body{overflow-x: hidden;  margin: 0;}
    header a {margin-left: 10px; text-decoration: none;color: inherit;transition: color 0.3s;font-weight: bold;}
    header a:hover {color: black;text-decoration: underline;}
    header img{cursor: pointer;}
    header input[type="text"], select {padding: 5px;border: none;border-radius: 5px;margin-right: 10px;}
    /* ---------BASE--------- */
    /* ---------HEADER--------- */
    #ServeMallcoloron{width: 100%; height: 100%; background-color: gray;opacity: 0;z-index: -1;position: fixed;transition: opacity 0.3s;}
    header{width: 100%;margin: auto;}
    #MainLine{width: 1050px;margin: auto; display: flex;height: 100px;align-items: center;}
    #MainLine #KategoryMenu{width: 7%;margin-left: 10px;}
    #MainLine #SiteLogo{width: 10%;}
    #MainLine #SearchContainer{width: 50%; margin: auto;margin-left: 30px;}
    #MainLine #SearchLine{width: 600px; height: 40px; background-color: white;border: 2px solid #3498db;border-radius: 30px;display: flex;align-items: center;}
    #MainLine #SearchLine select{width: 20%;border-radius: 30px;}
    #MainLine #SearchLine input{width: 80%;border-radius: 30px; outline: none;}
    #MainLine #SearchLine img{width: 25px;height: 25px;z-index: 1;padding-right: 10px;}
    #MainLine #UserIcon{width: 20%;text-align: end;margin-right: 25px;}
    #MainLine #UserIcon img{margin-left: 20px;}

    #KategoryBackgroundColor{width: 100%; height: 600px;position: absolute;z-index: -1;}
    #KategoryBackgroundColor2{width: 100%;height: 100%;background-color: gray;z-index: -1;opacity: 0;}
    
    #KategoryLine{width: 1100px; margin: auto;}
    #KategoryLine #Kategory{width: 1100px; height: 388px;margin: auto; position: absolute;z-index: -1;background-color: white;display: flex;opacity: 0;}
    #KategoryLine #KategoryContainer_Main{width: 20%;border: 1px solid gray;display: flex;flex-direction: column;}
    #KategoryLine #KategoryContainer_Main div{width: 100%; height: 100%;background-color: yellowgreen;}
    #KategoryLine #KategoryContainer_Serve{width: 17%;border: 1px solid gray;}
    #KategoryLine #KategoryContainer_Serve div{display: none;}
    #KategoryLine #KategoryLine_backColor{width: 63%;border: 1px solid gray;}

    #NavLine{display: flex;font-size: 17px;height: 35px;width: 1050px;margin: auto;}
    #NavLine #ServiceLine{width: 80%;margin-left: -10px;}
    #NavLine #LogLine{width: 25%;text-align: end;}

    #SearchMenu {position: fixed;top: 0;right: -450px;height: 100%;transition: right 0.3s ease;z-index: 1;display: flex;}
    #SearchMenu button{width: 50px; height: 50px;}
    #SearchMenu div{width: 400px;background-color: white;height: 100%;}
    /* ---------HEADER--------- */
    #section-wrap{
        margin: 0 auto;
        background-color: rgb(224, 224, 224);
        width: 1100px;
        height: 1100px;
        /* height: 50px; */
    }
    #section-1{
        margin: 0 auto;
        
    }
    #section-header{
        padding-top: 50px;
        margin: 0 auto;
        width: 650px;
        display: flex;
        padding-bottom: 20px;
        
    }
    #section-header1{
        width: 75%;
        font-size: 30px;
        font-weight: 800;
    }
    #section-header1 p{
        margin: 0;
    }
    #section-header2{
        display: flex;
    }
    #section-header2 p{
        margin-top: 15px;
        margin-bottom: 0px;
        margin-left: 15px;
        font-weight: 600;
    }
    #section-header2 p:last-child{
        text-decoration: underline;
        color: rgb(52, 152, 219);
    }
    #white-board{
        margin: 0 auto;
        width: 650px;
        background-color: white;
        border-radius: 20px 20px 20px 20px ;
        height: 600px;
    }
    
    #white-board-header{
        display: flex;
    }
    #white-board-header2{
        display: flex;
    }
    #white-board-header div:first-child{
        width: 100%;
        height: 70px;
        background-color: rgb(52, 152, 219);
        text-align: center;
        border-radius: 20px 20px 0 0;
    }
    #white-board-header div p{
        margin: 0;
        line-height: 70px;
        font-size: 16px;
        font-weight: 400;
        color: white;
    }
    #input-top{
        margin-top: 30px;
    }
    .input-text{
        display: flex;
        
    }
    .input-text p{
        margin: 0;
    }
    .input-text1{
        width: 35%;
        height: 40px;
        line-height: 40px;
        font-size: 16px;

    }
    .input-text1 p{
        float: right;
        margin-right: 20px;
    }
    .input-text2{
        width: 55%;
    }
    .input-text2 input{
        border: 1px solid black;
        margin: 0;
        padding: 0;
        height: 35px;
        width: 300px;
    }
    .input-text2 p{
        color: red;
        font-size: 11px;
    }
    #email{
        width: 200px;
    }
    #email2{
        width: 300px;
    }
    #email-button{
        border: none;
        background-color: rgb(52, 152, 219);
        color: white;
        border-radius: 5px 5px 5px 5px;
        height: 38px;
        width: 94px;
        
    }
    #email-button:hover{
        cursor: pointer;
    }
    #address-button{
        border: none;
        background-color: rgb(52, 152, 219);
        color: white;
        border-radius: 5px 5px 5px 5px;
        height: 36.5px;
        width: 100px;
        margin: auto;
        
    }
    #address-button:hover{
        cursor: pointer;
    }
    #address1{
        width: 194px;
    }

    #button input{
        margin-top: 20px;
        margin-left: 700px;
        width: 150px;
        height: 50px;
        background-color: rgb(52, 152, 219);
        border: none;
        border-radius: 15px 15px 15px 15px;
        font-size: 25px;
        font-weight: 800;
        color: white;
    }
    #button input:hover{
        cursor: pointer;
    }
    #section-1{
        display: block;
    }
    
    
</style>
<body>
    <!-- ---------HEADER--------- -->
    <div id="ServeMallcoloron" onclick="ServeMallcolorOff()"></div>
    <header>
        <div id="MainLine">
            <div id="KategoryMenu">
                <img onclick="KategoryMenuOn()" src="Mallimg/카테고리.png" width="40">
            </div>
            <div id="SiteLogo">
                <a href="H_HumanMall.html"><img src="Mallimg/사이트로고.png" width="100"></a>
            </div>
            <div id="SearchContainer">
                <div id="SearchLine">
                    <select>
                        <option value="전체">전체</option>
                        <option value="의류">의류</option>
                        <option value="신발">신발</option>
                    </select><hr>
                    <input type="text" placeholder="검색창">
                    <a href="H_SearchPage.html"><img src="Mallimg/검색.png"></a>
                </div>
            </div>
            <div id="UserIcon">
                <img src="Mallimg/사용자 아이콘.png" width="40">
                <img src="Mallimg/장바구니 아이콘.png" width="40">
                <img onclick="ServeMall()" src="Mallimg/서브 아이콘.png" width="40">
            </div>
        </div>
        <!-- 사이트 높이 -->
        <div id="KategoryBackgroundColor" onclick="KategoryMenuOff()">
            <div style="width: 100%;height: 389px;background-color: white;z-index: -1;"></div>
            <div id="KategoryBackgroundColor2"></div>
        </div>
        <!-- 사이트 높이 -->
        <div id="KategoryLine">
            <div id="Kategory">
                <div id="KategoryContainer_Main">
                    <div id="Kategory1" onmouseover="handleMouseOver('Kategory1','ServeKategory1')">
                        <a href="">식품></a><br>
                    </div>
                    <div id="Kategory2" onmouseover="handleMouseOver('Kategory2','ServeKategory2')">
                        <a href="">홈데코></a><br>
                    </div>
                    <div id="Kategory3" onmouseover="handleMouseOver('Kategory3','ServeKategory3')">
                        <a href="">취미></a><br>
                    </div>
                    <div id="Kategory4" onmouseover="handleMouseOver('Kategory4','ServeKategory4')">
                        <a href="">생필품></a><br>
                    </div>
                    <div id="Kategory5" onmouseover="handleMouseOver('Kategory5','ServeKategory5')">
                        <a href="">의류></a><br>
                    </div>
                    <div id="Kategory6" onmouseover="handleMouseOver('Kategory6','ServeKategory6')">
                        <a href="">도서></a><br>
                    </div>
                    <div id="Kategory7" onmouseover="handleMouseOver('Kategory7','ServeKategory7')">
                        <a href="">가구></a><br>
                    </div>
                    <div id="Kategory8" onmouseover="handleMouseOver('Kategory8','ServeKategory8')">
                        <a href="">가전></a><br>
                    </div>
                    <div id="Kategory9" onmouseover="handleMouseOver('Kategory9','ServeKategory9')">
                        <a href="">스포츠></a><br>
                    </div>
                </div>
                <div id="KategoryContainer_Serve">
                    <div id="ServeKategory1">
                        <a href="">고기</a><br>
                        <a href="H_KategoryPage.html">과일</a><br>
                        <a href="">야채</a><br>
                        <a href="">냉동</a><br>
                    </div>
                    <div id="ServeKategory2">
                        <a href="">주방</a><br>
                        <a href="">생활</a><br>
                    </div>
                    <div id="ServeKategory3">
                        <a href="">펫용품</a><br>
                        <a href="">로봇</a><br>
                        <a href="">게임</a><br>
                    </div>
                    <div id="ServeKategory4">
                        <a href="">생필품</a><br>
                        <a href="">바디헤어</a><br>
                    </div>
                    <div id="ServeKategory5">
                        <a href="">여성</a><br>
                        <a href="">남성</a><br>
                    </div>
                    <div id="ServeKategory6">
                        <a href="">학습/교육</a><br>
                        <a href="">소설</a><br>
                        <a href="">해외</a><br>
                    </div>
                    <div id="ServeKategory7">
                        <a href="">식탁</a><br>
                        <a href="">책상</a><br>
                    </div>
                    <div id="ServeKategory8">
                        <a href="">생활가전</a><br>
                        <a href="">디지털</a><br>
                    </div>
                    <div id="ServeKategory9">
                        <a href="">축구</a><br>
                        <a href="">골프</a><br>
                    </div>
                </div>
                <div id="KategoryLine_backColor"></div>
            </div>
        </div>
        <!-- ---------HEADER CENTER--------- -->
        <nav id="NavLine">
            <div id="ServiceLine">
                <a href="">서비스</a>
                <a href="">서비스</a>
                <a href="">서비스</a>
                <a href="">서비스</a>
                <a href="">서비스</a>
                <a href="">서비스</a>
                <a href="">서비스</a>
                <a href="">서비스</a>
                <a href="">서비스</a>
            </div>
            <div id="LogLine">
                <a href="">로그인</a>
                <a href="">회원가입</a>
                <a href="">고객센터</a>
            </div>
        </nav>
        <div id="SearchMenu">
            <button onclick="ServeMallcolorOff()">닫기</button>
            <div>
                <h2>최근 본 상품</h2>
            </div>
        </div>
    </header>
    <!-- ---------HEADER--------- -->
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
                <form name="frm_join" method="post" action="joinProcess2.do">
                	<input type="hidden" name="categorie" value="${categorie.categorie}" />
                    <div id="white-board">
                        <div id="white-board-header">
                            <div>
                                <p>회원정보를 모두 입력해주셔야 회원가입이 완료가 됩니다</p>
                            </div>
                        </div>
                        <div class="input-text" id="input-top">
                            <div class="input-text1">
                                <p>아이디</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="member_id" id="" placeholder="">
                                <p>아이디는 8~12자로 영어,특수문자,숫자를 포함</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>비밀번호</p>
                            </div>
                            <div class="input-text2">
                                <input type="password" name="member_pw" id="" placeholder="비밀번호는 8~12자">
                                <p>비밀번호는 8~12자로 영어,특수문자,숫자를 포함</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>비밀번호 확인</p>
                            </div>
                            <div class="input-text2">
                                <input type="password" name="member_pw2" id="">
                                <p>비밀번호가 맞지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>이름</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="member_name" id="">
                                <p>이름을 적어주세요</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>휴대폰</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="handphone" id="">
                                <p>알맞은 형식이 아닙니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>이메일</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="email" id="email">
                                <input type="button" value="이메일 인증" id="email-button">
                                <p>이메일 형식이 맞지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>이메일 인증 번호</p>
                            </div>
                            <div class="input-text2">
                                <input type="text" name="" id="email2">
                                <p>이메일 번호가 맞지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1">
                                <p>주소</p>
                            </div>
                            <div class="input-text2">
                                <input type="button" value="우편번호 찾기" id="address-button">
                                <input type="text" name="address1" id="address1">
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1"></div>
                            <div class="input-text2">
                                <input type="text" name="address2" id="" placeholder="주소">
                            </div>
                        </div>
                        <div class="input-text">
                            <div class="input-text1"></div>
                            <div class="input-text2">
                                <input type="text" name="address3" id="" placeholder="상세주소">
                                <p>주소 형식이 맞지 않습니다.</p>
                            </div>
                        </div>
                        <div class="input-text"></div>
                        <div class="input-text"></div>
                    </div>
                    <div id="button">
                        <input type="submit" value="가입">
                    </div>
                </form>
            </div>

        </div>
    </section>
    
</body>
<script>
    
</script>
</html>