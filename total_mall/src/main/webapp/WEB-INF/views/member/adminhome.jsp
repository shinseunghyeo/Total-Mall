<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 홈 페이지</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript"
	src="../resources/js/Member/admin_mypage.js"></script>
<script type="text/javascript">
	// Ajax로 페이지를 불러와서 content 영역에 표시
	function loadContent(url) {
		$.ajax({
			url : url,
			type : 'GET',
			success : function(data) {
				$("#inner_wrap").html(data);
			},
			error : function() {
				$("#inner_wrap").html("Error loading content.");
			}
		});
	}
	// "글쓰기" 버튼 클릭 이벤트 리스너
	$(document).ready(function() {
		$("#notice_btn input[value='글쓰기']").on("click", function() {
			// "글쓰기" 버튼을 클릭하면 loadContent 함수 호출
			loadContent("../customercenter/write.do");
		});
	});
	
	//이 코드는 무작위 데이터를 생성하여 꺾은선 그래프를 그리는 예시입니다. 
	//만약 실제 데이터를 사용하려면 dataValues 배열에 실제 데이터를 할당하면 됩니다. 
	//코드의 일부를 수정하여 프로젝트에 통합하세요.
	$("div").ready(function () {
	// 12개의 임의의 데이터 생성 (예시)
	var dataValues = [];
	for (var i = 0; i < 12; i++) {
	    dataValues.push(Math.floor(Math.random() * 50) + 10);
	}

	// Chart.js를 사용하여 꺾은선 그래프 그리기
	var ctx = document.getElementById('myLineChart').getContext('2d');
	var myLineChart = new Chart(ctx, {
	    type: 'line',
	    data: {
	        labels: Array.from({
	            length: 12
	        }, (_, i) => (i + 1).toString()), // 1부터 12까지 레이블 생성
	        datasets: [{
	            label: 'My Line Chart',
	            data: dataValues,
	            borderColor: 'rgb(75, 192, 192)',
	            borderWidth: 2,
	            fill: false
	        }]
	    },
	    options: {
	        responsive: true,
	        maintainAspectRatio: false,
	        scales: {
	            y: {
	                beginAtZero: true
	            }
	        }
	    }
	});
	});
	
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
	<div id="short_cut">

		<div id="first_div">
			<div class="small_box">
				<div class="inner_box">
					<h2>${member.member_name}
						님 <small>계정입니다</small>
					</h2>
					<div id="current_wrap">
						<h2 id="currentDate"></h2>
						<h2 id="currentTime"></h2>
					</div>
				</div>
			</div>
			<div class="big_box">
				<div class="inner_box">
					<h2>공지사항</h2>
					<div id="notice_table">
						<div id="notice_btn">

							<input type="button" value="전체보기"
								onclick="window.location.href='${pageContext.request.contextPath}/customercenter/notice.do?service';">
							<input type="button" value="글쓰기">
						</div>

						<table>
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="i" begin="1" end="5" varStatus="vs">
									<tr>
										<td>${i}</td>
										<td><a
											href="${pageContext.request.contextPath}/customercenter/notice.do?service=${homeNList[vs.count-1].service}&n_idx=${homeNList[vs.count-1].n_idx}">${homeNList[vs.count-1].title}</a>
										</td>
										<td>${homeNList[vs.count-1].writer}</td>
										<td><fmt:formatDate
												value="${homeNList[vs.count-1].post_date}"
												pattern="yyyy/MM/dd HH:mm:ss" /></td>
									</tr>
								</c:forEach>



							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>
		<div id="second_div">
			<div class="small_box">
				<div class="inner_box">
					<h2>회원 현황</h2>
					<ul>
						<c:forEach var="i" begin="0" end="9" varStatus="vs">
							<li><a href="#"> <c:if
										test="${not empty memberCntlist[vs.count-1].count}">
									${gradeMap[memberCntlist[vs.count-1].grade.toString()]} <!-- statusPMap에서 키를 사용하여 해당하는 문자열을 가져옴 -->
										<b>${memberCntlist[vs.count-1].count} &gt;</b>
									</c:if>
							</a></li>
						</c:forEach>
					</ul>

				</div>
			</div>
			<div class="big_box">
				<div class="inner_box">
					<h2>고객센터</h2>
					<div id="cs_table">
						<table>
							<thead>
								<tr>
									<th>번호</th>
									<th>분류</th>
									<th>제목</th>
									<th>작성자</th>
									<th>상태</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="i" begin="1" end="5" varStatus="vs">
									<tr>
										<td>${i}</td>
										<td><c:out
												value="${fn:substring(gradeMap[homeVList[vs.count-1].grade.toString()], 0, 4)}" /></td>
										<td><a href="javascript:void(0);"
											onclick="openPopup('${pageContext.request.contextPath}/customercenter/inquiries.do?v_idx=${homeVList[vs.count-1].v_idx}')">
												${homeVList[vs.count-1].title} </a></td>
										<td>${homeVList[vs.count-1].writer}</td>
										<td>${voc_stateMap[homeVList[vs.count-1].voc_state.toString()]}</td>
										<td><fmt:formatDate
												value="${homeVList[vs.count-1].post_date}"
												pattern="yyyy/MM/dd" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div id="last_div">
			<div class="small_box">
				<div class="inner_box">
					<h2>상품관리</h2>
					<ul>
						<li><a href="#">오늘 등록된 상품 <b>${todayProduct} &gt;</b></a></li>
						<c:forEach var="i" begin="0" end="3" varStatus="vs">
							<li><a href="#"> <c:if
										test="${not empty statusP2list[vs.count-1].p_status and statusP2list[vs.count-1].p_status < 4}">
									${statusPMap[statusP2list[vs.count-1].p_status.toString()]} <!-- statusPMap에서 키를 사용하여 해당하는 문자열을 가져옴 -->
										<b>${statusP2list[vs.count-1].count} &gt;</b>
									</c:if>
							</a></li>
						</c:forEach>

					</ul>
				</div>
			</div>
			<div class="big_box">
				<a href="#" class="inner_box">
					<h2>매출/통계</h2>
					<div id="chart">
						<canvas id="myLineChart"></canvas>
					</div>
				</a>
			</div>
		</div>

	</div>


</body>
</html>