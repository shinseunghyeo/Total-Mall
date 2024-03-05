<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>매출</title>
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <style>
    	#gray_board{
    		width: 1050px;
    		margin: 0 auto;
    		background-color: rgba(224, 224, 224, 0.42);
    	}
    	#top_div{
    		border-bottom: 2px solid black;
    		margin: 0 auto; 
    		width: 900px; 
    		padding-top: 10px;
    	}
    	#chart_div{
    		margin: 0 auto;
    		padding-top: 30px;
    	}
    	#table_div{
    		padding-top: 10px;
    		padding-bottom: 30px;
    		margin: 0 auto;
    	}
        table {
        	margin: 0 auto;
        	
            border-collapse: collapse; /* 테이블의 셀 간격을 없애기 위해 사용 */
            width: 600px;
            text-align: center;
        }

        table, th, td {
            border-bottom: 1px solid black;
        }
        .td1, .td2, .td3{
        	font-size: 25px;
        	font-weight: 800;
        }
        tr{
        	height: 40px
        }
    </style>
    
</head>
<body>
	<div id="gray_board">
		<div id="top_div" ><h1>매출 통계</h1></div>
		<div id="chart_div" style="width: 900px; height: 500px;"></div>
		<div id="table_div">
			<table>
		        <tr class="tr1">
		            <td class="td1">일별</td>
		            <td class="td2">건수</td>
		            <td class="td3">결제금액</td>
		        </tr>
		        <c:choose>
		        	<c:when test="${empty salesList}">
		        		<tr>
		        			<td colspan="3">거래가 없습니다.</td>
		        		</tr>
		        	</c:when>
		        	<c:otherwise>
		        		<c:forEach var="i" begin="1" end="${salesList.size()}" varStatus="vs">
		        			<c:if test="${not empty salesList[vs.count-1]}">
		        				<tr class="tr2">
		        					<fmt:formatDate value="${salesList[vs.count-1].order_date}" pattern="yyyy-MM-dd" var="formattedDate" />
						            <td>${formattedDate}</td>
						            <td>${salesList[vs.count-1].record_count}건</td>
						            <td><fmt:formatNumber value="${salesList[vs.count-1].totalPrice}" pattern="#,###" />원</td>
						        </tr>
		        			</c:if>
		        		</c:forEach>
		        	</c:otherwise>
		        </c:choose>
		    </table>
		</div>
	</div>
</body>
<script type="text/javascript">
    google.charts.load('current', {'packages': ['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        // 표에서 가져온 데이터를 salesList에서 가져옴
        var salesData = [
            ['날짜', '주문 총 금액']
        ];

        // salesList 데이터를 salesData에 추가
        <c:forEach var="i" items="${salesList}">
            salesData.push(['<fmt:formatDate value="${i.order_date}" pattern="yyyy-MM-dd" />', ${i.totalPrice}]);
        </c:forEach>

        // 차트 옵션
        var options = {
            title: '주문 통계',
            curveType: 'function',
            legend: {position: 'bottom'}
        };

        // salesData 배열을 이용하여 데이터 테이블 생성
        var data = google.visualization.arrayToDataTable(salesData);

        // LineChart 생성 및 그리기
        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
    }
</script>
</html>