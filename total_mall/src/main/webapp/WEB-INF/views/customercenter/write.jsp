<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<script>
function validateForm() {
    var selectedOption = document.forms["frm_write"]["service"].value;
    var title = document.forms["frm_write"]["title"].value;
    var content = document.forms["frm_write"]["content"].value;

    if (selectedOption == "menu") {
        alert("서비스를 선택해주세요.");
        return false;
    }

    if (title.trim() == "") {
        alert("제목을 입력해주세요.");
        return false;
    }

    if (content.trim() == "") {
        alert("내용을 입력해주세요.");
        return false;
    }

    return true;
}
</script>
</head>
<body>

<h3>글쓰기</h3>
<hr>
<form method="post" action="writeProcess.do" enctype="multipart/form-data"  onsubmit="return validateForm()">
<input type="hidden" name="m_idx" value="${member.m_idx}" >
<input type="hidden" name="writer" value="${member.member_name}">
서비스: 
<select name="service">
	<option value="menu">옵션 선택</option>
	<option value="custoer">고객서비스</option>
	<option value="event">이벤트당첨</option>
	<option value="transaction">안전거래</option>
	<option value="hazardousgoods">위해상품</option>
</select><br>
작성자: <input type="text" value="${member.member_name}" disabled> <br>
제목: <input type="text" name="title"> <br>
내용: <textarea name="content" cols="30" rows="10"></textarea> <br>
첨부파일: <input type="file" name="uploadFile"> <br><br>
<input type="submit" value="작성완료">
<input type="reset" value="다시입력">
<input type="button" value="목록보기" onclick="location.href='notice.do?service'" >

</form>

</body>
</html>