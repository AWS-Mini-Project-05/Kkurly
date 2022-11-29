<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>껄리</title>
</head>
<jsp:include page="${pageContext.request.contextPath }/mainHeader.jsp"></jsp:include>
<style>
#container {
	width: 1050px;
	margin: 0px auto;
}

#categori {
	margin-top: 50px;
	font-weight: 500;
	font-size: 28px;
	color: rgb(51, 51, 51);
	line-height: 35px;
	letter-spacing: -1px;
	text-align: center;
}

.cg-nav {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	justify-content: space-between;
	padding-bottom: 20px;
	line-height: 20px;
}

.cg-nav-total {
	font-size: 14px;
	font-weight: 500;
	color: rgb(51, 51, 51);
}

.cg-nav-ul {
	position: relative;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}

.cg-nav-li {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: end;
	justify-content: flex-end;
	margin-left: 8px;
	font-size: 14px;
	color: rgb(153, 153, 153);
}

.cg-nav-li>a {
	text-decoration: none;
	color: rgb(51, 51, 51);
}

.cg-img {
	display: grid;
	grid-template-columns: repeat(auto-fill, 249px);
	gap: 24px 18px;
	width: 100%;
}

.cg-img-a {
	display: flex;
	flex-direction: column;
	height: 538px;
	color: rgb(51, 51, 51);
	cursor: pointer;
	text-decoration: none;
}

.cg-img-div-sub {
	overflow: hidden;
	position: relative;
	background-color: rgb(245, 245, 245);
	width: 249px;
	height: 320px;
}

.cg-img-div-sub>img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	transition: all 0.5s ease-in-out 0s;
}

.cg-img-cart {
	position: absolute;
	right: 16px;
	bottom: 16px;
	background-color: rgba(240, 248, 255, 0);
	border: 0px;
}

.cg-img-text-div {
	padding: 14px 10px 0px 0px;
}

.cg-img-text-box {
	display: block;
	padding-bottom: 2px;
}

.cg-img-text1 {
	font-size: 14px;
	color: rgb(153, 153, 153);
	line-height: 19px;
	letter-spacing: -0.5px;
}

.cg-img-text2 {
	max-height: 58px;
	margin-bottom: 8px;
	font-size: 16px;
	line-height: 24px;
	letter-spacing: normal;
	display: -webkit-box;
	overflow: hidden;
	word-break: break-all;
	white-space: normal;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.cg-img-text3 {
	display: flex;
	flex-direction: column;
}

.cg-img-price {
	font-weight: 800;
	font-size: 16px;
	line-height: 24px;
	white-space: nowrap;
	letter-spacing: -0.5px;
}

.cg-img-title {
	padding-top: 12px;
	font-size: 12px;
	color: rgb(153, 153, 153);
	line-height: 18px;
	letter-spacing: normal;
	display: -webkit-box;
	overflow: hidden;
	word-break: break-all;
	white-space: normal;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}
</style>

<body>
	<div id="container">

		<h3 id="categori" name="categori">채소</h3>

		<div class="cg-nav">
			<div class="cg-nav-total">총 498건</div>
			<ul class="cg-nav-ul">
				<li class="cg-nav-li"><a href="/" class="cg-nav-recommend">추천순</a>
				</li>
				<li class="cg-nav-li"><a href="/" class="css-19ce13b eudxpx30">신상품순</a></li>
				<li class="cg-nav-li"><a href="/" class="css-19ce13b eudxpx30">판매량순</a></li>
				<li class="cg-nav-li"><a href="/" class="css-19ce13b eudxpx30">혜택순</a></li>
				<li class="cg-nav-li"><a href="/" class="css-19ce13b eudxpx30">낮은
						가격순</a></li>
				<li class="cg-nav-li"><a href="/" class="css-19ce13b eudxpx30">높은
						가격순</a></li>
			</ul>
		</div>

		<div class="cg-img">
			<a href="/goods/5000655" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/158469505918l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div>
							<button type="button" class="cg-img-cart">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="장바구니 아이콘">
							</button>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">무농약 깐쪽파 200g</span>
					<div class="cg-img-text3">
						<div></div>
						<span class="cg-img-price">3,090<span class="won"> 원</span></span>
					</div>
					<p class="cg-img-title">쪽 뻗은 향신채소. 무농약 깐쪽파 (200g)</p>
				</div>
			</a><a href="/goods/5031369" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1597052755228l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div>
							<button type="button" class="cg-img-cart">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="장바구니 아이콘">
							</button>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">[달콘] 초당옥수수 (레토르트) 1입</span>
					<div class="cg-img-text3">
						<div></div>
						<span class="cg-img-price">3,690<span class="won"> 원</span></span>
					</div>
					<p class="cg-img-title">간단히 데워 즐기는 달콤 옥수수</p>
				</div>
			</a><a href="/goods/5031425" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/15433075149l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div>
							<button type="button" class="cg-img-cart">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="장바구니 아이콘">
							</button>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">포항초 250g</span>
					<div class="cg-img-text3">
						<div></div>
						<span class="cg-img-price">2,690<span class="won"> 원</span></span>
					</div>
					<p class="cg-img-title">진하고 달큰한 포항 시금치 포항초 250g</p>
				</div>
			</a><a href="/goods/5041168" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://product-image.kurly.com/cdn-cgi/image/width=676,format=auto/product/image/1642523a-5b4e-48f0-bdb4-d1ddfd5233ef.jpg"
							alt="상품 이미지" loading="lazy">
						<div>
							<button type="button" class="cg-img-cart">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="장바구니 아이콘">
							</button>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">무농약 머쉬밥 80g</span>
					<div class="cg-img-text3">
						<div></div>
						<span class="cg-img-price">12,000<span class="won">
								원</span></span>
					</div>
					<p class="cg-img-title">무농약 표고, 새송이, 흰목이버섯을 조각내어 건조한 머쉬밥</p>
				</div>
			</a><a href="/goods/5041392" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1652939597314l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div>
							<button type="button" class="cg-img-cart">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="장바구니 아이콘">
							</button>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">친환경 고사리 300g</span>
					<div class="cg-img-text3">
						<div></div>
						<span class="cg-img-price">11,900<span class="won">
								원</span></span>
					</div>
					<p class="cg-img-title">편하게 요리하는 고소한 나물</p>
				</div>
			</a><a href="/goods/5042334" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1604384188545l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div>
							<button type="button" class="cg-img-cart">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="장바구니 아이콘">
							</button>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">김장용 미나리 500g</span>
					<div class="cg-img-text3">
						<div>
							<span class="discount-rate css-19lkxd2 ei5rudb0">14%</span><span
								class="cg-img-price">5,990<span class="won"> 원</span></span>
						</div>
						<span class="dimmed-price css-18tpqqq ei5rudb1">6,990<span
							class="won"> 원</span></span>
					</div>
					<p class="cg-img-title">기분 좋게 입맛 돋우는</p>
				</div>
			</a><a href="/goods/5042764" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1604384667663l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div>
							<button type="button" class="cg-img-cart">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="장바구니 아이콘">
							</button>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">김장용 청갓 300g</span>
					<div class="cg-img-text3">
						<div>
							<span class="discount-rate css-19lkxd2 ei5rudb0">8%</span><span
								class="cg-img-price">5,490<span class="won"> 원</span></span>
						</div>
						<span class="dimmed-price css-18tpqqq ei5rudb1">5,990<span
							class="won"> 원</span></span>
					</div>
					<p class="cg-img-title">입맛을 깨우는 알싸한 풍미</p>
				</div>
			</a><a href="/goods/5043305" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1573455454511l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div class="e1c07x487 css-w9ezyo e1u3dkre1" opacity="0.9">
							<span font-weight="bold" class="css-y4sfl6 e1u3dkre0">+7%쿠폰</span>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">김장용 절임 알타리 5kg (예약일 수령)</span>
					<div class="cg-img-text3">
						<div>
							<span class="discount-rate css-19lkxd2 ei5rudb0">3%</span><span
								class="cg-img-price">36,763<span class="won"> 원</span></span>
						</div>
						<span class="dimmed-price css-18tpqqq ei5rudb1">37,900<span
							class="won"> 원</span></span>
					</div>
					<p class="cg-img-title">7% 카드할인 추가 적용 시, 최종 혜택가 34,190원</p>
				</div>
			</a><a href="/goods/5043317" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1572943434381l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div class="e1c07x487 css-w9ezyo e1u3dkre1" opacity="0.9">
							<span font-weight="bold" class="css-y4sfl6 e1u3dkre0">+7%쿠폰</span>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">김장용 평창 고랭지 절임 배추 20kg (예약일 수령)</span>
					<div class="cg-img-text3">
						<div>
							<span class="discount-rate css-19lkxd2 ei5rudb0">3%</span><span
								class="cg-img-price">62,953<span class="won"> 원</span></span>
						</div>
						<span class="dimmed-price css-18tpqqq ei5rudb1">64,900<span
							class="won"> 원</span></span>
					</div>
					<p class="cg-img-title">7% 카드할인 추가 적용 시, 최종 혜택가 58,547원</p>
				</div>
			</a><a href="/goods/5043325" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1572931731508l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div class="e1c07x487 css-w9ezyo e1u3dkre1" opacity="0.9">
							<span font-weight="bold" class="css-y4sfl6 e1u3dkre0">+7%쿠폰</span>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">김장용 해남 절임 배추 20kg (예약일 수령)</span>
					<div class="cg-img-text3">
						<div>
							<span class="discount-rate css-19lkxd2 ei5rudb0">3%</span><span
								class="cg-img-price">43,553<span class="won"> 원</span></span>
						</div>
						<span class="dimmed-price css-18tpqqq ei5rudb1">44,900<span
							class="won"> 원</span></span>
					</div>
					<p class="cg-img-title">7% 카드할인 추가 적용 시, 최종 혜택가 40,505원</p>
				</div>
			</a><a href="/goods/5043335" class="cg-img-a">
				<div class="cg-img-div">
					<div class="cg-img-div-sub">
						<img
							src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1603870263444l0.jpg"
							alt="상품 이미지" loading="lazy">
						<div class="e1c07x487 css-w9ezyo e1u3dkre1" opacity="0.9">
							<span font-weight="bold" class="css-y4sfl6 e1u3dkre0">+7%쿠폰</span>
						</div>
					</div>
				</div>
				<div class="cg-img-text-div">
					<span class="cg-img-text-box"><span class="cg-img-text1">샛별배송</span></span><span
						class="cg-img-text2">[김장세트] 4인 가족 간편 김장 패키지 (예약일 수령)</span>
					<div class="cg-img-text3">
						<div>
							<span class="discount-rate css-19lkxd2 ei5rudb0">3%</span><span
								class="cg-img-price">134,830<span class="won"> 원</span></span>
						</div>
						<span class="dimmed-price css-18tpqqq ei5rudb1">139,000<span
							class="won"> 원</span></span>
					</div>
					<p class="cg-img-title">7%카드할인 추가 적용 시, 최종 혜택가 125,392원</p>
				</div>
			</a>
		</div>

	</div>
</body>
<jsp:include page="${pageContext.request.contextPath }/mainFooter.jsp"></jsp:include>
</html>