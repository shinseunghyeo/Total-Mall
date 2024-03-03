<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
li {
	list-style: none;
}
</style>
</head>
<body>

	<ul>
		<li><span>회원 번호: </span>${member.m_idx}</li>
		<li><span>카테고리 선택사항: </span> <c:if
				test="${not empty categorieList}">
				<c:forEach var="categorie" items="${categorieList}">
					<c:out value="${categorieMap[categorie]}" />
				</c:forEach>
			</c:if> <c:if test="${empty categorieList}">
		  없음
		  </c:if></li>
		<li><span>아이디: </span>${member.member_id}</li>
		<li><span>이름: </span>${member.member_name}</li>
		<li><span>전화번호: </span>${member.handphone}</li>
		<li><span>이메일: </span>${member.email}</li>
		<li><span>우편번호: </span>${member.address1}</li>
		<li><span>주소: </span>${member.address2}</li>
		<li><span>상세주소: </span>${member.address3}</li>
		<br>
		<li><span>등급: </span>
		<c:out value="${gradeMap[member.grade.toString()]}" /></li>
		<li><span>대표자 명: </span>${member.representative_name}</li>
		<li><span>사업자 등록번호: </span>${member.company_number}</li>
		<li><span>상호명: </span>${member.mutual}</li>
		<li><span>통신판매번호: </span>${member.mail_order_number}</li>
		<li><span>계좌번호: </span>${member.account1}</li>
		<li><span>은행: </span>${member.account2}</li>
		<li><span>예금주명: </span>${member.depositor_name}</li>
		
		<br>
		<li><span>가입일: </span> <fmt:formatDate value="${member.reg_date}"
				pattern="yyyy-MM-dd HH:mm:ss" /></li>
		<li><span>최신 수정일: </span> <fmt:formatDate
				value="${member.last_modified_date}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
		<li><span>탈퇴 여부: </span>
		<c:out value="${c_or_nMap[member.cancel_or_not.toString()]}" /></li>
	</ul>
</body>
</html>