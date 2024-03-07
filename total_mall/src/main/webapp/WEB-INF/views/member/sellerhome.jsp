<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript"
	src="../resources/js/Member/seller_mypage.js"></script>
<script type="text/javascript">
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
					<h2>상품관리</h2>
					<ul>
						<c:forEach var="i" begin="0" end="3" varStatus="vs">
							<li><a href="#"> <c:if
										test="${not empty statusPlist[vs.count-1].p_status and statusPlist[vs.count-1].p_status < 4}">
									${statusPMap[statusPlist[vs.count-1].p_status.toString()]} <!-- statusPMap에서 키를 사용하여 해당하는 문자열을 가져옴 -->
										<b>${statusPlist[vs.count-1].count} &gt;</b>
									</c:if>
							</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="big_box">
				<div class="inner_box">
					<h2>주문/배송</h2>
					<ul>
						<c:choose>
							<c:when test="${empty statusOlist}">
								<li><h3>진행중인 주문/배송이 없습니다</h3></li>
							</c:when>
							<c:otherwise>
								<c:forEach var="i" begin="0" end="4" varStatus="vs">
									<c:if
										test="${not empty statusOlist[vs.count-1].payment_or_not}">
										<li><a href="#">
												<h3>${p_or_notMap[statusOlist[vs.count-1].payment_or_not.toString()]}</h3><b>${statusOlist[vs.count-1].count}
													&gt;</b>
										</a></li>
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
		<div id="second_div">
			<div class="small_box">
				<div class="inner_box">
					<h2>취소/교환/반품</h2>
					<ul>
						<c:choose>
							<c:when test="${empty statusO2list}">
								<li><h4>
										진행중인 <br>취소/교환/반품이 없습니다
									</h4></li>
							</c:when>
							<c:otherwise>
								<c:forEach var="i" begin="0" end="5" varStatus="vs">
									<c:if
										test="${not empty statusO2list[vs.count-1].payment_or_not}">
										<li><a href="#">
												${p_or_notMap[statusO2list[vs.count-1].payment_or_not.toString()]}<b>${statusO2list[vs.count-1].count}
													&gt;</b>
										</a></li>
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>

			<div class="big_box">
				<div class="inner_box">
					<h2>고객문의</h2>
					<div id="cs_table">
						<table>
							<thead>
								<tr>
									<th>번호</th>
									<th>상품명</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${empty homePVList}">
										<tr>
											<td colspan="4"><h3>고객 문의 사항이 없습니다</h3></td>
										</tr>
									</c:when>
									<c:when test="${not empty homePVList}">
										<c:forEach var="i" begin="1" end="5" varStatus="vs">
											<tr>
												<td>${i}</td>
												<td><a href="javascript:void(0);"
													onclick="openPopup('${pageContext.request.contextPath}/customercenter/inquiries2.do?v_idx=${homePVList[vs.count-1].v_idx}')">
														${homePVList[vs.count-1].product_name} </a></td>
												<td>${homePVList[vs.count-1].writer}</td>
												<td><fmt:formatDate
														value="${homePVList[vs.count-1].post_date}"
														pattern="yyyy/MM/dd" /></td>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div id="last_div">
			<div class="big_box">
				<div class="inner_box">
					<h2>매출/통계</h2>
					<div id="chart">
						<canvas id="myLineChart"></canvas>
					</div>
				</div>
			</div>
			<div class="small_box">
				<div class="inner_box">
					<h2>고객센터</h2>
					<ul>
						<li><a href="#">나의 문의 <b>10 &gt;</b></a></li>
						<li><a href="#">답변받은 문의 <b>10 &gt;</b></a></li>
					</ul>
				</div>
			</div>
		</div>

	</div>


</body>
</html>