<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원관리 페이지</title>

</head>
<body>
	<div id="member_management">
		<h1>회원관리</h1>
		<div id="member_wrap">
			<div id="search_bar">
				<div id="bbs-info">총 1009명 | 페이지 1 / 101</div>
				<form>
					<select name="searchField" id="searchField">
						<option value="grade">회원 등급</option>
						<option value="m_idx">회원 번호</option>
						<option value="member_id">회원 아이디</option>
						<option value="member_name">회원 이름</option>
					</select> <input type="text" name="searchWord" id="searchWord"
						placeholder="검색어 입력"> <input type="button" value="검색">
				</form>
			</div>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>회원 분류</th>
						<th>아이디(이름)</th>
						<th>탈퇴여부</th>
						<th>등록일/수정일</th>
					</tr>
				</thead>
				<tbody>

					<c:choose>
						<c:when test="${empty memberList}">
							<tr>
								<td colspan="6">등록된 회원이 없습니다</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="10" varStatus="vs">
								<tr>
									<td><a href="${pageContext.request.contextPath}/member/member_info.do?m_idx=${memberList[vs.count-1].m_idx}" target="_blank">${memberList[vs.count-1].m_idx}</a></td>
									<td><a href="#"><c:out value="${gradeMap[memberList[vs.count-1].grade.toString()]}" /></a></td>
									<td class="title">
									<c:if test="${not empty memberList[vs.count-1].member_name}">
										<a href="#">
											${memberList[vs.count-1].member_id}
											<c:set var="member_name" value="${memberList[vs.count-1].member_name}"/>
											<c:out value="(${member_name})" />
										</a></c:if></td>
									<td><a href="#" class="cancel_or_not"><c:out value="${c_or_nMap[memberList[vs.count-1].cancel_or_not.toString()]}" /></a></td>
									<td><small><fmt:formatDate
											value="${memberList[vs.count-1].reg_date}"
											pattern="yyyy-MM-dd HH:mm:ss /" /></small>
										
											<small><fmt:formatDate
											value="${memberList[vs.count-1].last_modified_date}"
											pattern="yyyy-MM-dd HH:mm:ss" /></small></td>

								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>


					<tr>
						<td colspan="5" id="td-page-nav"><%@ include
								file="../product/paging.jsp"%></td>
					</tr>
				</tbody>
			</table>
		</div>

	</div>


</body>
</html>