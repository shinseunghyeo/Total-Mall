<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

			<!-- 화면 내용이 변하는 부분: inner_wrap -->
			<div id="inner_wrap">
				<!-- 상품등록 전체 페이지 -->
				<div id="write_frm">
					<form name="frm_write" method="post" action="../product/writeProcess.do"
						enctype="multipart/form-data">

						<h1>상품 등록</h1>
						<!-- 상품등록 1 페이지 -->
						<div id="page_wrap">
							<!-- 카테고리 선택 -->

							<!-- 상품등록 필수 입력 양식 1 페이지 -->
							<div id="table_wrap">

								<input type="hidden" name="m_idx" value="${member.m_idx}">

								<h2>필수 입력 양식</h2>
								<table id="tb_first">
									<tbody>
										<tr>
											<th class="th_left">카테고리</th>
											<td colspan="2"><select name="category"
												id="frm_category">
													<option value="" selected>-------------- 카테고리를
														선택하세요 --------------</option>
													<option value="meat">식품 - 고기</option>
													<option value="vegetables">식품 - 야채</option>
													<option value="fruits">식품 - 과일</option>
													<option value="frozen">식품 - 냉동</option>
													<option value="kitchen">홈데코 - 주방</option>
													<option value="curtain">홈데코 - 커튼</option>
													<option value="games">취미 - 게임</option>
													<option value="lego">취미 - 레고</option>
													<option value="petsupplies">취미 - 펫용품</option>
													<option value="dailynecessities">생필품 - 생필품</option>
													<option value="bodyhair">생필품 - 바디헤어</option>
													<option value="men">의류 - 남성</option>
													<option value="women">의류 - 여성</option>
													<option value="education">도서 - 교육</option>
													<option value="novels">도서 - 소설</option>
													<option value="overseas">도서 - 해외</option>
													<option value="living">가구 - 생활</option>
													<option value="bedding">가구 - 침상</option>
													<option value="homeAppliances">가전 - 가전</option>
													<option value="digital">가전 - 디지털</option>
													<option value="soccer">스포츠 - 축구</option>
													<option value="golf">스포츠 - 골프</option>
											</select></td>
										</tr>
										<tr>
											<th class="th_left">노출상품명</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="product_name" id=""></td>
										</tr>
										<tr>
											<th class="th_left">자체 상품코드</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="product_code" id=""></td>
										</tr>
										<tr>
											<th class="th_left">브랜드/제조사</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="brand" id=""></td>
										</tr>
										<tr>
											<th class="th_left">상품 요약설명</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="summary" id=""></td>
										</tr>
										<tr>
											<th class="th_left">상품 상세설명</th>
											<td colspan="2"><textarea name="detail"
													id="detailed_description"></textarea></td>
										</tr>
										<tr>
											<th class="th_left">판매기간</th>
											<td colspan="2"><input type="date" class="input_date"
												name="start_date" id=""><input type="date"
												class="input_date" name="end_date" id=""></td>
										</tr>

										<tr>
											<th class="th_left">대표이미지</th>
											<td colspan="2"><input type="file" class="input_file"
												name="uploadFile" id=""></td>
										</tr>
										<tr>
											<th class="th_left">상세이미지</th>
											<td colspan="2"><input type="file" class="input_file"
												name="uploadFile2" id=""></td>
										</tr>
										<tr>
											<th class="th_left">가격</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="price" id=""></td>
										</tr>
										
										<tr>
											<th class="th_left">할인율 (%)</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="discount_rate" id=""></td>
										</tr>

										<tr>
											<th class="th_left">수량</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="quantity" id=""></td>
										</tr>
									</tbody>

								</table>
								<div class="btn_wrap">
									<input type="reset" class="btn_left" value="취소하기"> <input
										type="submit" class="btn_right" value="등록하기">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>
	</section>

</body>
</html>