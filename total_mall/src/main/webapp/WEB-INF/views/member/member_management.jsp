<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원관리 페이지</title>
<!-- member_management.jsp 파일 내의 JavaScript 부분 -->
<script src="../resources/js/jquery-3.7.1.min.js"></script>
<script>
	function openMemberInfoWindow(url) {
		// 새 창의 크기 및 위치 설정
		var width = 400;
		var height = 500;
		var left = (window.innerWidth - width) / 2;
		var top = (window.innerHeight - height) / 2;

		// 새 창 열기
		var newWindow = window.open(url, '_blank', 'width=' + width
				+ ', height=' + height + ', left=' + left + ', top=' + top);

		// 새 창이 정상적으로 열렸을 때만 설정 추가
		if (newWindow) {
			newWindow.onload = function() {
				// 기타 설정
				newWindow.document.body.style.fontSize = '16px';

				// 닫기 버튼 추가
				var closeButton = newWindow.document.createElement('button');
				closeButton.innerText = '닫기';
				closeButton.style.position = 'fixed';
				closeButton.style.bottom = '10px';
				closeButton.style.right = '10px';
				closeButton.onclick = function() {
					newWindow.close();
				};
				newWindow.document.body.appendChild(closeButton);
			};
		}
	}
</script>
</head>
<body>
	<div id="member_management">
		<h1>회원관리</h1>
		<div id="member_wrap">
			<div id="search_bar">
				<div id="bbs-info">총 명 | 페이지</div>
				<form id="search" action="member_management.do">
					<select name="searchField" id="searchField">
						<option value="grade">회원 등급</option>
						<option value="m_idx">회원 번호</option>
						<option value="member_id">회원 아이디</option>
						<option value="member_name">회원 이름</option>
					</select> <input type="text" name="searchWord" id="searchWord"
						placeholder="검색어 입력"> <input type="submit" value="검색">
				</form>
			</div>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>아이디(이름)</th>
						<th>가입일/수정일</th>
						<th>회원 분류/등급 조정</th>

						<th>탈퇴여부</th>

					</tr>
				</thead>
				<tbody id="memberTableBody">
					<c:choose>
						<c:when test="${empty memberList}">
							<tr>
								<td colspan="5">등록된 회원이 없습니다</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach begin="1" end="10" varStatus="vs">
								<tr>
									<td><a
										href="${pageContext.request.contextPath}/member/member_info.do?m_idx=${memberList[vs.count-1].m_idx}"
										target="_blank"
										onclick="openMemberInfoWindow('${pageContext.request.contextPath}/member/member_info.do?m_idx=${memberList[vs.count-1].m_idx}')">
											${memberList[vs.count-1].m_idx} </a></td>

									<td class="title"><c:if
											test="${not empty memberList[vs.count-1].member_id}">
											<a
										href="${pageContext.request.contextPath}/member/member_info.do?m_idx=${memberList[vs.count-1].m_idx}"
										target="_blank"
										onclick="openMemberInfoWindow('${pageContext.request.contextPath}/member/member_info.do?m_idx=${memberList[vs.count-1].m_idx}')"> ${memberList[vs.count-1].member_id} <c:set
													var="member_name"
													value="${memberList[vs.count-1].member_name}" /> <c:out
													value="(${member_name})" />
											</a>
										</c:if></td>

									<td><small> <fmt:formatDate
												value="${memberList[vs.count-1].reg_date}"
												pattern="yyyy-MM-dd HH:mm:ss /" />
									</small> <small> <fmt:formatDate
												value="${memberList[vs.count-1].last_modified_date}"
												pattern="yyyy-MM-dd HH:mm:ss" />
									</small></td>
									<td><c:if test="${not empty memberList[vs.count-1].grade}">
											<form id="gradeUpdateForm" method="post"
												action="gradeUpdate.do">
												<input type="hidden" name="m_idx"
													value="${memberList[vs.count-1].m_idx}"> <select
													name="grade">

													<c:forEach var="entry" items="${gradeMap}">
														<c:choose>
															<c:when
																test="${entry.key eq memberList[vs.count-1].grade}">
																<option value="${entry.key}" selected>${entry.value}</option>
															</c:when>
															<c:otherwise>
																<option value="${entry.key}">${entry.value}</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>

												</select> <input type="submit">
											</form>
										</c:if></td>

									<td><c:if
											test="${not empty memberList[vs.count-1].cancel_or_not}">
											<c:out
												value="${c_or_nMap[memberList[vs.count-1].cancel_or_not.toString()]}" />


											<form id="cancelUpdateForm" method="post"
												action="cancelUpdate.do">
												<input type="hidden" name="m_idx"
													value="${memberList[vs.count-1].m_idx}">


												<div>
													<input type="radio" id="cancel_or_not" name="cancel_or_not"
														value="1" checked /> <label for="huey">탈퇴</label>
												</div>

												<div>
													<input type="radio" id="cancel_or_not" name="cancel_or_not"
														value="0" /> <label for="dewey">복구</label>
												</div>
												<input type="submit">


											</form>
										</c:if></td>

								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="5" id="td-page-nav"></td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</body>
</html>
