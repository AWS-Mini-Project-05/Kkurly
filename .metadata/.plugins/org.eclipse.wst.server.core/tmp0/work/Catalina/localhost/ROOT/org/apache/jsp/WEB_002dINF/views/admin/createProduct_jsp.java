/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.68
 * Generated at: 2022-11-29 02:43:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class createProduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>상품 등록</title>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/jquery-3.6.1.min.js\"></script>\r\n");
      out.write("<style>\r\n");
      out.write("\r\n");
      out.write("   #body{background-color: gray; padding-left: 5%;}\r\n");
      out.write("   #container2, #container3,#container0{width: 1300px; background-color: white;\r\n");
      out.write("    padding: 30px;\r\n");
      out.write("    border-radius: 10px;\r\n");
      out.write("    }\r\n");
      out.write("   #container3{padding-bottom: 20px} \r\n");
      out.write("    .sort{background-color: white;}\r\n");
      out.write("    #blank{width: 1000px; height: 50px ; background-color: gray}\r\n");
      out.write("   #m_menu_ctg,#p_name, #img_div{float: left;}\r\n");
      out.write("   .sort{\r\n");
      out.write("    float: left;\r\n");
      out.write("    display: inline-block;\r\n");
      out.write("    width: 200px;\r\n");
      out.write("    margin: 30px 0;\r\n");
      out.write("    border: 1px solid black;\r\n");
      out.write("   }\r\n");
      out.write("   #hr{clear: both;}\r\n");
      out.write("   li{list-style: none;  cursor: pointer;}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   li:nth-child(1){visibility: inherit}\r\n");
      out.write("   input{height: 20px; width: 400px;}\r\n");
      out.write("   h3{cursor: pointer; }\r\n");
      out.write("   /*이미지 부분*/\r\n");
      out.write("   #img_div,.image-container{display: inline-block;}\r\n");
      out.write("   #sub_input{margin-left: 300px;}\r\n");
      out.write("   \r\n");
      out.write("   /*분류 숨기기*/\r\n");
      out.write("   #s_m_1,#s_m_2,#s_m_3{display:none;};\r\n");
      out.write("   \r\n");
      out.write("   nav ul ul ul {\r\n");
      out.write("    position: absolute;\r\n");
      out.write("    top:0;\r\n");
      out.write("    left:100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("  <script>\r\n");
      out.write("//jquery\r\n");
      out.write("    $(function(){\r\n");
      out.write("        $(\"#sub_prodNm\").on(\"keyup\",function(){\r\n");
      out.write("            $(\"#prodNm\").val($(\"#sub_prodNm\").val())\r\n");
      out.write("          }) \r\n");
      out.write("        $(\"#sub_price\").on(\"keyup\",function(){\r\n");
      out.write("            $(\"#prodPrice\").val($(\"#sub_price\").val())\r\n");
      out.write("        })\r\n");
      out.write("        $(\"#sub_qty\").on(\"keyup\",function(){\r\n");
      out.write("            $(\"#prodQty\").val($(\"#sub_qty\").val())\r\n");
      out.write("          })\r\n");
      out.write("          $(\"#sub_unit\").on(\"change\",function(){\r\n");
      out.write("           $(\"#prodUnit\").val($(\"#sub_unit\").val())\r\n");
      out.write("       })\r\n");
      out.write("       $(\"#sub_vol1\").on(\"keyup\",function(){\r\n");
      out.write("           $(\"#prodVol\").val($(\"#sub_vol1\").val()+$(\"#sub_vol2\").val())\r\n");
      out.write("         })\r\n");
      out.write("      $(\"#sub_vol2\").on(\"change\",function(){\r\n");
      out.write("           $(\"#prodVol\").val($(\"#sub_vol1\").val()+$(\"#sub_vol2\").val())\r\n");
      out.write("         })  \r\n");
      out.write("         \r\n");
      out.write("\r\n");
      out.write("         \r\n");
      out.write("         \r\n");
      out.write("         \r\n");
      out.write("    })\r\n");
      out.write("   \r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body id=\"body\">\r\n");
      out.write("   ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/header_admin.jsp", out, false);
      out.write("\r\n");
      out.write("    <!--카테고리는 DB에서 불러오기-->\r\n");
      out.write("       <div id=\"container0\">\r\n");
      out.write("        <h3 title=\"상품의 카테고리를 지정하는 곳입니다.\">카테고리 - 상품명</h3>\r\n");
      out.write("        <hr>\r\n");
      out.write("        <!--카테고리-->\r\n");
      out.write("        \r\n");
      out.write("        <div id=\"m_menu_ctg\">카테고리 선택&ensp;&ensp;&ensp;</div>\r\n");
      out.write("    <nav>\r\n");
      out.write("    <ul><a href=\"#\">상온</a>\r\n");
      out.write("   		<li>메뉴 1</li>\r\n");
      out.write("    	<li>메뉴 1</li>\r\n");
      out.write("    	<li>메뉴 1</li>\r\n");
      out.write("    	<li>메뉴 1</li>\r\n");
      out.write("    	<li>메뉴 1</li>\r\n");
      out.write("    </ul>\r\n");
      out.write("    	\r\n");
      out.write("    <ul>\r\n");
      out.write("    	\r\n");
      out.write("    </ul>\r\n");
      out.write("    	\r\n");
      out.write("    <ul>냉동</ul>\r\n");
      out.write("	</nav>\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <hr id=\"hr\">\r\n");
      out.write("            <!--상품명 중복되지않게 확인하는 로직 db연동해서 하기-->\r\n");
      out.write("        <div id=\"p_name\">상품명<span style=\"color:red\">*</span>&ensp;&ensp;</div>\r\n");
      out.write("        <div id=\"p_name_input\">\r\n");
      out.write("        <input type=\"text\" id=\"sub_prodNm\">\r\n");
      out.write("        <button type=\"button\"id=\"btnCheck\" style=\"height: 30px; width: 150px;\">상품 이름 중복 확인</button>\r\n");
      out.write("        </div>\r\n");
      out.write("        <hr>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div id=\"blank\"></div>\r\n");
      out.write("    <div id=\"container2\">\r\n");
      out.write("        <h3 title=\"상품의 원하는 판매가를 기입합니다.\">주문옵션 - 판매가</h3><hr><br>\r\n");
      out.write("            판매가&ensp;&ensp;: <input type=\"text\" id=\"sub_price\"><br><br><hr>\r\n");
      out.write("            판매수량: <input type=\"text\" name=\"\" id=\"sub_qty\"><br><br><hr>\r\n");
      out.write("            판매단위: <select style=\"width:300px;height:30px;\" id=\"sub_unit\">\r\n");
      out.write("                     <option value=\"not\">--판매단위을 선택해주세요--</option>           \r\n");
      out.write("                     <option value=\"개\">개</option>\r\n");
      out.write("                     <option value=\"캔\">캔</option>\r\n");
      out.write("                     <option value=\"단\">단</option>\r\n");
      out.write("                     <option value=\"봉\">봉</option>             \r\n");
      out.write("                  </select><br><br><hr>\r\n");
      out.write("            판매중량: <input type=\"text\" name=\"\" id=\"sub_vol1\">\r\n");
      out.write("            <select style=\"width:50px;height:30px;\" id=\"sub_vol2\"> \r\n");
      out.write("                      <option value=\"not\">--판매중량을 선택해주세요--</option>           \r\n");
      out.write("                     <option value=\"g\">g</option>\r\n");
      out.write("                     <option value=\"kg\">kg</option>\r\n");
      out.write("                  </select>\r\n");
      out.write("           \r\n");
      out.write("            \r\n");
      out.write("    </div>\r\n");
      out.write("    <div id=\"blank\"></div>\r\n");
      out.write("\r\n");
      out.write("        <!--이미지는 db에 저장,  상품정보도 DB에서 저장-->\r\n");
      out.write("    <div id=\"container3\">\r\n");
      out.write("        <h3 title=\"상품의 메인 이미지를 등록하고 작성한 내용이 바르게 작성되었는지 확인합니다.\">상품 이미지 등록 및 미리보기 </h3><hr><br>\r\n");
      out.write("        <div id=\"img_div\" style=\"padding-right: 20px;\"><h4>이미지 등록</h4></div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"image-container\">\r\n");
      out.write("            <div id=\"attZone\"></div>\r\n");
      out.write("            <input style=\"display: block;\" type=\"file\" id=\"input-image\">\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        <br><br> <br><br>   \r\n");
      out.write("        <form action=\"/product/prodInsert.do\" method=\"post\" id=\"insertForm\" enctype=\"multipart/form-data\">\r\n");
      out.write("        카테고리: <input type=\"text\" id=\"sub_cat\" name=\"sub_cat\"> <br><br>\r\n");
      out.write("        상품명&ensp;&ensp;: <input type=\"text\" id=\"prodNm\"  name=\"prodNm\" readonly value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sub_prodNm }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" style=\"background-color: lightgray;\"> <br><br>\r\n");
      out.write("        판매가&ensp;&ensp;: <input type=\"text\" id=\"prodPrice\"  name=\"prodPrice\" readonly style=\"background-color: lightgray;\"> <br><br>\r\n");
      out.write("        판매수량: <input type=\"text\" id=\"prodQty\"  name=\"prodQty\" readonly style=\"background-color: lightgray;\"> <br><br>\r\n");
      out.write("        판매단위: <input type=\"text\" id=\"prodUnit\"   name=\"prodUnit\" readonly style=\"background-color: lightgray;\"> <br><br>\r\n");
      out.write("        판매중량: <input type=\"text\" id=\"prodVol\"  name=\"prodVol\" readonly style=\"background-color: lightgray;\"> <br><br>\r\n");
      out.write("        <input type=\"file\" id=\"uploadFiles\" name=\"uploadFiles\" style=\"display: none;\">\r\n");
      out.write("       &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;  <input type=\"submit\" style=\"height: 30px;\" value=\"새 상품 작성하기\" id=\"sub_input\"> <br><br>\r\n");
      out.write("        </form>\r\n");
      out.write("    </div>\r\n");
      out.write("   ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/footer_admin.jsp", out, false);
      out.write("   \r\n");
      out.write("      <script>\r\n");
      out.write("      //물건이름 중복체크\r\n");
      out.write("      $(function(){\r\n");
      out.write("         $(\"#btnCheck\").on(\"click\",function(){\r\n");
      out.write("            var prodNm = $('#prodNm').val();\r\n");
      out.write("            $.ajax({\r\n");
      out.write("            url: '/product/prodNameCheck.do',\r\n");
      out.write("            type : 'post',\r\n");
      out.write("            data :{\r\n");
      out.write("               \"prodNm\" : prodNm\r\n");
      out.write("            },\r\n");
      out.write("            success : function(obj){\r\n");
      out.write("               console.log(\"Check :\"+ obj);\r\n");
      out.write("               if(!obj){\r\n");
      out.write("                  alert(\"이미 사용 중인 상품명 입니다!\");\r\n");
      out.write("                  $('#prodNm').val('');\r\n");
      out.write("                  $('#prodNm').focus();\r\n");
      out.write("               } else {\r\n");
      out.write("                  alert(\"사용 가능한 상품명 입니다!\");\r\n");
      out.write("                  }\r\n");
      out.write("            },\r\n");
      out.write("            error : function(e){\r\n");
      out.write("               console.log(e);\r\n");
      out.write("            }\r\n");
      out.write("            });\r\n");
      out.write("         });\r\n");
      out.write("      });\r\n");
      out.write("      //파일 첨부 영역.\r\n");
      out.write("      let uploadFiles = [];\r\n");
      out.write("      \r\n");
      out.write("		$(function() {\r\n");
      out.write("			//input type=file이 변경되면 미리보기 동작\r\n");
      out.write("			$(\"#input-image\").on(\"change\", function(e) {\r\n");
      out.write("				//input type=file에 추가된 파일들을 변수로 받아옴\r\n");
      out.write("				const files = e.target.files;\r\n");
      out.write("\r\n");
      out.write("				//변수로 받아온 파일들을 배열 형태로 변환\r\n");
      out.write("				const fileArr = Array.prototype.slice.call(files);\r\n");
      out.write("				\r\n");
      out.write("				//배열에 있는 파일들을 하나씩 꺼내서 처리\r\n");
      out.write("				for(f of fileArr) {\r\n");
      out.write("					imageLoader(f);\r\n");
      out.write("				}\r\n");
      out.write("			});\r\n");
      out.write("			$(\"#insertForm\").on(\"submit\", function(e) {\r\n");
      out.write("				//e.preventDefault();\r\n");
      out.write("				//마지막으로 btnAtt에 uploadFiles에 있는 파일들을 담아준다.\r\n");
      out.write("				dt = new DataTransfer();\r\n");
      out.write("				\r\n");
      out.write("				for(f in uploadFiles) {\r\n");
      out.write("					const file = uploadFiles[f];\r\n");
      out.write("					dt.items.add(file);\r\n");
      out.write("				}\r\n");
      out.write("				\r\n");
      out.write("				$(\"#uploadFiles\")[0].files = dt.files;\r\n");
      out.write("				\r\n");
      out.write("\r\n");
      out.write("				console.log($(\"#insertForm\").serialize());\r\n");
      out.write("			});		\r\n");
      out.write("		});\r\n");
      out.write("		\r\n");
      out.write("		\r\n");
      out.write("		//미리보기 영역에 들어갈 img태그 생성 및 선택된 파일을 Base64 인코딩된 문자열 형태로 변환하여\r\n");
      out.write("		//미리보기가 가능하게 해줌\r\n");
      out.write("		function imageLoader(file) {\r\n");
      out.write("			uploadFiles.push(file);\r\n");
      out.write("			\r\n");
      out.write("			let reader = new FileReader();\r\n");
      out.write("			\r\n");
      out.write("			reader.onload = function(e) {\r\n");
      out.write("				//이미지를 표출해줄 img태그 선언\r\n");
      out.write("				let img = document.createElement(\"img\");\r\n");
      out.write("				img.setAttribute(\"style\", \"width: 100%; height: 100%; z-index: none;\");\r\n");
      out.write("				\r\n");
      out.write("				//이미지 파일인지 아닌지 체크\r\n");
      out.write("				if(file.name.toLowerCase().match(/(.*?)\\.(jpg|jpeg|png|gif|svg|bmp)$/)) {\r\n");
      out.write("					//이미지 파일 미리보기 처리\r\n");
      out.write("					img.src = e.target.result;\r\n");
      out.write("				} else {\r\n");
      out.write("					//일반 파일 미리보기 처리\r\n");
      out.write("					img.src = \"/images/defaultFileImg.png\";\r\n");
      out.write("				}\r\n");
      out.write("				\r\n");
      out.write("				//미리보기 영역에 추가\r\n");
      out.write("				//미리보기 이미지 태그와 삭제 버튼 그리고 파일명을 표출하는 p태그를 묶어주는 div 만들어서\r\n");
      out.write("				//미리보기 영역에 추가\r\n");
      out.write("				$(\"#attZone\").append(makeDiv(img, file));\r\n");
      out.write("			};\r\n");
      out.write("			\r\n");
      out.write("			//파일을 Base64 인코딩된 문자열로 변경\r\n");
      out.write("			reader.readAsDataURL(file);\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("		//미리보기 영역에 들어가 div(img+button+p)를 생성하고 리턴\r\n");
      out.write("		function makeDiv(img, file) {\r\n");
      out.write("			//div 생성\r\n");
      out.write("			let div = document.createElement(\"div\");\r\n");
      out.write("			div.setAttribute(\"style\", \"display: inline-block; position: relative;\"\r\n");
      out.write("			+ \" width: 150px; height: 120px; margin: 5px; border: 1px solid #00f; z-index: 1;\");\r\n");
      out.write("			\r\n");
      out.write("			//button 생성\r\n");
      out.write("			let btn = document.createElement(\"input\");\r\n");
      out.write("			btn.setAttribute(\"type\", \"button\");\r\n");
      out.write("			btn.setAttribute(\"value\", \"x\");\r\n");
      out.write("			btn.setAttribute(\"delFile\", file.name);\r\n");
      out.write("			btn.setAttribute(\"style\", \"width: 30px; height: 30px; position: absolute;\"\r\n");
      out.write("			+ \" right: 0px; bottom: 0px; z-index: 999; background-color: rgba(255, 255, 255, 0.1);\"\r\n");
      out.write("			+ \" color: #f00;\");\r\n");
      out.write("			\r\n");
      out.write("			//버튼 클릭 이벤트\r\n");
      out.write("			//버튼 클릭 시 해당 파일이 삭제되도록 설정\r\n");
      out.write("			btn.onclick = function(e) {\r\n");
      out.write("				//클릭된 버튼\r\n");
      out.write("				const ele = e.srcElement;\r\n");
      out.write("				//delFile(파일이름) 속성 꺼내오기: 삭제될 파일명\r\n");
      out.write("				const delFile = ele.getAttribute(\"delFile\");\r\n");
      out.write("				\r\n");
      out.write("				for(let i = 0; i < uploadFiles.length; i++) {\r\n");
      out.write("					//배열에 담아놓은 파일들중에 해당 파일 삭제\r\n");
      out.write("					if(delFile == uploadFiles[i].name) {\r\n");
      out.write("						//배열에서 i번째 한개만 제거\r\n");
      out.write("						uploadFiles.splice(i, 1);\r\n");
      out.write("					}\r\n");
      out.write("				}\r\n");
      out.write("				\r\n");
      out.write("				//버튼 클릭 시 btnAtt에 첨부된 파일도 삭제\r\n");
      out.write("				//input type=file은 첨부된 파일들을 fileList 형태로 관리\r\n");
      out.write("				//fileList에 일반적인 File객체를 넣을 수 없고\r\n");
      out.write("				//DataTransfer라는 클래스를 이용하여 완전한 fileList 형태로 만들어서\r\n");
      out.write("				//input.files에 넣어줘야 된다.\r\n");
      out.write("				dt = new DataTransfer();\r\n");
      out.write("				\r\n");
      out.write("				for(f in uploadFiles) {\r\n");
      out.write("					const file = uploadFiles[f];\r\n");
      out.write("					dt.items.add(file);\r\n");
      out.write("				}\r\n");
      out.write("				\r\n");
      out.write("				$(\"#input-image\")[0].files = dt.files;\r\n");
      out.write("				\r\n");
      out.write("				//해당 img를 담고있는 부모태그인 div 삭제\r\n");
      out.write("				const parentDiv = ele.parentNode;\r\n");
      out.write("				$(parentDiv).remove();\r\n");
      out.write("			}\r\n");
      out.write("			\r\n");
      out.write("			//파일명 표출할 p태그 생성\r\n");
      out.write("			const fName = document.createElement(\"p\");\r\n");
      out.write("			fName.setAttribute(\"style\", \"display: inline-block; font-size: 8px;\");\r\n");
      out.write("			fName.textContent = file.name;\r\n");
      out.write("			\r\n");
      out.write("			//div에 하나씩 추가\r\n");
      out.write("			div.appendChild(img);\r\n");
      out.write("			div.appendChild(btn);\r\n");
      out.write("			div.appendChild(fName);\r\n");
      out.write("			\r\n");
      out.write("			//완성된 div 리턴\r\n");
      out.write("			return div;\r\n");
      out.write("		}\r\n");
      out.write("\r\n");
      out.write("   </script>   \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
