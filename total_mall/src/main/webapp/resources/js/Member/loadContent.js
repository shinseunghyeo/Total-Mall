	    // Ajax로 페이지를 불러와서 content 영역에 표시
	    function loadContent(url) {
	        $.ajax({
	            url: url,
	            type: 'GET',
	            cache: false, 
	            success: function (data) {
	                $("#inner_wrap").html(data);
	            },
	            error: function () {
	                $("#inner_wrap").html("Error loading content.");
	            }
	        });
	    }