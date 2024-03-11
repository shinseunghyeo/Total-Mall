<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 20px;
	background-color: #f9f9f9;
	color: #333;
}

.container {
	max-width: 800px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px 20px 40px 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	color: #007bff;
	margin-top: 0;
	border-bottom: 2px solid #007bff;
	padding-bottom: 10px;
}

p {
	margin-top: 20px;
	line-height: 1.5;
}
form pre {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    flex-direction: column;
    align-content: stretch;
    align-items: stretch;
    /* width: 100%; */
}

pre {
	background-color: #f5f5f5;
	padding: 10px;
	border-radius: 5px;
	overflow-x: auto;
}

textarea {
	height: 150px;
    border: 1px solid #ccc;
    resize: none;
    margin: 0px 6%;
}

input[type=submit], button{
    float: right;
}
</style>
<script>
    // JavaScript 함수: 새 창 닫기
    function closeWindow() {
        // 현재 창을 닫기
        window.close();
    }
</script>
</head>
<body>

	<div class="container">
<c:choose>
    <c:when test="${member.grade == 8}"><!-- 관리자 -->
        <h1>${inquiries[0].title}</h1>
		<img src="">
		<h3 style="margin: 0;">${inquiries[0].voc_type}</h3>
		<pre>${inquiries[0].content}</pre>
		${inquiries[0].post_date}<br> 이름: ${inquiries[0].writer}<br>
		이메일: ${inquiries[0].email}<br>

		<c:if test="${product.save_file_name != null}">
			<img src="../resources/uploads/${product.save_file_name}">
		</c:if>
		<hr>
		<c:if test="${inquiries[0].answer != null}">
			<pre>${inquiries[0].answer}</pre>
			<button onclick="closeWindow()">닫기</button>
		</c:if>
		<c:if test="${member.grade == 8 && inquiries[0].answer == null}">
			<!-- 관리자 -->
			<form id="frm_write" method="post"
				action="../customercenter/answerProcess.do"
				enctype="multipart/form-data">
				<input type="hidden" name="v_idx" value="${inquiries[0].v_idx}">
				<!-- id 필드 추가 -->
				<pre>답변:
					<textarea name="answer" placeholder="고객 답변을 작성해주세요"></textarea>
				</pre>
				<input type="submit" value="답변하기">
			</form>
		</c:if>
    </c:when>
   <c:when test="${member.grade == 9 and not empty inquiries2}"><!-- 기업회원 -->
		<h1>고객문의내역</h1>
		<img src="">
		${product.product_name}
		<pre>${inquiries2[0].content}</pre>
		${inquiries2[0].post_date}<br> 이름: ${inquiries2[0].writer}<br>
		이메일: ${inquiries2[0].email}<br>

		<c:if test="${product.save_file_name != null}">
			<img src="../resources/uploads/${product.save_file_name}">
		</c:if>
		<hr>
		<c:if test="${inquiries2[0].answer != null}">
			<pre>${inquiries2[0].answer}</pre>
			<button onclick="closeWindow()">닫기</button>
		</c:if>
		<c:if test="${member.grade == 9 && inquiries2[0].answer == null}">
			<!-- 관리자 -->
			<form id="frm_write" method="post"
				action="../customercenter/answerProcess2.do"
				enctype="multipart/form-data">
				<input type="hidden" name="v_idx" value="${inquiries2[0].v_idx}">
				<!-- id 필드 추가 -->
				<pre>답변:
					<textarea name="answer" placeholder="고객 답변을 작성해주세요"></textarea>
				</pre>
				<input type="submit" value="답변하기">
			</form>
		</c:if>
    </c:when>
    <c:when test="${not empty inquiries2[0].member_id and member.grade != 9}"><!-- 개인회원 -->
		<h1>고객문의내역</h1>
		<img src="">
		${product.product_name}
		<pre>${inquiries2[0].content}</pre>
		${inquiries2[0].post_date}<br> 이름: ${inquiries2[0].writer}<br>
		이메일: ${inquiries2[0].email}<br>

		<c:if test="${product.save_file_name != null}">
			<img src="../resources/uploads/${product.save_file_name}">
		</c:if>
		<hr>

			<pre>${inquiries2[0].answer}</pre>
			<button onclick="closeWindow()">닫기</button>

    </c:when>
        <c:when test="${member.grade != 8 and not empty inquiries and not empty inquiries[0].voc_type}"><!-- 개인회원 -->

		<h1>${inquiries[0].title}</h1>
		<img src="">
		<h3 style="margin: 0;">${inquiries[0].voc_type}</h3>
		<pre>${inquiries[0].content}</pre>
		${inquiries[0].post_date}<br> 이름: ${inquiries[0].writer}<br>
		이메일: ${inquiries[0].email}<br>

		<c:if test="${product.save_file_name != null}">
			<img src="../resources/uploads/${product.save_file_name}">
		</c:if>
		<hr>
		<c:if test="${inquiries[0].answer != null}">
			<pre>${inquiries[0].answer}</pre>
			<button onclick="closeWindow()">닫기</button>
		</c:if>
		
    </c:when>
</c:choose>
	</div>
</body>
</html>