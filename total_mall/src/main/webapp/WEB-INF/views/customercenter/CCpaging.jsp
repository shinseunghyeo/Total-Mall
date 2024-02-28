<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${CCpageNav.pageNum > CCpageNav.pages_pageBlock}">
	<a href="notice.do?service=${param.service}=${param.service}&pageNum=1&pageBlock=1">&lt;&lt;</a>
	&nbsp;
	<a href="notice.do?service=${param.service}&pageNum=${(CCpageNav.pageBlock-2)*CCpageNav.pages_pageBlock+1}&pageBlock=${CCpageNav.pageBlock-1}">이전</a>
</c:if>
<c:forEach var="p" begin="${(CCpageNav.pageBlock - 1)*CCpageNav.pages_pageBlock +1}" end="${CCpageNav.pageBlock*CCpageNav.pages_pageBlock}">
	<c:if test="${p le CCpageNav.total_pageNum}">
		<a href="notice.do?service=${param.service}&pageNum=${p}&pageBlock=${CCpageNav.pageBlock}">
			<c:if test="${p eq CCpageNav.pageNum}" var="flag"> <!-- flag 변수에는 test 결과값이 저장됨 -->
				<span style="color:red">${p}&nbsp;</span>
			</c:if>
			<c:if test="${not flag}">
				${p}&nbsp;
			</c:if>
		</a>
	</c:if>
</c:forEach>
<c:if test="${CCpageNav.total_pageNum > (CCpageNav.pageBlock*CCpageNav.pages_pageBlock)}">
	<a href="notice.do?service=${param.service}&pageNum=${(CCpageNav.pageBlock*CCpageNav.pages_pageBlock)+1}&pageBlock=${CCpageNav.pageBlock + 1}">다음</a>
	&nbsp;
	<a href="notice.do?service=${param.service}&pageNum=${CCpageNav.total_pageNum}&pageBlock=${CCpageNav.last_pageBlock}">&gt;&gt;</a>
</c:if>
