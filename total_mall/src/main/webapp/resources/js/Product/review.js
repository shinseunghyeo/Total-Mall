		function validateForm() {
		    var content = document.forms["reviewForm"]["content"].value;
		
		    if (content.trim() == "") {
		        alert("리뷰를 작성해주세요.");
		        return false;
		    }
		
		    alert("리뷰를 성공적으로 작성했습니다.");
		    return true;
		}