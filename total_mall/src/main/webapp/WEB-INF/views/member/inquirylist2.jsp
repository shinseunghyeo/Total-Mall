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
<div id="inq_wrap">
	

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
						<c:forEach begin="1" end="${sellerbuyerVocList.size()}" varStatus="vs">
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
		<div id="td-page-nav">
		<%@ include file="inquirylistpaging2.jsp"%>
		</div>
	</div>
	</div>
</body>
</html>
