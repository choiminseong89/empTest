<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr> 
	    <td>&nbsp;</td>
	  </tr>
	  <tr> 
	    <td align="center" valign="top"><table width="170" height="300" border="0" cellpadding="0" cellspacing="0">
	        <tr> 
	          <td height="9"><img src="<%=request.getContextPath()%>/resources/image/left_top.gif" width="170" height="9"></td>
	          <%-- <c:if test="${not empty message}">
			       <h1>${message}</h1>
			  </c:if>
			  <c:if test="${not empty asd}">
			       <h1>${asd}</h1>
			  </c:if> --%>
	        </tr>
	        <tr> 
	          <td align="center" valign="top" background="<%=request.getContextPath()%>/resources/image/left_bg.gif">
			  <!----------------------  메뉴들 ----------------------------->
			  <table width="150" border="0" cellspacing="0" cellpadding="0">
	              <tr> 
	                <td width="17" height="20"><img src="<%=request.getContextPath()%>/resources/image/left_icon.gif" width="11" height="11" align="absmiddle"></td>
	                <td width="133"><a href="#">기본정보</a></td>
	              </tr>
	              <tr> 
	                <td height="20">&nbsp;</td>
	                <td><a href="<%=request.getContextPath()%>/insertUserPage">- 등록</a></td>
	              </tr>
	              <tr> 
	                <td height="20"><img src="<%=request.getContextPath()%>/resources/image/left_icon.gif" width="11" height="11" align="absmiddle"></td>
	                <td>직원명부</td>
	              </tr>
	              <tr> 
	                <td height="20"><img src="<%=request.getContextPath()%>/resources/image/left_icon.gif" width="11" height="11" align="absmiddle"></td>
	                <td>퇴직자현황</td>
	              </tr>
	              <tr> 
	                <td height="20"><img src="<%=request.getContextPath()%>/resources/image/left_icon.gif" width="11" height="11" align="absmiddle"></td>
	                <td>예비인력정보</td>
	              </tr>
	              <tr> 
	                <td height="20"><img src="<%=request.getContextPath()%>/resources/image/left_icon.gif" width="11" height="11" align="absmiddle"></td>
	                <td>거래처정보</td>
	              </tr>
	              <tr> 
	                <td height="20">&nbsp;</td>
	                <td>- 등록</td>
	              </tr>
	            </table>
			  <!----------------------  메뉴들 ----------------------------->
				</td>
	        </tr>
	        <tr> 
	          <td height="9"><img src="<%=request.getContextPath()%>/resources/image/left_bottom.gif" width="170" height="9"></td>
	        </tr>
	      </table></td>
	  </tr>
	  <tr> 
	    <td>&nbsp;</td>
	  </tr>
	  <tr> 
	    <td align="center"><table width="170" height="49" border="0" cellpadding="0" cellspacing="0">
	        <tr> 
	          <td align="center" background="<%=request.getContextPath()%>/resources/image/left_box.gif">
			  <!------------------------------ 경력검색 ---------------------------------->
			  <table width="155" border="0" cellspacing="0" cellpadding="0">
	              <tr> 
	                <td width="17"><img src="<%=request.getContextPath()%>/resources/image/left_icon.gif" width="11" height="11" align="absmiddle"></td>
	                <td width="143" height="20"><strong>경력검색</strong></td>
	              </tr>
	              <tr align="right"> 
	                <td colspan="2"><input name="textfield" type="text" class="flat" size="15" maxlength="14"> 
	                  <img src="<%=request.getContextPath()%>/resources/image/search.gif" width="49" height="18" align="absmiddle"></td>
	              </tr>
	            </table>
			  <!------------------------------ 경력검색 ---------------------------------->
				</td>
	        </tr>
	      </table></td>
	  </tr>
	</table>
</body>
</html>