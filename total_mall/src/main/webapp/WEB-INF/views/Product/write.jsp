<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업회원 상품등록</title>
<link rel="stylesheet" href="../resources/css/product/seller.css">

</head>
<body>
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
                <!-- 상품등록 전체 페이지 -->
                <div id="write_frm">
				<form name="frm_write" method="post" action="writeProcess.do" enctype="multipart/form-data">

                    <h1>상품 등록</h1>
                    <!-- 상품등록 1 페이지 -->
                    <div id="page_wrap">
                        <!-- 카테고리 선택 -->
                        <div id="ctgr_wrap">

                            <div class="category_select">
                                <h4>카테고리명을 검색하거나 목록에서 선택하세요</h4>
                                <div id="search_wrap"><input type="search" name="" id=""
                                        placeholder="예) 유제품, 육류, 라면"><input type="submit" value="검색" /></div>
                                
                                    <select name="" id="">
                                        <option value="식품" selected>식품</option>
                                        <option value="홈데코">홈데코</option>
                                        <option value="취미">취미</option>
                                        <option value="생필품">생필품</option>
                                        <option value="의류">의류</option>
                                        <option value="도서">도서</option>
                                        <option value="가구">가구</option>
                                        <option value="가전">가전</option>
                                        <option value="스포츠">스포츠</option>
                                    </select>
                                    <select name="" id="">
                                        <option value="고기">고기</option>
                                        <option value="과일" selected>과일</option>
                                        <option value="야채">야채</option>
                                        <option value="냉동">냉동</option>
                                    </select>

                               
                            </div>
                            <div class="category_select">
                                <svg xmlns="http://www.w3.org/2000/svg" width="3rem" height="3rem" fill="currentColor"
                                    class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                        d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708" />
                                    <path fill-rule="evenodd"
                                        d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708" />
                                </svg>
                            </div>
                            <div class="category_select">
                                <h4>카테고리 선택 결과</h4>
                                <input type="text" name="" id="input_category" placeholder="식품 > 과일" disabled>
                                <input type="button" value="카테고리 선택 완료">
                            </div>
                        </div>
                        <!-- 상품등록 필수 입력 양식 1 페이지 -->
                        <div id="table_wrap">

				<input type="hidden" name="m_idx" value="${member.m_idx}" >

                            <h2>필수 입력 양식( 1 / 2 )</h2>
                            <table id="tb_first">
                                <tbody>
                                    <tr>
                                        <th class="th_left">카테고리</th>
                                        <td colspan="2"><input type="text" id="frm_category" name="category_name" ></td>
                                    </tr>
                                    <tr>
                                        <th class="th_left">노출상품명</th>
                                        <td colspan="2"><input type="text" class="input_txt" name="product_name" id=""></td>
                                    </tr>
                                    <tr>
                                        <th class="th_left">자체 상품코드</th>
                                        <td colspan="2"><input type="text" class="input_txt" name="product_code" id=""></td>
                                    </tr>
                                    <tr>
                                        <th class="th_left">브랜드/제조사</th>
                                        <td colspan="2"><input type="text" class="input_txt" name="brand" id=""></td>
                                    </tr>
                                    <tr>
                                        <th class="th_left">상품 요약설명</th>
                                        <td colspan="2"><input type="text" class="input_txt" name="summary" id=""></td>
                                    </tr>
                                    <tr>
                                        <th class="th_left">상품 상세설명</th>
                                        <td colspan="2"><textarea name="detail" id="detailed_description"></textarea></td>
                                    </tr>
                                    <tr>
                                        <th class="th_left">판매기간</th>
                                        <td colspan="2"><input type="date" class="input_date" name="start_date" id=""><input
                                                type="date" class="input_date" name="end_date" id=""></td>
                                    </tr>
                                </tbody>

                            </table>
                            <div class="btn_wrap">
                                <input type="button" class="btn_left" value="임시저장">
                                <input type="button" class="btn_right" value="다음으로">
                            </div>

                        </div>
                    </div>
                    <!-- 상품등록 필수 입력 양식 2 페이지 -->
                    <div id="table_wrap2">

                        <h2>필수 입력 양식( 2 / 2 )</h2>
                        <table id="tb_last">
                            <tbody>
                                <tr>
                                    <th class="th_left">대표이미지</th>
                                    <td colspan="2"><input type="file" class="input_file" name="uploadFile" id=""><input
                                            type="button" value="미리보기"></td>
                                </tr>
                                <tr>
                                    <th class="th_left">상세이미지</th>
                                    <td colspan="2"><input type="file" class="input_file" name="" id=""><input
                                            type="button" value="미리보기"></td>
                                </tr>
                                <tr>
                                    <th class="th_left">가격</th>
                                    <td colspan="2"><input type="text" class="input_txt" name="price" id=""></td>
                                </tr>
                                <tr>
                                    <th class="th_left">판매 단위</th>
                                    <td colspan="2"><input type="text" class="input_txt" name="sales_unit" id=""></td>
                                </tr>
                                <tr>
                                    <th class="th_left">할인율 (%)</th>
                                    <td colspan="2"><input type="text" class="input_txt" name="" id=""></td>
                                </tr>
                               
                                <tr>
                                    <th class="th_left">수량</th>
                                    <td colspan="2"><input type="text" class="input_txt" name="" id=""></td>
                                </tr>
                            </tbody>

                        </table>
                        <div class="btn_wrap">
                            <input type="button" class="btn_left" value="임시저장">
                            <input type="submit" class="btn_right" value="등록하기">
                        </div>

                    </div>
                </form>
                </div>
            </div>

		</div>
	</section>

</body>
</html>