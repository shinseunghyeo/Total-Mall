<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업회원 상품수정</title>

</head>
<body>
	<fmt:formatDate value="${product.start_date}" pattern="yyyy-MM-dd"
		var="formattedStartDate" />
	<fmt:formatDate value="${product.end_date}" pattern="yyyy-MM-dd"
		var="formattedEndDate" />



				<div id="write_frm">
					<form name="frm_write" method="post" action="modifyProcess.do"
						enctype="multipart/form-data">

						<h1>상품 수정</h1>
						<!-- 상품등록 1 페이지 -->
						<div id="page_wrap">
							<!-- 카테고리 선택 -->

							<!-- 상품등록 필수 입력 양식 1 페이지 -->
							<div id="table_wrap">

								<input type="hidden" name="m_idx" value="${member.m_idx}">
								<input type="hidden" name="p_idx" value="${product.p_idx}">

								<h2>필수 입력 양식</h2>
								<table id="tb_first">
									<tbody>
										<tr>
											<th class="th_left">카테고리</th>
											<td colspan="2"><select name="category"
												id="frm_category">
													<c:forEach var="entry" items="${categoryMap}">
														<c:choose>
															<c:when test="${entry.key eq product.category}">
																<option value="${entry.key}" selected>${entry.value}</option>
															</c:when>
															<c:otherwise>
																<option value="${entry.key}">${entry.value}</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
											</select></td>
										</tr>
										<tr>
											<th class="th_left">노출상품명</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="product_name" value="${product.product_name}" id=""></td>
										</tr>
										<tr>
											<th class="th_left">자체 상품코드</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="product_code" value="${product.product_code}" id=""></td>
										</tr>
										<tr>
											<th class="th_left">브랜드/제조사</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="brand" value="${product.brand}" id=""></td>
										</tr>
										<tr>
											<th class="th_left">상품 요약설명</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="summary" value="${product.summary}" id=""></td>
										</tr>
										<tr>
											<th class="th_left">상품 상세설명</th>
											<td colspan="2"><textarea name="detail"
													id="detailed_description">${product.detail}</textarea></td>
										</tr>
										<tr>
											<th class="th_left">판매기간</th>
											<td colspan="2"><input type="date" class="input_date"
												name="start_date" id="" value="${formattedStartDate}">
												<input type="date" class="input_date" name="end_date" id=""
												value="${formattedEndDate}"></td>
										</tr>

										<tr>
											<th class="th_left">대표이미지</th>
											<td colspan="2"><span>&nbsp;&nbsp;${product.origin_file_name1}</span>
												<input type="file" class="input_file" name="uploadFile"
												id="">
												<p>
													<sup>&nbsp;&nbsp;*파일을 선택하면 기존 파일이 새 파일로 교체됩니다*</sup>
												</p></td>
										</tr>
										<tr>
											<th class="th_left">상세이미지</th>
											<td colspan="2"><span>&nbsp;&nbsp;${product.origin_file_name2}</span>
												<input type="file" class="input_file" name="uploadFile2"
												id="">
												<p>
													<sup>&nbsp;&nbsp;*파일을 선택하면 기존 파일이 새 파일로 교체됩니다*</sup>
												</p></td>
										</tr>
										<tr>
											<th class="th_left">가격</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="price" id="" value="${product.price}"></td>
										</tr>

										<tr>
											<th class="th_left">할인율 (%)</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="discount_rate" id="" value="${product.discount_rate}"></td>
										</tr>

										<tr>
											<th class="th_left">수량</th>
											<td colspan="2"><input type="text" class="input_txt"
												name="quantity" id="" value="${product.quantity}"></td>
										</tr>
									</tbody>

								</table>
								<div class="btn_wrap">
									<input type="reset" class="btn_left" value="취소하기"> <input
										type="submit" class="btn_right" value="수정하기">
								</div>
							</div>
						</div>
					</form>
				</div>


</body>
</html>