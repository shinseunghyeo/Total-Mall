<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script type="text/javascript" src="../resources/js/Member/seller_mypage.js"></script>
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
    </script>
</head>
<body>
				<div id="short_cut">

					<div id="first_div">
						<div class="small_box">
							<div class="inner_box">
								<h2>상품등록</h2>
								<ul>
									<li><a href="#">튜토리얼 보기 </a></li>
								</ul>
							</div>
						</div>
						<div class="big_box">
							<div class="inner_box">
								<h2>주문/배송</h2>
								<ul>
									<li><a href="#">
											<h2>결제완료</h2> <br>
										<b>10 &gt;</b>
									</a></li>
									<li><a href="#">
											<h2>상품준비중</h2> <br>
										<b>10 &gt;</b>
									</a></li>
									<li><a href="#">
											<h2>배송지시</h2> <br>
										<b>10 &gt;</b>
									</a></li>
									<li><a href="#">
											<h2>배송중</h2> <br>
										<b>10 &gt;</b>
									</a></li>
									<li><a href="#">
											<h2>배송완료</h2> <br>
										<b>10 &gt;</b>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div id="second_div">
						<div class="small_box">
							<div class="inner_box">
								<h2>상품관리</h2>
								<ul>
									<li><a href="#">판매중인 상품 <b>${p_con} &gt;</b></a></li>
									<li><a href="#">판매중단 상품 <b>${p_discon} &gt;</b></a></li>
									<li><a href="#">품절 상품 <b>10 &gt;</b></a></li>
									<li><a href="#">기한 만료 상품 <b>10 &gt;</b></a></li>
								</ul>
							</div>
						</div>
						<div class="small_box">
							<div class="inner_box">
								<h2>취소/교환/반품</h2>
								<ul>
									<li><a href="#">교환 요청 <b>10 &gt;</b></a></li>
									<li><a href="#">취소 요청 <b>10 &gt;</b></a></li>
									<li><a href="#">반품 요청 <b>10 &gt;</b></a></li>
								</ul>
							</div>
						</div>
						<div class="small_box">
							<div class="inner_box">
								<h2>고객문의</h2>
								<ul>
									<li><a href="#">진행중인 문의사항 <b>10 &gt;</b></a></li>
									<li><a href="#">완료된 문의사항 <b>10 &gt;</b></a></li>
									<li><a href="#">오늘 작성된 리뷰 <b>10 &gt;</b></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div id="last_div">
						<div class="big_box">
							<a href="#" class="inner_box">
								<h2>매출/통계</h2>
								<div id="chart">
									<canvas id="myLineChart"></canvas>
								</div>
							</a>
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