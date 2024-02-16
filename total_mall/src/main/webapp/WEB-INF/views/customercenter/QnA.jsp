<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/customercenter/QnA.css">
</head>
<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <!-- ---------고객센터--------- -->
    <div id="CustomerMain">
        <div id="CustomerMainbox">
            <div id="CustomerTitle">
                고객센터
            </div>
            <div id="CustomerContent">
                <input type="text">
            </div>
            <div id="CustomerNum">
                <div>
                    고객센터<span> 0000-0000</span> 문의<br>
                    365일, 24시간 운영
                </div>
            </div>
        </div>
    </div>
    <div id="CustomerList"><br>
        <div id="CustomerListbox">
            <a href="${pageContext.request.contextPath}/customercenter/inquiry.do">문의내역</a>
            <a href="${pageContext.request.contextPath}/customercenter/QnA.do" style="color: coral;">자주 묻는 질문</a>
            <a href="${pageContext.request.contextPath}/customercenter/voc.do">문의하기</a>
            <a href="${pageContext.request.contextPath}/customercenter/notice.do?service">토탈소식</a>
        </div><hr style="opacity: 0.45;">
    </div>
    <!-- ---------자주묻는질문--------- -->
    <div id="QnALine">
        <div id="QnALog">
            <c:choose>
            	<c:when test="${not empty member }">
	        	    <span>${member.member_name}님 환영합니다! 무엇을 도와드릴까요?</span>
            	</c:when>
            	<c:otherwise>
    		        <span>로그인하시면 더욱 편리하게 도움을 받으실 수 있습니다</span>
		            <a href="${pageContext.request.contextPath}/member/login.do">로그인</a>
            	</c:otherwise>
            </c:choose>
        </div>
        <hr class="ListLine">
        <details>
            <summary>사이트에 가입하는 방법은 무엇인가요?<span class="details-toggle"></span></summary>
            <p>가입하려면 홈페이지의 회원가입 페이지로 이동하여 필요한 정보를 입력하고 가입 버튼을 클릭하면 됩니다.</p>
            <p>가입 시 입력하는 정보는 보통 이름, 이메일, 비밀번호 등이며, 가입 절차는 간단하고 빠릅니다.</p>
            <p>가입 완료 후에는 회원 전용 혜택 및 서비스를 이용할 수 있습니다.</p>
        </details><hr class="ListLine">
        <details>
            <summary>비밀번호를 잊어버렸을 때 대처 방법은 무엇인가요?<span class="details-toggle"></span></summary>
            <p>로그인 페이지에서 '비밀번호를 잊으셨나요?' 링크를 클릭하여 비밀번호를 재설정할 수 있는 페이지로 이동합니다.</p>
            <p>재설정 링크를 받은 이메일을 확인하고, 안전한 새 비밀번호를 설정하여 계정에 다시 액세스할 수 있습니다.</p>
            <p>보안을 위해 비밀번호는 정기적으로 변경하는 것이 좋습니다.</p>
        </details><hr class="ListLine">
    
        <details>
            <summary>회원정보를 변경하고 싶은데 어떻게 해야 하나요?<span class="details-toggle"></span></summary>
            <p>회원정보를 변경하려면 로그인한 후에 내 계정 설정 페이지로 이동하여 원하는 정보를 수정하고 저장합니다.</p>
            <p>주로 변경할 수 있는 정보로는 이메일 주소, 배송지 주소, 연락처 등이 있습니다.</p>
            <p>변경된 정보는 즉시 적용되며, 필요에 따라 언제든지 업데이트할 수 있습니다.</p>
        </details><hr class="ListLine">
        
        <details>
            <summary>주문한 상품의 배송 상태를 어떻게 확인하나요?<span class="details-toggle"></span></summary>
            <p>마이 페이지에서 주문 내역을 확인하면 배송 상태를 확인할 수 있습니다.</p>
            <p>배송 상태는 주문 준비 중, 배송 중, 배송 완료 등으로 표시됩니다.</p>
            <p>또한, 주문번호를 통해 배송 추적 서비스를 이용하여 실시간으로 상품의 위치를 확인할 수도 있습니다.</p>
        </details><hr class="ListLine">
        
        <details>
            <summary>상품을 반품하고 싶은데 어떻게 해야 하나요?<span class="details-toggle"></span></summary>
            <p>반품 절차에 대한 자세한 정보는 고객센터 페이지에서 확인할 수 있습니다.</p>
            <p>보통은 고객센터로 연락하여 반품 신청을 하거나, 온라인으로 반품 신청 양식을 작성하여 제출합니다.</p>
            <p>상품 반품 시에는 반품 사유와 함께 상품의 상태를 확인하여 교환 또는 환불 절차가 진행됩니다.</p>
        </details><hr class="ListLine">
        
        <details>
            <summary>결제 수단으로 사용할 수 있는 것은 무엇인가요?<span class="details-toggle"></span></summary>
            <p>신용카드, 체크카드, 계좌이체, 휴대폰 결제 등 다양한 결제 수단을 제공하고 있습니다.</p>
            <p>또한, 일부 사이트에서는 포인트, 쿠폰 등도 결제 수단으로 활용할 수 있습니다.</p>
            <p>결제 시에는 보안을 위해 안전한 결제 방법을 선택하여 이용할 수 있습니다.</p>
        </details><hr class="ListLine">
        
        <details>
            <summary>상품 리뷰를 작성하려면 어떻게 해야 하나요?<span class="details-toggle"></span></summary>
            <p>상품 상세 페이지에서 리뷰를 작성할 수 있는 링크를 찾을 수 있습니다.</p>
            <p>리뷰를 작성할 때에는 상품에 대한 솔직하고 구체적인 의견을 남기는 것이 좋습니다.</p>
            <p>다른 사용자들에게 도움이 될 수 있는 정보를 공유하는 것이 리뷰의 목적입니다.</p>
        </details><hr class="ListLine">
        
        <details>
            <summary>포인트는 어떻게 적립되고 사용할 수 있나요?<span class="details-toggle"></span></summary>
            <p>구매 금액에 따라 포인트가 적립되며, 적립된 포인트는 다음 구매 시 할인으로 사용할 수 있습니다.</p>
            <p>일반적으로 구매할 때마다 일정 비율의 포인트가 적립되며, 포인트는 회원 등급에 따라 차등 적립될 수도 있습니다.</p>
            <p>포인트는 보통 일정 기간 동안 유효하며, 유효 기간 내에 사용하지 않을 경우 소멸될 수 있습니다.</p>
        </details><hr class="ListLine">
        
        <details>
            <summary>주문한 상품을 취소하고 싶은데 어떻게 해야 하나요?<span class="details-toggle"></span></summary>
            <p>주문 취소는 배송 준비 단계까지만 가능하며, 마이 페이지에서 취소 요청을 할 수 있습니다.</p>
            <p>주문 취소 시에는 주문번호와 함께 취소 사유를 입력하여 요청하며, 취소 가능 여부는 상품의 배송 상태에 따라 다를 수 있습니다.</p>
            <p>반품이나 교환을 원하는 경우에는 별도의 절차를 따라야 하므로, 주문 취소 전에 반드시 상품 상태를 확인해주세요.</p>
        </details><hr class="ListLine">
        
        <details>
            <summary>사이트에서 제공하는 쿠폰은 어떻게 사용하나요?<span class="details-toggle"></span></summary>
            <p>쿠폰 코드를 결제 시 입력란에 입력하면 해당 쿠폰이 적용됩니다.</p>
            <p>쿠폰은 주로 할인율이나 고정 금액으로 제공되며, 결제 시에 적용하여 총 결제 금액에서 할인을 받을 수 있습니다.</p>
            <p>유효 기간이 있는 쿠폰은 유효 기간 내에 사용해야 하며, 사용 조건에 따라 제한될 수 있습니다.</p>
        </details><hr class="ListLine">
    </div><br>
    <!-- ---------자주묻는질문--------- -->
    <!-- ---------고객센터--------- -->
  	<%@ include file="../Main/Footer2.jsp" %>
</body>
<script type="text/javascript" src="../resources/js/customercenter/QnA.js"></script>
</html>