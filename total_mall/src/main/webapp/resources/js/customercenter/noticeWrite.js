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