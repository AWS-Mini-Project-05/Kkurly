<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
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
    td{height: 150px;height: 150px;}
	a{text-decoration: none;   color: black;}
</style>
<script>

    
</script>
</head>
<body id="body">
   <jsp:include page="/header_admin.jsp"></jsp:include>
    
    <div id="container">
       <h3>상품 관리</h3>
       <hr>
       <div class="search-section">
         <form action="" method="get">
	 	 	<input id="search" name="search" type="text" style="width: 800px;">
	 		<input type="submit" value="검색">
	 	   </form>
 	   </div>
 	   <div class="btn-section" style="display: flex; justify-content: end;">
	 	   <div class="btn-wrap" style="width: 17%; display: flex; justify-content: space-between;">
	 	  	 <form action="/product/prodInsert.do" method="get">
	 	  	 	<input type="submit" value="새 상품 작성하기">
	 	  	 </form>
	 	   	<form action="/product/deleteProduct.do" method="get">
	 	   		<input type="submit" value="상품 삭제하기">
	 	   	</form>
	 	   	</div>
 	   	</div>
       <hr style="clear: both">
       <table style="width: 100%;">
        <tr>
        <th style="width: 5%;">No</th>
        <th style="width: 21%">사진(최종은 히든)</th>
        <th style="width: 25%;">상품명</th>
        <th style="width: 8%;">판매가</th>
        <th style="width: 8%;">카테고리</th>
        <th style="width: 7%;">상태</th>
        <th style="width: 8%;">재고</th>   
        <th style="width: 9%;">최초 등록일</th>
        <th style="width: 9%;">수정일</th>
        </tr>
        <c:forEach items="${prodList}" var="prod">
        	<tr>
	        	<td><a href="">${prod.prodNo}</a></td>
 	            <td><a href=""><img src="/upload/${prod.prodImgNm}" width="100px" class="a"></a></td>
 	            <td><a href="">${prod.prodNm}</a></td>
	            <td><a href="">${prod.prodPrice}</a></td>
	            <td><a href="">카테고리</a></td>
	           <td>
		            <c:if test="${prod.useYn eq 'Y'}">
		            	<a href="">판매중</a>
		            </c:if>
		             <c:if test="${prod.useYn eq 'N'}">
		            	<a href="">판매중지</a>
		            </c:if>
	        	</td> 
	            <td><a href="">${prod.prodQty-prod.saleQty}</a></td>
	            <td><a href="">${prod.inputDt}</a></td>
	            <td><a href="">${prod.updateDt}</a></td>
        	</tr>
        </c:forEach>
        
       </table>
    </div>
   <jsp:include page="/footer_admin.jsp"></jsp:include>   

</body>
</html>