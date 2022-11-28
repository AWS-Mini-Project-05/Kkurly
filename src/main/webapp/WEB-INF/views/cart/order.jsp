<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>껄리 주문서</title>
<style>
section {
	width: 1040px; /* height:1200px; */
	height: auto;
	margin: 0 auto;
/* 	align-items: center; */
}

#title {
	clear: both;
	text-align: center;
	font-size: 1.8em;
	margin-top: 50px; margin-bottom: 50px;
}

.sub-title {
	border-bottom: 1px solid black;
	padding-bottom: 17px;
	font-size: 22px;
}
.fold {
	border-bottom: 1px solid black;
	padding-bottom: 13px;
	font-size: 22px;
	display: flex;
	align-items: center;
}
.fold .prod-fold {
	margin-left: 925px;
}

.prod-table {
	display: none;
}
.prod-table tr {
	height: 140px;
}

#ordererTb tr {
	height: 38px;
}
#ordererTb tr th {
	width: 200px;
	text-align: left;	
}
#ordererTb tr td {
	width: 400px;
}
#ordererTb tr:last-child {
	font-size: 13px;
	color: #A4A4A4;
}

#orderInfo tr {
	height: 38px;
}
#orderInfo tr th {
	width: 200px;
	text-align: left;
}

#coupon {
	float: left;
}
#coupon tr {
	height: 38px;
}
#coupon tr th {
	width: 200px;
	text-align: left;
}
#coupon select {
	width: 500px;
}

.sub-title-exc {
	width: 740px;
	border-bottom: 1px solid black;
	padding-bottom: 17px;
	font-size: 22px;
}
#exc tr{
	height: 38px;
}
#exc tr th {
	width: 200px;
	text-align: left;
}

#price {
	float: right;
	margin: 0 auto;
	width: 270px; height: 350px;
}
#priceTb {
	width: 270px;
	padding: 10px;
}
#priceTb td {
	align-items: center;
}
#priceTb .priceTxt {

}
#priceTb .priceNum {
	text-align: right;
}

</style>
</head>
<body>
<header>
	<jsp:include page="${pageContext.request.contextPath }/mainHeader.jsp"></jsp:include>
</header>

<section>
	<div id="title">
		<p>주문서</p>
	</div>
	
	<div>
		<div class="fold">
			<span>주문 상품</span>
			<span class="prod-fold"><input type="image" src="${pageContext.request.contextPath }/images/unfold.png" 
				class="btn-fold" value="unfold"></span>
		</div>
		<table class="prod-table" style="width: 1040px;">
			<tr>
				<td style="width: 9%;">
					<img src="${pageContext.request.contextPath }/images/img-prod01.png" style="width: 62px; height: 80px;">
				</td>
				<td style="width: 68%;">
					<p>[껄리] 이 육개장이 ㅇ러메나 맛있게</p>
				</td>
				<td style="width: 8%; text-align: right;">
					2개
				</td>
				<td style="width: 15%; text-align: right; font-weight: bold;">
					104,000원
				</td>
			</tr>
			<tr>
				<td style="width: 9%;">
					<img src="${pageContext.request.contextPath }/images/img-prod01.png" style="width: 62px; height: 80px;">
				</td>
				<td style="width: 68%;">
					<p>[껄리] 이 육개장이 ㅇ러메나 맛있게</p>
				</td>
				<td style="width: 8%; text-align: right;">
					2개
				</td>
				<td style="width: 15%; text-align: right; font-weight: bold;">
					104,000원
				</td>
			</tr>
			<tr>
				<td style="width: 9%;">
					<img src="${pageContext.request.contextPath }/images/img-prod01.png" style="width: 62px; height: 80px;">
				</td>
				<td style="width: 68%;">
					<p>[껄리] 이 육개장이 ㅇ러메나 맛있게</p>
				</td>
				<td style="width: 8%; text-align: right;">
					2개
				</td>
				<td style="width: 15%; text-align: right; font-weight: bold;">
					104,000원
				</td>
			</tr>
		
		</table>
		
	</div>
	
	<div>
		<p class="sub-title">주문자 정보</p>
		<table id="ordererTb">
			<tr>
				<th>보내는 분 </th>
				<td>신상품</td>
			</tr>
			<tr>
				<th>휴대폰</th>
				<td>010-01234-4321</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>kkurly@naver.net</td>
			</tr>
			<tr>
				<th></th>
				<td>이메일을 통해 주문처리과정을 보내드립니다.<br>
					정보 변경은 마이컬리 > 개인정보 수정 메뉴에서 가능합니다.
				</td>
			</tr>
		</table>
	</div>

	<div>
		<p class="sub-title">배송 정보</p>
		<table id="orderInfo">
			<tr>
				<th>배송지 </th>
				<td>
					<p style="font-size: 14px; background-color: #D8D8D8; border-radius: 5%; width: 70px; text-align: center;">
						기본배송지
					</p>
					서울 서초구 서초대로77길 54 서초더블유타워 13층
				</td>
			</tr>
			<tr>
				<th>상세 정보</th>
				<td>
					<input type="text">
				</td>
			</tr>
		</table>
	</div>
	
	<div style="width: 740px; float: left;">
		<p class="sub-title-exc">쿠폰</p>
		<table id="coupon">
			<tr>
				<th>쿠폰 적용 </th>
				<td>
					<select multiple size="1">
						<option value="1">최초 가입 기념 할인 쿠폰 10%</option>
						<option value="2">최초 가입 기념 할인 쿠폰 15%</option>
						<option value="3">최초 가입 기념 할인 쿠폰 20%</option>
					</select>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="price">
		<div style="font-size: 22px;">결제 금액</div>
		<div style="background-color: #f5f5f5; margin-top: 20px;">
			<table id="priceTb">
				<tr style="height: 35px;">
					<td class="priceTxt">주문금액 </td>
					<td class="priceNum">103,435</td>
					<td>원 </td>
				</tr>
				<tr style="font-size: 13px; color: #A4A4A4;">
					<td class="priceTxt subTxt">└ 상품금액 </td>
					<td class="priceNum">105,370</td>
					<td>원 </td>
				</tr>
				<tr style="font-size: 13px; color: #A4A4A4;">
					<td class="priceTxt subTxt">└ 상품할인금액 </td>
					<td class="priceNum">- 1,935</td>
					<td>원 </td>
				</tr>
				<tr style="height: 35px;">
					<td class="priceTxt">배송비 </td>
					<td class="priceNum">0</td>
					<td>원 </td>
				</tr>
				<tr style="height: 35px; border-bottom: 1px solid black;">
					<td class="priceTxt">쿠폰할인 </td>
					<td class="priceNum">0</td>
					<td>원 </td>
				</tr>
				<tr>
					<td colspan="3"><hr></td>
				</tr>
				<tr style="height: 35px; border-top: 1px solid black;">
					<td class="priceTxt">최종결제금액 </td>
					<td class="priceNum" style="font-size: 23px;">103,435</td>
					<td>원 </td>
				</tr>
			</table>
		</div>
	</div>
	
	<div id="exc" style="clear: both;">
		<p class="sub-title-exc">결제 수단</p>
		<table>
			<tr>
				<th>결제수단 선택</th>
				<td>결제수단 선택 임시 텍스트</td>
			</tr>
		</table>
	</div>
	
	<div style="width: 1040px; text-align: center;">
		<input type="button" value="103,435원 결제하기" style="margin-top: 30px; width: 250px;
			height: 50px; font-size: 17px; background-color: #6A0888; border: none;
			cursor: pointer; border-radius: 2%; color: white;">
	</div>
</section>

<header>
	<jsp:include page="${pageContext.request.contextPath }/mainFooter.jsp"></jsp:include>
</header>

<script>
	$(function() {
		$(".btn-fold").click(function(e) {
			if ($(this).val() == "fold") {
				$(this).attr("src", "${pageContext.request.contextPath }/images/unfold.png");
				$(this).val("unfold");
				$(".prod-table").hide();
				
			} else if ($(this).val() == "unfold"){
				$(this).attr("src", "${pageContext.request.contextPath }/images/fold.png");
				$(this).val("fold");
				$(".prod-table").show();
			}
		});
	});
</script>
</body>
</html>