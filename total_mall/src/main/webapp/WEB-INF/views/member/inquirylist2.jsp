<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의 내역 확인</title>
<style>
/* 간단한 스타일링을 위한 CSS */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.container {
	max-width: 800px;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}
</style>
<script type="text/javascript">

function openPopup(url) {
    // 팝업 창의 크기 및 위치 설정
    var width = 600;
    var height = 600;
    var left = (window.innerWidth - width) / 2;
    var top = (window.innerHeight - height) / 2;

    // 팝업 창 열기
    window.open(url, '_blank', 'width=' + width + ',height=' + height + ',left=' + left + ',top=' + top);
}
</script>
</head>
<body>
<div id="nav_back"></div>
	<div class="container">
<h1>고객센터 문의 내역 확인</h1>

		<table>
			<c:choose>
				<c:when test="${not empty sellerbuyerVocList}"><!-- 관리자 -->
					<thead>
						<tr>
							<th>번호</th>
							<th>문의 내용</th>
							<th>이름</th>
							<th>이메일</th>
							
							<th>문의 시간</th>
							<th>처리 상태</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach begin="1" end="10" varStatus="vs">
							<tr>
								<td>${vs.count}</td>
								<td>
								<a href="javascript:void(0);"
													onclick="openPopup('${pageContext.request.contextPath}/customercenter/inquiries.do?v_idx=${sellerbuyerVocList[vs.count-1].v_idx}')">
								${sellerbuyerVocList[vs.count-1].voc_type}
								</a>
								</td>
								<td>${sellerbuyerVocList[vs.count-1].writer}</td>
								<td>${sellerbuyerVocList[vs.count-1].email}</td>
								
								<td><fmt:formatDate
										value="${sellerbuyerVocList[vs.count-1].post_date}"
										pattern="yyyy-MM-dd HH:mm:ss" /></td>
								<td>${voc_stateMap[sellerbuyerVocList[vs.count-1].voc_state.toString()]}</td>

							</tr>
						</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="6">등록된 문의가 없습니다</td>
					</tr>
				</c:otherwise>
			</c:choose>
			<!-- 기타 문의 내역 행 추가 -->
			</tbody>
		</table>
	</div>
</body>
</html>
