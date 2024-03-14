<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 주문조회페이지</title>
<script src="../resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../resources/js/Member/loadContent.js"></script>
   <script>
        $(document).ready(function() {
            $(".order-modify-btn").click(function() {
                var formData = new FormData();

                // 선택된 주문 항목들의 데이터를 수집
                $(".order-modify-checkbox:checked").each(function() {
                    var form = $(this).closest('form');
                    formData.append("p_idx", form.find("input[name='p_idx']").val());
                    formData.append("payment_or_not", form.find("select[name='payment_or_not']").val());
                    formData.append("order_modify_checkbox", $(this).val());
                });

                if (formData.getAll("order_modify_checkbox").length > 0) {
                    // AJAX 요청 수행
                    $.ajax({
                        type: "POST",
                        url: "../product/oModify.do",
                        data: formData,
                        processData: false,  // 필수: FormData 사용시 false로 설정
                        contentType: false,  // 필수: FormData 사용시 false로 설정
                        traditional: true,  // 배열 데이터 전송을 위해 필요
                        success: function(response) {
                            // 성공 처리
                            console.log(response);
                            alert("변경되었습니다.");
                            loadContent("../member/adminmypage/product/allorderlist.do");
                            
                        },
                        error: function(error) {
                            // 에러 처리
                            console.error("Ajax request failed: ", error);
                        }
                    });
                } else {
                    alert("선택된 주문이 없습니다.");
                }
            });
        });
        
        function openNewWindow(url) {
            window.open(url, '_blank', 'width=1110, height=600');
        }

    </script>


</head>
<body>
<body>
	<div id="order_management">
		<h1>전체 주문내역</h1>
		<div id="order_wrap">





			<div class="new_order">
			총 ${pageNav.totalRows} 개 | ${pageNav.total_pageNum}페이지
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
						<p><input type="button" value="주문 상태 변경" class="order-modify-btn new-another-button"></p>
					</div>
				</div>
				<c:forEach begin="1" end="${allorderList.size()}" varStatus="vs">
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
								<small><fmt:formatDate
									value="${allorderList[vs.count-1].o_update_time}"
									pattern="yyyy-MM-dd HH:mm:ss" /></small>
							</p>
						</div>
						<div class="new-quantity">
							<p>${allorderList[vs.count-1].c_quantity}</p>
						</div>
						<div class="new-price">
							<p>
								<c:if test="${not empty allorderList[vs.count-1].price}">
									<fmt:formatNumber
										value="${(allorderList[vs.count-1].price - (allorderList[vs.count-1].price * (allorderList[vs.count-1].discount_rate * 0.01))) * allorderList[vs.count-1].c_quantity}"
										pattern="#,##0" var="formattedPrice" />
									<c:out value="${formattedPrice}원" />
								</c:if>
							</p>
						</div>
						<div class="new-another">
							<c:if test="${not empty allorderList[vs.count-1].o_idx}">
                                <form class="order-modify-form">
                                    <input type="hidden" name="p_idx" value="${allorderList[vs.count-1].p_idx}">
                                   
                                    <select name="payment_or_not" class="payment-status">
                                        <c:forEach var="entry" items="${p_or_notMap}">
                                        <c:if test="${entry.key eq '11' or entry.key eq '12' or entry.key eq '13'}">
                                            <c:choose>
                                                <c:when test="${entry.key eq allorderList[vs.count-1].payment_or_not}">
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
                                    <input type="checkbox" name="order_modify_checkbox" class="order-modify-checkbox" value="${allorderList[vs.count-1].o_idx}">
                                     선택 
                               </form>
<input type="button" value="주문 상세보기" class="new-another-button" onclick="openNewWindow('${pageContext.request.contextPath}/member/ViewOrderDetails.do?o_idx=${allorderList[vs.count-1].o_idx}')"></c:if>
						</div>
					</div>

				</c:forEach>


			</div>
			<div id="td-page-nav">
			<%@ include file="allorderpaging.jsp" %>
			</div>
		</div>
	</div>

</body>

</body>
</html>