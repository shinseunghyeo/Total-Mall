<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- 중복 코드 통합 -->
    <script type="text/javascript">
        function updateProductStatus(action, pIdx) {
            const ans = confirm("정말로 판매를 " + (action === 'discontinue' ? '중단' : '재개') + "하겠습니까?");

            if (ans) {
                $.ajax({
                    type: "GET",
                    url: action === 'discontinue' ? "../product/discontinued.do" : "../product/continued.do",
                    data: {
                        p_idx: pIdx
                    },
                    success: function (response) {
                        // 서버 응답에 대한 처리
                        console.log(response);

                        // 예를 들어, id가 "SearchproductContaner"인 div를 리로드
                        $(".SearchProductPrice").empty().load(location.href + " #" + (action === 'discontinue' ? 'p_btn0' : 'p_btn1'));
                    },
                    error: function (error) {
                        // 에러 처리를 여기에 추가
                        console.error("Ajax request failed: ", error);
                    }
                });
            }
        }
    </script>
</head>

<body>

    <div id="CategoryPage">
        <h1>상품 관리</h1>
        <div id="CategoryServeLine">

            <div id="SearchproductLine">

                <div id="SearchproductContaner">
                    <table id="tb_myplist">

                        <tr>
                            <td colspan="4">총 상품 수: ${pageNav.totalRows}</td>
                            <td colspan="2">
                                <form>
                                    <select name="searchField">
                                        <option value="title">제목</option>
                                        <option value="content">내용</option>
                                        <option value="writer">작성자</option>
                                    </select> <input type="text" name="searchWord"> <input
                                        type="submit" value="검색">
                                </form>
                            </td>
                        </tr>

                        <c:choose>
                            <c:when test="${empty productList3}">
                                <tr>
                                    <td colspan="6">회원님이 등록한 상품이 없습니다.<br> 새로운 상품을
                                        등록해주세요.
                                    </td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach begin="1" end="10" varStatus="vs">
                                    <tr>
                                        <td colspan="6">
                                            <div id="Searchproductbox">
                                                <a class="productimg"
                                                    href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList3[vs.count-1].p_idx}" >
                                                    <img width="100%" height="100%" src="../resources/uploads/${productList3[vs.count-1].save_file_name1}">
                                                </a>
                                                <div id="SearchProduct">
                                                    <a
                                                        href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList3[vs.count-1].p_idx}">
                                                        ${productList3[vs.count-1].summary} </a><br>
                                                    <fmt:formatNumber value="${productList3[vs.count-1].price}"
                                                        pattern="#,##0" var="formattedPrice" />
                                                    <c:out value="${formattedPrice}원" /><br>
                                                </div>
                                                <div class="SearchProductPrice">
                                                    <div class="SearchProductPrice">
                                                        <input type="button" value="판매중단" id="p_btn0"
                                                            onclick="updateProductStatus('discontinue',${productList3[vs.count-1].p_idx})">
                                                        <input type="button" value="판매재개" id="p_btn1"
                                                            onclick="updateProductStatus('continue', ${productList3[vs.count-1].p_idx})">
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </table>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
