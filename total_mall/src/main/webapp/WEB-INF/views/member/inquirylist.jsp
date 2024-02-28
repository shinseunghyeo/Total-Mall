<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>
    <div class="container">
		<c:choose>
			<c:when test="${member.grade == '8'}">
		        <h1>관리자 문의 내역 확인</h1>
	        </c:when>
			<c:when test="${member.grade == '9'}">
		        <h1>판매자 문의 내역 확인</h1>
	        </c:when>
			<c:otherwise>
				<h1>관계자 외 접근 제한</h1>
			</c:otherwise>
        </c:choose>
        <table>
       			<c:choose>
					<c:when test="${not empty inquirylist and member.grade eq '8'}">
			            <thead>
			                <tr>
			                    <th>번호</th>
			                    <th>이름</th>
			                    <th>이메일</th>
			                    <th>문의 내용</th>
			                    <th>문의 시간</th>
			                </tr>
			            </thead>
			            <tbody>
						<c:forEach begin="1" end="10" varStatus="vs">
			                <tr>
			                    <td>${vs.count}</td>
			                    <td>${inquirylist[vs.count-1].writer}</td>
			                    <td>${inquirylist[vs.count-1].email}</td>
			                    <td>${inquirylist[vs.count-1].voc_type}</td>
			                    <td>${inquirylist[vs.count-1].post_date}</td>
			                </tr>
						</c:forEach>
					</c:when>
					<c:when test="${not empty pinquirylist and member.grade eq '9'}">
			            <thead>
			                <tr>
			                    <th>번호</th>
			                    <th>이름</th>
			                    <th>이메일</th>
			                    <th>상품명</th>
			                    <th>문의 시간</th>
			                </tr>
			            </thead>
			            <tbody>
						<c:forEach begin="1" end="10" varStatus="vs">
			                <tr>
			                    <td>${vs.count}</td>
			                    <td>${pinquirylist[vs.count-1].writer}</td>
			                    <td>${pinquirylist[vs.count-1].email}</td>
			                    <td>${pinquirylist[vs.count-1].product_name}</td>
			                    <td>${pinquirylist[vs.count-1].post_date}</td>
			                </tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr><td colspan="6">등록된 문의가 없습니다</td></tr>
					</c:otherwise>
				</c:choose>
                <!-- 기타 문의 내역 행 추가 -->
            </tbody>
        </table>
    </div>
</body>
</html>
