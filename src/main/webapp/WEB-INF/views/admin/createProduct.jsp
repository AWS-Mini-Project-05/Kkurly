<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보 편집</title>
<script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script>
<style>
	#body{margin-left: 30px}

   #container2, #container3,#container0{width: 1300px; background-color: lightpink;
    
    padding: 30px;
    border-radius: 10px;
    }
    
    .sort{background-color: white;}
    #blank{width: 1000px; height: 50px ; background-color: white}
   #m_menu_ctg,#p_name, #img_div{float: left;}
   .sort{
    float: left;
    display: inline-block;
    width: 200px;
    margin: 30px 0;
    border: 1px solid black;
   }
   #hr{clear: both;}
   li{list-style: none; margin-top: 10px; cursor: pointer;}


   li:nth-child(1){visibility: inherit}
   input{height: 20px; width: 400px;}
   h3{cursor: pointer; }
   /*이미지 부분*/
   #img_div,.image-container{display: inline-block;}
   #sub_input{margin-left: 300px;}
   
</style>
  <script>
    //이미지 미리보기 태그
    document.addEventListener("DOMContentLoaded",function(){
    function readImage(input) {
        // 인풋 태그에 파일이 있는 경우
        if(input.files && input.files[0]) {
            // 이미지 파일인지 검사 (생략)
            // FileReader 인스턴스 생성
            const reader = new FileReader()
            // 이미지가 로드가 된 경우
            reader.onload = e => {
                const previewImage = document.getElementById("preview-image")
                previewImage.src = e.target.result
            }
            // reader가 이미지 읽도록 하기
            reader.readAsDataURL(input.files[0])
        }
    }
    // input file에 change 이벤트 부여
    const inputImage = document.getElementById("input-image")
    inputImage.addEventListener("change", e => {
        readImage(e.target)
    })
    //,,,,
    //제출하기
})
//jquery
    $(function(){
        $("#prodNm").on("keyup",function(){
            $("#sub_prodNm").val($("#prodNm").val())
          })
        $("#prodPrice").on("keyup",function(){
            $("#sub_price").val($("#prodPrice").val())
        })
        $("#prodQty").on("keyup",function(){
            $("#sub_qty").val($("#prodQty").val())
          })
    })

</script>
</head>
<body>
	<jsp:include page="/header_admin.jsp"></jsp:include>
    <!--카테고리는 DB에서 불러오기-->
    <div id="body">
    	<div id="container0">
        <h3 title="상품의 카테고리를 지정하는 곳입니다.">카테고리 - 상품명</h3>
        <hr>
        <!--카테고리-->
        
        <div id="m_menu_ctg">카테고리 선택&ensp;&ensp;&ensp;</div>
        
        <!--대분류-->
        <div id="b_sort" class="sort">
            <ul>
                <li id="s_b_1">대분류1</li>
                <li id="s_b_2">대분류1</li>
                <li id="s_b_3">대분류1</li>
                <li id="s_b_4">대분류1</li>
            </ul>
        </div>
            <!--중분류-->
        <div id="m_sort" class="sort">
           <ul>
                <li class="m_sorts">중분류1</li>
                <li class="m_sorts">중분류1</li>
                <li class="m_sorts">중분류1</li>
                <li class="m_sorts">중분류1</li>
           </ul>
        </div>
        <!--소분류-->
        <div id="s_sort" class="sort">
            <ul>
                <li>중분류1</li>
                <li>중분류1</li>
                <li>중분류1</li>
                <li>중분류1</li>
           </ul>
        </div>
        <!--세분류-->
        <div id="ss_sort" class="sort">
            <ul>
                <li>중분류1</li>
                <li>중분류1</li>
                <li>중분류1</li>
                <li>중분류1</li>
           </ul>
        </div>
        <hr id="hr">
            <!--상품명 중복되지않게 확인하는 로직 db연동해서 하기-->
        <div id="p_name">상품명<span style="color:red">*</span>&ensp;&ensp;</div>
        <div id="p_name_input">
        <input type="text" id="prodNm">
        <button type="button"id="btnCheck" style="height: 30px; width: 150px;">상품 이름 중복 확인</button>
        </div>
        <hr>
    </div>
    <div id="blank"></div>
    <div id="container2">
        <h3 title="상품의 원하는 판매가를 기입합니다.">주문옵션 - 판매가</h3><hr><br>
            판매가&ensp;&ensp;: <input type="text" id="prodPrice"><br><br><hr>
            판매수량: <input type="text" name="" id="prodQty"><br><br><hr>
    </div>
    <div id="blank"></div>

        <!--이미지는 db에 저장,  상품정보도 DB에서 저장-->
    <div id="container3">
        <h3 title="상품의 메인 이미지를 등록하고 작성한 내용이 바르게 작성되었는지 확인합니다.">상품 이미지 등록 및 미리보기 </h3><hr><br>
        <div id="img_div" style="padding-right: 20px;"><h4>이미지 등록</h4></div>
        <div class="image-container">
            <img style="width: 150px;" id="preview-image" src="https://dummyimage.com/500x500/ffffff/000000.png&text=preview+image">
            <input style="display: block;" type="file" id="input-image">
        </div>
        <br><br> <br><br>   
        <form action="/product/prodInsert.do" method="post">
        카테고리: <input type="text" id="sub_cat"> <br><br>
        상품명&ensp;&ensp;: <input type="text" id="sub_prodNm" readonly style="background-color: lightgray;"> <br><br>
        판매가&ensp;&ensp;: <input type="text" id="sub_price" readonly style="background-color: lightgray;"> <br><br>
        판매수량: <input type="text" id="sub_qty" readonly style="background-color: lightgray;"> <br><br>
       &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;  <input type="submit" style="height: 30px;" value="새 상품 작성하기" id="sub_input"> <br><br>
        </form>
    </div>
    </div>
	<jsp:include page="/footer.jsp"></jsp:include>	
		<script>
		$(function(){
			$("#btnCheck").on("click",function(){
				var prodNm = $('#prodNm').val();
				$.ajax({
				url: '/product/prodNameCheck.do',
				type : 'post',
				data :{
					"prodNm" : prodNm
				},
				success : function(obj){
					console.log("Check :"+ obj);
					if(!obj){
						alert("이미 사용 중인 상품명 입니다!");
						$('#prodNm').val('');
						$('#prodNm').focus();
					} else {
						alert("사용 가능한 상품명 입니다!");
						}
				},
				error : function(e){
					console.log(e);
				}
				});
			});
		});
	</script>	
</body>
</html>