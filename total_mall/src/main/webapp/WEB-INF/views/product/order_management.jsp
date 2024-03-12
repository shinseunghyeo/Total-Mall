<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업회원 주문관리페이지</title>
<script src="../resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript"
	src="../resources/js/Member/loadContent.js"></script>
<script type="text/javascript"
	src="../resources/js/Member/loadContent.js"></script>
<script>
	$(document)
			.ready(
					function() {
						$(".order-modify-btn")
								.click(
										function() {
											var formData = new FormData();

											// 선택된 주문 항목들의 데이터를 수집
											$(".order-modify-checkbox:checked")
													.each(
															function() {
																var form = $(
																		this)
																		.closest(
																				'form');
																formData
																		.append(
																				"p_idx",
																				form
																						.find(
																								"input[name='p_idx']")
																						.val());
																formData
																		.append(
																				"payment_or_not",
																				form
																						.find(
																								"select[name='payment_or_not']")
																						.val());
																formData
																		.append(
																				"order_modify_checkbox",
																				$(
																						this)
																						.val());
															});

											if (formData
													.getAll("order_modify_checkbox").length > 0) {
												// AJAX 요청 수행
												$
														.ajax({
															type : "POST",
															url : "../product/oModify.do",
															data : formData,
															processData : false, // 필수: FormData 사용시 false로 설정
															contentType : false, // 필수: FormData 사용시 false로 설정
															traditional : true, // 배열 데이터 전송을 위해 필요
															success : function(
																	response) {
																// 성공 처리
																console
																		.log(response);
																alert("변경되었습니다.");
																loadContent("../member/sellermypage/product/order_management.do");

															},
															error : function(
																	error) {
																// 에러 처리
																console
																		.error(
																				"Ajax request failed: ",
																				error);
															}
														});
											} else {
												alert("선택된 주문이 없습니다.");
											}
										});
					});

	function submitParcel() {
		var formData = $('#parcelForm').serialize();

		$
				.ajax({
					type : "POST",
					url : "parcel.do",
					data : formData,
					success : function(response) {
						console.log("Success:", response);
						loadContent("../member/sellermypage/product/order_management.do");
					},
					error : function(error) {
						console.error("Error:", error);
						// 에러 처리 로직을 여기에 추가할 수 있습니다.
					}
				});
	}
</script>
</head>
<body>


	<div id="order_management">
		<h1>전체 주문내역</h1>
		<div id="order_wrap">




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
						<p>
							<input type="button" value="주문 상태 변경" class="order-modify-btn">
						</p>

					</div>
				</div>
				<c:forEach begin="1" end="10" varStatus="vs">
					<div class="new-item">
						<div class="new-sort">
							${orderList2[vs.count-1].o_idx} <br>
							${p_or_notMap[orderList2[vs.count-1].payment_or_not.toString()]}
						</div>
						<div class="new-img-div">
							<c:if test="${not empty orderList2[vs.count-1].save_file_name1}">
								<img
									src="../resources/uploads/${orderList2[vs.count-1].save_file_name1}"
									alt="${orderList2[vs.count-1].product_name}">
							</c:if>
						</div>
						<div class="new-name">
							<p>
								<a
									href="${pageContext.request.contextPath}/product/item.do?p_idx=${orderList2[vs.count-1].p_idx}">${orderList2[vs.count-1].product_name}
								</a>

							</p>
						</div>
						<div class="new-date">
							<p>
								<small><fmt:formatDate value="${orderList2[vs.count-1].o_update_time}"
									pattern="yyyy-MM-dd HH:mm:ss" /></small>
							</p>
						</div>
						<div class="new-quantity">
							<p>${orderList2[vs.count-1].c_quantity}</p>
						</div>
						<div class="new-price">
							<p>
								<c:if test="${not empty orderList2[vs.count-1].price}">
									<fmt:formatNumber
										value="${(orderList2[vs.count-1].price - (orderList2[vs.count-1].price * (orderList2[vs.count-1].discount_rate * 0.01))) * orderList2[vs.count-1].c_quantity}" />
									<c:out value="${formattedPrice}원" />
								</c:if>
							</p>
						</div>
						<div class="new-another">
							<c:if test="${not empty orderList2[vs.count-1].o_idx}">
							<!-- 주문 상태 변경셀렉트박스 -->
								<form class="order-modify-form">
									<input type="hidden" name="p_idx"
										value="${orderList2[vs.count-1].p_idx}"> <select
										name="payment_or_not" class="payment-status">
										<c:forEach var="entry" items="${p_or_notMap}">
											<c:if test="${entry.key ne '0' and entry.key ne '1'}">
												<c:choose>
													<c:when
														test="${entry.key eq orderList2[vs.count-1].payment_or_not}">
														<option value="${entry.key}" selected>${entry.value}</option>
													</c:when>
													<c:otherwise>
														<option value="${entry.key}">${entry.value}</option>
													</c:otherwise>
												</c:choose>
											</c:if>
										</c:forEach>
									</select>
									<!-- 주문 상태 변경 체크박스 -->
									<div id="o_status">
									<input type="checkbox" name="order_modify_checkbox"
										class="order-modify-checkbox"
										value="${orderList2[vs.count-1].o_idx}"> 주문 변경
									</div>
								</form>
								<form id="parcelForm" action="parcel.do" method="post">
									<input type="hidden" name="p_idx"
										value="${orderList2[vs.count-1].p_idx}"> 
										<div id="parcel_input">
										<select id="parcelCompany"
										name="parcel">
										<c:forEach var="entry" items="${parcel_companyMap}">
											<option value="${entry.key}">${entry.value}</option>
										</c:forEach>
									</select> 
									<input type="text" name="tracking_number" id="tracking_number"
										value="${orderList2[vs.count-1].tracking_number}"> 
										</div>
										<input
										type="submit" value="송장번호 입력" class="new-another-button">
								</form>


							<a href="${pageContext.request.contextPath}/member/ViewOrderDetails.do?o_idx=${orderList2[vs.count-1].o_idx}"><input type="button" value="주문 상세보기" class="new-another-button"></a>

							</c:if>
						</div>
					</div>
				</c:forEach>
			</div>
			<div>
			<%@ include file="sellerorderpaging.jsp" %>
			</div>
		</div>
	</div>

</body>


</html>