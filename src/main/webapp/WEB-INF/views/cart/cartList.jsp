<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>껄리 장바구니</title>
<style>
 
/* 	#title      { background-color: #6a5acd;}
	#select-top { background-color: #9370db;}
	#content    { background-color: #ee82ee;}
	#select-bottom { background-color: #ba55d3;}
	#side       { background-color: #dda0dd;}
 */	 
</style>

<style>
section {
	width: 1040px; height:auto; 
	min-height: 800px;
	margin: 0 auto;
/* 	align-items: center; */

}
footer {
	clear: both;
}
/*
#container {
 	width: 1000px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;

} 
*/

#title {
	clear: both;
	text-align: center;
	font-size: 1.8em;
	margin-top: 50px; margin-bottom: 50px;
}

#select-top {
	width: 1040px;
	margin-bottom: 10px;
	float: left;
	display: flex;
	align-items: center;
}
#select-top input[type="image"] {
	/* vertical-align: middle; */
	margin-right: 5px;
}
#select-top input[type="button"] {
	background: none; border: none;
	font-size: 16px;
	cursor: pointer;
}
#select-top .vertical-line{
	margin-left: 15px; margin-right: 15px;
	color: lightgray;
}
/* #select-top #btnDelete {
	display: none;
} */

#content {
	width: 740px;
	float: left;
	border-top: 1.6px solid black;
	border-bottom: 1.6px solid lightgray;
}
/* #content table:first-child { */
#content .cold-table, .frozen-table, normal-table {
	width: 740px;
	/* border: 1px solid black; */
}
#content table td {
	/* border: 1px solid black; */
}
#content .prod-tr td:nth-child(2) {
	padding-left: 4px;
}
#content .prod-tr td:nth-child(3) {
	padding-left: 20px;
}
#content .prod-te td:last-child {
	padding-right: 6px;
	text-align: right;
}
#cold-prod {
	display: flex;
	margin-top: 10px; margin-bottom: 10px;
	align-items: center;
}
#cold-prod .prod-text {
	font-size: 1.1em;
}
#cold-prod .prod-status {
	margin-left: 2px; margin-right: 10px;
}
#cold-prod .prod-fold {
	margin-left: 600px;
}
#frozen-prod {
	display: flex;
	border-top: 1.6px solid black;
	padding-top: 10px; padding-bottom: 10px;
	align-items: center;
}
#frozen-prod .prod-text {
	font-size: 1.1em;
}
#frozen-prod .prod-status {
	margin-left: 2px; margin-right: 10px;
}
#frozen-prod .prod-fold {
	margin-left: 600px;
}
#normal-prod {
	display: flex;
	border-top: 1.6px solid black;
	padding-top: 10px; padding-bottom: 10px;
	align-items: center;
}
#normal-prod .prod-text {
	font-size: 1.1em;
}
#normal-prod .prod-status {
	margin-left: 2px; margin-right: 10px;
}
#normal-prod .prod-fold {
	margin-left: 600px;
}

#select-bottom {
	width: 740px;
	margin-top: 10px;
	float: left;
	display: flex;
	align-items: center;
}
#select-bottom input[type="image"] {
	/* vertical-align: middle; */
	margin-right: 5px;
}
#select-bottom input[type="button"] {
	background: none; border: none;
	font-size: 16px;
	cursor: pointer;
}
#select-bottom .vertical-line{
	margin-left: 15px; margin-right: 15px;
	color: lightgray;
}


#side {
	width: 270px; height: 200px;
	margin: 0 0;
	float: right;
	background-color: #f5f5f5;
	/* border: 1.6px solid lightgray; */
	/* display: inline-block; */
}
#table-price {
	width: 270px;
	padding: 10px;
	border: 1px solid black;
}
#table-price td {
	height: 35px;
}
.text-price {
	padding-left: 10px;
}
#table-price-all {
	width: 270px;
	height: 60px;
	padding: 10px;
	border: 1px solid black;
}
.num-price {
	padding-right: 10px;
	text-align: right;
}
#table-order{
	width: 270px; height: 45px;
	margin-top: 20px;
	border: none; border-radius: 2%;
	background-color: #6A0888;
	color: white;
	font-size: 19px;
	cursor: pointer;
}
/* 
input[type=checkbox] { display:none; }
input[type=checkbox] + label { 
	display: inline-block; 
	cursor: pointer; 
	line-height: 22px; 
	padding-left: 22px; 
	background: url('${pageContext.request.contextPath }/images/normal.png') left/22px no-repeat; 
}
input[type=checkbox]:checked + label { 
	background-image: url('${pageContext.request.contextPath }/images/cold.png') left/22px no-repeat; 
}
 */
</style>
</head>

<body>

<header>
	<jsp:include page="${pageContext.request.contextPath }/mainHeader.jsp"></jsp:include>
</header>

<section>
<!-- <div id="container"> -->	
<!-- title -->
	<div id="title">
		<p>장바구니</p>
	</div>
<!-- select-top -->
	<div id="select-top">
 		<span><input type="image" src="${pageContext.request.contextPath }/images/click-off.png" class="btn-img-all"></span>
 		<!-- <span><input type="checkbox" id="btn-img-all" class="btn-img-all"><label for="btn-img-all">a</label></span> -->		
 		<span><input type="button" class="btn-txt-all" value="전체선택 (0/0)"></span>
 		<span style="line-height" class="vertical-line">|</span>
 		<span><input type="button" class="btn-txt-delete" value="선택삭제"></span>
	</div>
<!-- content -->
	<div id="content">
		<!-- <p>content</p> -->
		<div id="cold-prod">
			<span class="prod-status"><img src="${pageContext.request.contextPath }/images/cold.png"></span>
			<span class="prod-text">냉장 상품</span>
			<span class="prod-fold"><input type="image" src="${pageContext.request.contextPath }/images/fold.png" 
				class="btn-cold-fold btn-fold" value="unfold"></span>
		</div>
		<table class="cold-table">
			<tr class="prod-prod" style="height:110px;">
				<td style="width:4%">
					<input type="image" class="cold-prod-table prod-table" src="${pageContext.request.contextPath }/images/click-off.png" value="off">
				</td>
				<td style="width:9%">
					<img src="${pageContext.request.contextPath }/images/img-prod01.png" style="width: 62px; height: 80px;">
				</td>
				<td style="width:47%">
					<p>[껄리] 이 육개장이 ㅇ러메나 맛있게</p>
				</td>
				<td style="width:17%;">
					<table class="count-prod" style="border: 1px solid #e6e6e6; align-items: center; border-radius: 6%;">
						<tr>
							<td><input type="image" onclick="count('minus')" src="${pageContext.request.contextPath }/images/minus.png"/></td>
							<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result">0</span></td>
							<td><input type="image" onclick="count('plus')" src="${pageContext.request.contextPath }/images/plus.png"/></td>
						</tr>
					</table>
				</td>
				<td style="width:18%">
					104,000원
				</td>
				<td style="width:5%">
					<input type="image" src="${pageContext.request.contextPath }/images/delete.png">
				</td>
			</tr>
			<tr class="prod-prod" style="height:110px;">
				<td style="width:4%">
					<input type="image" class="cold-prod-table prod-table" src="${pageContext.request.contextPath }/images/click-off.png" value="off">
				</td>
				<td style="width:9%">
					<img src="${pageContext.request.contextPath }/images/img-prod01.png" style="width: 62px; height: 80px;">
				</td>
				<td style="width:47%">
					<p>[껄리] 이 육개장이 ㅇ러메나 맛있게</p>
				</td>
				<td style="width:17%">
					<table class="count-prod" style="border: 1px solid #e6e6e6; align-items: center; border-radius: 6%;">
						<tr>
							<td><input type="image" onclick="count('minus')" src="${pageContext.request.contextPath }/images/minus.png"/></td>
							<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result">0</span></td>
							<td><input type="image" onclick="count('plus')" src="${pageContext.request.contextPath }/images/plus.png"/></td>
						</tr>
					</table>
				</td>
				<td style="width:18%">
					104,000원
				</td>
				<td style="width:5%">
					<input type="image" src="${pageContext.request.contextPath }/images/delete.png">
				</td>
			</tr>
			
		</table>
		<div id="frozen-prod">
			<span class="prod-status"><img src="${pageContext.request.contextPath }/images/frozen.png"></span>
			<span class="prod-text">냉동 상품</span>
			<span class="prod-fold"><input type="image" src="${pageContext.request.contextPath }/images/fold.png" 
				class="btn-frozen-fold btn-fold" value="unfold"></span>
		</div>
		<table class="frozen-table">
			<tr class="prod-prod" style="height:110px;">
				<td style="width:4%">	
					<input type="image" class="frozen-prod-table prod-table" src="${pageContext.request.contextPath }/images/click-off.png" value="off">
				</td>
				<td style="width:9%">
					<img src="${pageContext.request.contextPath }/images/img-prod01.png" style="width: 62px; height: 80px;">
				</td>
				<td style="width:47%">
					<p>[껄리] 이 육개장이 ㅇ러메나 맛있게</p>
				</td>
				<td style="width:17%">
					<table class="count-prod" style="border: 1px solid #e6e6e6; align-items: center; border-radius: 6%;">
						<tr>
							<td><input type="image" onclick="count('minus')" src="${pageContext.request.contextPath }/images/minus.png"/></td>
							<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result">0</span></td>
							<td><input type="image" onclick="count('plus')" src="${pageContext.request.contextPath }/images/plus.png"/></td>
						</tr>
					</table>
				</td>
				<td style="width:18%">
					104,000원
				</td>
				<td style="width:5%">
					<input type="image" src="${pageContext.request.contextPath }/images/delete.png">
				</td>
			</tr>
			<tr class="prod-prod" style="height:110px;">
				<td style="width:4%">
					<input type="image" class="frozen-prod-table prod-table" src="${pageContext.request.contextPath }/images/click-off.png" value="off">
				</td>
				<td style="width:9%">
					<img src="${pageContext.request.contextPath }/images/img-prod01.png" style="width: 62px; height: 80px;">
				</td>
				<td style="width:47%">
					<p>[껄리] 이 육개장이 ㅇ러메나 맛있게</p>
				</td>
				<td style="width:17%">
					<table class="count-prod" style="border: 1px solid #e6e6e6; align-items: center; border-radius: 6%;">
						<tr>
							<td><input type="image" onclick="count('minus')" src="${pageContext.request.contextPath }/images/minus.png"/></td>
							<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result">0</span></td>
							<td><input type="image" onclick="count('plus')" src="${pageContext.request.contextPath }/images/plus.png"/></td>
						</tr>
					</table>
				</td>
				<td style="width:18%">
					104,000원
				</td>
				<td style="width:5%">
					<input type="image" src="${pageContext.request.contextPath }/images/delete.png">
				</td>
			</tr>
			
		</table>
		<div id="normal-prod">
			<span class="prod-status"><img src="${pageContext.request.contextPath }/images/normal.png"></span>
			<span class="prod-text">상온 상품</span>
			<span class="prod-fold"><input type="image" src="${pageContext.request.contextPath }/images/fold.png"  
				class="btn-normal-fold btn-fold" value="unfold"></span>
		</div>
		<table class="normal-table">
			<tr class="prod-prod" style="height:110px;">
				<td style="width:4%">
					<input type="image" class="normal-prod-table prod-table" src="${pageContext.request.contextPath }/images/click-off.png" value="off">
				</td>
				<td style="width:9%">
					<img src="${pageContext.request.contextPath }/images/img-prod01.png" style="width: 62px; height: 80px;">
				</td>
				<td style="width:47%">
					<p>[껄리] 이 육개장이 ㅇ러메나 맛있게</p>
				</td>
				<td style="width:17%">
					<table class="count-prod" style="border: 1px solid #e6e6e6; align-items: center; border-radius: 6%;">
						<tr>
							<td><input type="image" onclick="count('minus')" src="${pageContext.request.contextPath }/images/minus.png"/></td>
							<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result">0</span></td>
							<td><input type="image" onclick="count('plus')" src="${pageContext.request.contextPath }/images/plus.png"/></td>
						</tr>
					</table>
				</td>
				<td style="width:18%">
					104,000원
				</td>
				<td style="width:5%">
					<input type="image" src="${pageContext.request.contextPath }/images/delete.png">
				</td>
			</tr>
			<tr class="prod-prod" style="height:110px;">
				<td style="width:4%">
					<input type="image" class="normal-prod-table prod-table" src="${pageContext.request.contextPath }/images/click-off.png" value="off">
				</td>
				<td style="width:9%">
					<img src="${pageContext.request.contextPath }/images/img-prod01.png" style="width: 62px; height: 80px;">
				</td>
				<td style="width:47%">
					<p>[껄리] 이 육개장이 ㅇ러메나 맛있게</p>
				</td>
				<td style="width:17%">
					<table class="count-prod" style="border: 1px solid #e6e6e6; align-items: center; border-radius: 6%;">
						<tr>
							<td><input type="image" onclick="count('minus')" src="${pageContext.request.contextPath }/images/minus.png"/></td>
							<td style="width: 30px; text-align: center; font-size: 15px;"><span id="result">0</span></td>
							<td><input type="image" onclick="count('plus')" src="${pageContext.request.contextPath }/images/plus.png"/></td>
						</tr>
					</table>
				</td>
				<td style="width:18%">
					104,000원
				</td>
				<td style="width:5%">
					<input type="image" src="${pageContext.request.contextPath }/images/delete.png">
				</td>
			</tr>
			
		</table>
	</div>
<!-- side -->
	<div id="side">
		<table id="table-price">
			<tr>
				<td class="text-price">상품금액</td>
				<td class="num-price">500,000</td>
				<td>원</td>
			</tr>
			<tr>
				<td class="text-price">상품할인금액</td>
				<td class="num-price">300,000</td>
				<td>원</td>
			</tr>
			<tr>
				<td class="text-price">배송비</td>
				<td class="num-price">200,000</td>
				<td>원</td>
			</tr>
		</table>
		<table id="table-price-all">
			<tr>
				<td class="text-price">결제예정금액</td>
				<td class="num-price">600,000</td>
				<td>원</td>
			</tr>
		</table>
		<!-- <table id="table-order">
			<tr>
				<td><input type="button" onclick="location.href='/cart/order.do'"></td>
			</tr>
		</table> -->
		<input type="button" onclick="location.href='/cart/order.do'" id="table-order" value="주문하기">
	</div>
<!-- select-bottom -->
	<div id="select-bottom">
 		<span><input type="image" src="${pageContext.request.contextPath }/images/click-off.png" class="btn-img-all"></span>		
 		<span><input type="button" class="btn-txt-all" value="전체선택 (0/0)"></span>
 		<span style="line-height" class="vertical-line">|</span>
 		<span><input type="button" class="btn-txt-delete" value="선택삭제"></span>
	</div>
<!-- </div> -->
</section>


<header>
	<jsp:include page="${pageContext.request.contextPath }/mainFooter.jsp"></jsp:include>
</header>

<script>
	let selectAllFlag = false;
	let foldColdFlag = false;
	let foldFrozenFlag = false;
	let foldNormalFlag = false;
	
	$(function() {
		$(".btn-img-all").click(function() {
			if (selectAllFlag == false) {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-on.png");
				selectAllFlag = true;
				$(".prod-table").each(function(index, item){
					$(this).val("off");
				});
				$(".prod-table").click();
			} else {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				selectAllFlag = false;
				$(".prod-table").each(function(index, item){
					$(this).val("on");
				});
				$(".prod-table").click();
			}
		});
		
		$(".btn-txt-all").click(function() {
			if (selectAllFlag == false) {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-on.png");
				selectAllFlag = true;
				$(".prod-table").each(function(index, item){
					$(this).val("off");
				});
				$(".prod-table").click();
			} else {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				selectAllFlag = false;
				$(".prod-table").each(function(index, item){
					$(this).val("on");
				});
				$(".prod-table").click();
			}
		}); 
		
		$(".btn-fold").click(function(e) {
			if ($(this).val() == "unfold") {
				$(this).attr("src", "${pageContext.request.contextPath }/images/unfold.png");
				$(this).val("fold");
				if ($(this).attr("class") == "btn-cold-fold btn-fold") $(".cold-table").hide();
				if ($(this).attr("class") == "btn-frozen-fold btn-fold") $(".frozen-table").hide();
				if ($(this).attr("class") == "btn-normal-fold btn-fold") $(".normal-table").hide();
			} else if ($(this).val() == "fold"){
				$(this).attr("src", "${pageContext.request.contextPath }/images/fold.png");
				$(this).val("unfold");
				if ($(this).attr("class") == "btn-cold-fold btn-fold") $(".cold-table").show();
				if ($(this).attr("class") == "btn-frozen-fold btn-fold") $(".frozen-table").show();
				if ($(this).attr("class") == "btn-normal-fold btn-fold") $(".normal-table").show();
			}
		});
		
		
		$(".prod-table").click(function(e) {
			e.preventDefault();
			
/* 			console.log($(this).val());
			console.log($(".prod-table").length); */
			if ($(this).val() == "on") {
				$(this).attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				$(this).val("off");
			} else if ($(this).val() == "off") {
				$(this).attr("src", "${pageContext.request.contextPath }/images/click-on.png");
				$(this).val("on");
			}
			
			let numOfChecked = 0;

			$(".prod-table").each(function(index, item){
				if($(this).val() == "on") numOfChecked += 1;
/* 				console.log($(this).val());
				console.log(numOfChecked); */
			});
			
			if (numOfChecked == $(".prod-table").length) {
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-on.png");
				selectAllFlag = true;
			} else if (numOfChecked < $(".prod-table").length){
				$(".btn-img-all").attr("src", "${pageContext.request.contextPath }/images/click-off.png");
				selectAllFlag = false;
			}


		});
	});
	
	function count(type) {
		const resultElement = document.getElementById('result');
		  
		  // 현재 화면에 표시된 값
		  let number = resultElement.innerText;
		  
		  // 더하기/빼기
		  if(type === 'plus') {
		    number = parseInt(number) + 1;
		  }else if(type === 'minus' && number > 0)  {
		    number = parseInt(number) - 1;
		  }
		  
		  // 결과 출력
		  resultElement.innerText = number;
		
		
	}
</script>

</body>
</html>