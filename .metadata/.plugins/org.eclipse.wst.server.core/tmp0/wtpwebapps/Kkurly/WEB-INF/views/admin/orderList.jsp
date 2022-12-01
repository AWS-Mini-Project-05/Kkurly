<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 조회</title>
<!-- <script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script> -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
   #body{background-color: gray; padding-left: 5%;}
   #container{width: 1300px; background-color: white;
    padding: 30px;
    border-radius: 10px;
    }
    h3{text-align: center;}
    .checkbox{margin-left: 100px;}
    .checkbox1{margin-left: 250px}
    .checkbox2{margin-left: 150px}
    #search{margin-left: 200px; height: 30px;}
    table{border: 1px solid black;border-collapse: collapse;}
    th,td{border: 1px solid black;text-align: center ;}
    th{background-color: #83929e}
    td{height: 150px;height: 150px;}
	a{text-decoration: none;   color: black;}
</style>
<script>
	$(function(){
		$("#cateCondition").on("change",function(){
			$("#cateForm").submit();
			
			
			
			
		})//온체인지 서브밋 끝	
	})
    
</script>
</head>
<body id="body">
   <jsp:include page="/header_admin.jsp"></jsp:include>
    
    <div id="container">
       <h3>주문 관리</h3>
       <hr>
       <div class="search-section" style="display: flex;padding-left: 200px">
            <form id="cateForm" action="/order/orderList.do?option=$('#cateCondition').val()" method="post">
						<select id="cateCondition" name="cateCondition">
							<option value="all">전체</option>
							<option value="T01">상온</option>
							<option value="T02">냉장</option>
							<option value="T03">냉동</option>
						</select>
	 	   </form>
 	   </div>
 	   <div class="btn-section" style="display: flex; justify-content: end;">

 	   	</div>
       <hr style="clear: both">
       <table style="width: 100%;">
        <tr>
        <th style="width: 10%;">주문번호</th>
        <th style="width: 10%">주문일</th>
        <th style="width: 5%;">수령인</th>
        <th style="width: 15%;">수령인전화번호</th>
        <th style="width: 10%;">결제방식</th>   
        <th style="width: 10%;">주문상태</th>
        <th style="width: 10%;">총금액</th>
        </tr>
        <c:forEach items="${orderLists}" var="order">
        	<tr>
	        	<td><a target="_black" href="/order/orderListDetail.do?orderNo=${order.orderNo}&userNo=${order.userNo}">${order.orderNo}</a></td>
 	            <td><a target="_black" href="/order/orderListDetail.do?orderNo=${order.orderNo}&userNo=${order.userNo}">${order.orderDt}</a></td>
	            <td><a target="_black" href="/order/orderListDetail.do?orderNo=${order.orderNo}&userNo=${order.userNo}">${order.receiverNm}</a></td>
				<td><a target="_black" href="/order/orderListDetail.do?orderNo=${order.orderNo}&userNo=${order.userNo}">${order.receiverTel}</a></td>
 	            <td><a target="_black" href="/order/orderListDetail.do?orderNo=${order.orderNo}&userNo=${order.userNo}">${order.payWay}</a></td>
	            <td><a target="_black" href="/order/orderListDetail.do?orderNo=${order.orderNo}&userNo=${order.userNo}">${order.orderStatus}</a></td>
	            <td><a target="_black" href="/order/orderListDetail.do?orderNo=${order.orderNo}&userNo=${order.userNo}">${order.totalPrice}</a></td>
        	</tr>
        </c:forEach>
       </table>
    </div>
   <jsp:include page="/footer_admin.jsp"></jsp:include>   
</body>
</html>