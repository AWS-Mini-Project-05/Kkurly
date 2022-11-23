<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
        #container{width: 1500px; height: 100px; background-color: purple;
                    line-height: 30px;
                    margin-bottom: 30px;
         
        }
        ul,div{display: inline-block;}
        a{text-decoration: none; color: white;}
        li{list-style-type: none}
    
    </style>
</head>
<body>
    <div id="container">
        <ul>
            <li>
               <h2><a href="/index.jsp">Market KKurly</a></h2>
            </li>
        </ul>
        <ul>
            <li>
                <a href="/user/createProduct.do">상품 등록</a>
            </li>
        </ul>
        <ul>
            <li>
                <a href="">상품 검색</a>
            </li>
        </ul>
        <ul>
            <li>
                <a href="">주문 목록 검색</a>
            </li>
        </ul>
        <ul>
            <li>
                <a href="">카테고리 관리</a>
            </li>
        </ul>
        <ul>
            <li>
                <a href="">회원 관리</a>
            </li>
        </ul>
        <ul>
            <li>
                <a href=""></a>
            </li>
        </ul>
        <ul>
            <li>
                <a href=""></a>
            </li>
        </ul>
        <ul>
            <li>
                <a href=""></a>
            </li>
        </ul>
        <div class="div"><a href="/user/mypage.do">님반갑습니다.</a></div>
        <ul>
            <li>
                <a href="/user/logout.do">로그아웃</a>
            </li>
        </ul>
    </div>
</body>
</html>