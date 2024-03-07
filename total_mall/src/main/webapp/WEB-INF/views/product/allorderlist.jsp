<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 주문조회페이지</title>

</head>
<body>
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
						<p>기타</p>
					</div>
				</div>
				<c:forEach begin="1" end="10" varStatus="vs">
					<div class="new-item">
						<div class="new-sort">
							${allorderList[vs.count-1].o_idx}<br>
							${p_or_notMap[allorderList[vs.count-1].payment_or_not.toString()]}
						</div>
						<div class="new-img-div">
							<c:if test="${not empty allorderList[vs.count-1].save_file_name1}">
								<img
									src="../resources/uploads/${allorderList[vs.count-1].save_file_name1}"
									alt="${allorderList[vs.count-1].product_name}">
							</c:if>
						</div>
						<div class="new-name">
							<p>
								<a
									href="${pageContext.request.contextPath}/product/item.do?p_idx=${allorderList[vs.count-1].p_idx}">${allorderList[vs.count-1].product_name}

								</a>
							</p>
						</div>
						<div class="new-date">
							<p>
								<fmt:formatDate
									value="${allorderList[vs.count-1].o_update_time}"
									pattern="yyyy-MM-dd HH:mm:ss" />
							</p>
						</div>
						<div class="new-quantity">
							<p>${allorderList[vs.count-1].c_quantity}</p>
						</div>
						<div class="new-price">
							<p>
								<c:if test="${not empty allorderList[vs.count-1].price}">
									<fmt:formatNumber
										value="${allorderList[vs.count-1].price * allorderList[vs.count-1].c_quantity}"
										pattern="#,##0" var="formattedPrice" />
									<c:out value="${formattedPrice}원" />
								</c:if>
							</p>
						</div>
						<div class="new-another">
							<c:if test="${not empty allorderList[vs.count-1].o_idx}">





								<input type="button" value="주문상태 변경" class="new-another-button">
								<input type="button" value="주문 상세보기" class="new-another-button">
							</c:if>
						</div>
					</div>

				</c:forEach>


			</div>
		</div>
	</div>

</body>

</body>
</html>