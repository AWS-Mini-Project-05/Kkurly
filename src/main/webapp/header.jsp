<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   ul, li {
      list-style: none;
   }
   a {
      text-decoration: none;
      color: black;
   }
   a:hover {
      color: blue;
   }
   .mail-div li a {
      font-size: 1.125rem;
   }
   .user-nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
   }
   .user-nav li {
      margin-left: 10px;
   }
   .user-nav li a {
      font-size: 0.9rem;
   }
   
</style>
</head>
<body>
   <header style="display: flex; justify-content: space-between; align-items: center; background: skyblue;">
      <h1>
      <!-- /를 붙이면 무조건 루트주소 뒤에 붙는다. -->
      <!-- localhost:8090/user/login.do -->
      <!-- localhost:8090/hello.do -->
      	 <a href="/user/createProduct.do">관리자페이지 임시 확인용</a>
         <a href="/index.jsp">홈</a>
      </h1>
      <nav>
         <ul class="main-nav">
            <li>
               <a href="/board/getBoardList.do">게시글 목록</a>
            </li>
         </ul>
      </nav>
      <nav>
         <ul class="user-nav">
            <li>
               <a href="/user/login.do">로그인</a>
            </li>
            <li>
               <a href="/user/join.do">회원가입</a>
            </li>
         </ul>
      </nav>
   </header>
</body>
</html>