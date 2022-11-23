<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<style>
  /* html,
  button,
  input,
  select,
  textarea {
    font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum, sans-serif;
  } */
  
  nav {
    margin: 0;
    min-width: 1050px;
    letter-spacing: -0.3px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.07) 0px 3px 4px 0px;
    width: 100%;
    z-index: 10;
    height: 150px;
    position: absolute;
  }
  .nav-top {
    position: relative;
    width: 1050px;
    height: 100px;
    margin: 0px auto;
    letter-spacing: -0.3px;
  }


  #nav-login {
    position: absolute;
    right: 0px;
    top: 0px;
    z-index: 20;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    font-size: 11.3px;
  }

  .nav-login {
    display: block;
    /* color: rgb(95, 0, 128); */
    cursor: pointer;
    padding: 3px 10px;
    font-weight: bold;
    color: #333333;
  }

  .nav-login-down {
    width: 8px;
    height: 5px;
    background-image: url("https://res.kurly.com/pc/ico/1908/ico_down_16x10.png");
    background-size: cover;
    background-position: center center;
    display: inline-block;
    /* margin-left: 3px; */
    margin-bottom: 1px;
  }

  #nav-headerMain {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    height: 63px;
    padding-top: 30px;
  }

  #nav-search {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    position: absolute;
    left: 325px;
    /* top: -55px; */
    width: 390px;
    height: 48px;
    padding-left: 14px;
    border: 1px solid rgb(95, 0, 128);
    border-radius: 6px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgb(247, 247, 247) 0px 0px 0px 1px inset;
  }

  .nav-search-input {
    width: 300px;
    background-color: inherit;
    border: none;
    outline: none;
    font-size: 14px;
    font-weight: bold;
    letter-spacing: -0.33px;
    color: #333;
    opacity: 0.8;
  }

  .nav-search-icon {
    position: relative;
    width: 30px;
    height: 30px;
    margin: 10px;
    bottom: 3px;
    background: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNiAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0ibm9uZSIgZD0iTTAgMGgzNnYzNkgweiIvPgogICAgICAgIDxnIHN0cm9rZT0iIzVGMDA4MCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2Utd2lkdGg9IjEuNyI+CiAgICAgICAgICAgIDxwYXRoIGQ9Im0yNi4wODEgMjYuMDgxLTQuMTItNC4xMk0xNi40NjcgMjMuMzM0YTYuODY3IDYuODY3IDAgMSAwIDAtMTMuNzM0IDYuODY3IDYuODY3IDAgMCAwIDAgMTMuNzM0eiIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==") 0px 0px no-repeat;
    border: 0px;
  }

  #main_txt {
    font-weight: bold;
    color: rgb(95, 0, 128);
    flex-shrink: 0;
    margin-left: 20px;
    margin-right: 20px;
    font-size: 20px;
    line-height: 1.33;
    letter-spacing: normal;
    cursor: pointer;
  }

  #nav-icon {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    position: absolute;
    right: -6px;
    /* top: -49px; */
  }


  .icon-adr {
    width: 36px;
    height: 36px;
    margin-right: 20px;
    background: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNiAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTM2IDM2SDBWMGgzNnoiLz4KICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSg4LjcgNikiIHN0cm9rZT0iIzMzMyIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjciPgogICAgICAgICAgICA8cGF0aCBkPSJNOS4zMDYgMjRTMCAxNi41NDQgMCA5LjMwNmE5LjMwNiA5LjMwNiAwIDAgMSAxOC42MTIgMEMxOC42MTIgMTYuNTQ0IDkuMzA2IDI0IDkuMzA2IDI0eiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLWxpbmVjYXA9InNxdWFyZSIgY3g9IjkuMjEyIiBjeT0iOS4xMjMiIHI9IjIuNzg0Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K") 50% 50% no-repeat;
    cursor: pointer;
  }

  .icon-like {
    width: 36px;
    height: 36px;
    background: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNiAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yOC45MjcgOC44OTNhNi40NiA2LjQ2IDAgMCAwLTkuMTM5IDBsLTEuODI5IDEuODI4LTEuODI3LTEuODI4YTYuNDYyIDYuNDYyIDAgMSAwLTkuMTQgOS4xMzhMOC44MiAxOS44Nmw4LjQzMiA4LjQzNGExIDEgMCAwIDAgMS40MTQgMGw4LjQzMy04LjQzNGgwbDEuODI4LTEuODI4YTYuNDYgNi40NiAwIDAgMCAwLTkuMTM4eiIgc3Ryb2tlPSIjMzMzIiBzdHJva2Utd2lkdGg9IjEuNyIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==") 50% 50% no-repeat;
    border: 0px solid white;
  }

  .icon-like:hover {
    background-image: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNiAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yOC45MjcgOC44OTNhNi40NiA2LjQ2IDAgMCAwLTkuMTM5IDBsLTEuODI5IDEuODI4LTEuODI3LTEuODI4YTYuNDYyIDYuNDYyIDAgMSAwLTkuMTQgOS4xMzhMOC44MiAxOS44Nmw4LjQzMiA4LjQzNGExIDEgMCAwIDAgMS40MTQgMGw4LjQzMy04LjQzNGgwbDEuODI4LTEuODI4YTYuNDYgNi40NiAwIDAgMCAwLTkuMTM4eiIgc3Ryb2tlPSIjNWYwMDgwIiBzdHJva2Utd2lkdGg9IjEuNyIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==");
  }

  .icon-cart {
    display: block;
    width: 36px;
    height: 36px;
    background: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNiAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTM2IDM2SDBWMGgzNnoiLz4KICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSg1LjE2NCA2LjU0NykiIHN0cm9rZT0iIzMzMyIgc3Ryb2tlLWxpbmVjYXA9InNxdWFyZSIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjciPgogICAgICAgICAgICA8cGF0aCBkPSJtMjUuNjggMy42Ni0yLjcyIDExLjU3SDcuMzdMNC42NiAzLjY2eiIvPgogICAgICAgICAgICA8Y2lyY2xlIGN4PSIyMC41MiIgY3k9IjIwLjc4IiByPSIyLjE0Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgY3g9IjkuODEiIGN5PSIyMC43OCIgcj0iMi4xNCIvPgogICAgICAgICAgICA8cGF0aCBkPSJNMCAwaDMuOGwxLjc2IDcuNSIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==");
    cursor: pointer;
    border: 0px solid white;
    margin-left: 18px;
    margin-right: 2px;
  }

  #nav-header {
    position: relative;
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    width: 1050px;
    height: 56px;
    margin: 0px auto;
  }

  #nav-header-cg {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    height: 100%;
  }

  .nav-header-cg-icon {
    width: 16px;
    height: 14px;
    margin-right: 14px;
    background: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNiAxNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0wIDBoMTZ2MS43SDBWMHptMCA2LjE1aDE2djEuN0gwdi0xLjd6bTAgNi4xNWgxNlYxNEgwdi0xLjd6IiBmaWxsPSIjMzMzIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg==") 0px 0px / 16px 14px no-repeat;
  }

  .nav-header-cg {
    font-size: 16px;
    font-weight: 500;
    line-height: 20px;
    letter-spacing: -1.5px;
    color: rgb(51, 51, 51);
  }

  #nav-header-ul {
    display: flex;
    width: 500px;
    margin-left: -90px;
  }

  .nav-header-li {
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    width: 150px;
    height: 55px;
    padding-top: 3px;
    line-height: 20px;
    text-align: center;
  }

  .nav-header-txt {
    height: fit-content;
    font-size: 16px;
    font-weight: bold;
    color: rgb(51, 51, 51);
    cursor: pointer;
  }

  #blank{
    display: flex;
    -webkit-box-align: center;
    align-items: center;
  }
</style>

<body>
  <nav>
    <div class="nav-top">

      <div id="nav-login">
        <a class="nav-login">회원가입</a>
        <a> | </a>
        <a class="nav-login">로그인</a>
        <a> | </a>
        <a class="nav-login">
          고객센터
          <span class="nav-login-down"></span>
        </a>
      </div>

      <div id="nav-headerMain">
        <img src="KKURLY_LOGO.png" alt="Bootstrap" width="120" style="flex: 0 0 82px;">
        <p id="main_txt">마켓껄리</p>

        <div id="nav-search">
          <input id="gnb_search" class="nav-search-input" placeholder="검색어를 입력해주세요" required="" value="">
          <button id="submit" class="nav-search-icon"></button>
        </div>
        <div id="nav-icon">
          <div class="icon-adr"></div>
          <button class="icon-like"></button>
          <button class="icon-cart"></button>
        </div>
      </div>
      <div id="nav-header">
        <div id="nav-header-cg">
          <span class="nav-header-cg-icon"></span>
          <span class="nav-heager-cg">카테고리</span>
        </div>
        <ul id="nav-header-ul">
          <li class="nav-header-li"><span class="nav-header-txt">신상품</span></li>
          <li class="nav-header-li"><span class="nav-header-txt">베스트</span></li>
          <li class="nav-header-li"><span class="nav-header-txt">특가/혜택</span></li>
        </ul>
        <div id="blank"></div>

      </div>

    </div>
  </nav>
</body>

</html>