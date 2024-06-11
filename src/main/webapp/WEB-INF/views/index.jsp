<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<!DOCTYPE html>
<html lang="en">
<head>
<link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet" type="text/css">
  <title>Left Sidebar and Right Content</title>
</head>
<body>
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="20%" valign="top">
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
		                <td>- 등록</td>
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
      </td>
      <td width="80%" valign="top">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr> 
		    <td>&nbsp;</td>
		  </tr>
		  <tr> 
		    <td height="25"><img src="<%=request.getContextPath()%>/resources/image/icon.gif" width="9" height="9" align="absmiddle"> 
		      <strong>사원조회</strong></td>
		  </tr>
		  <tr> 
		    <td><table width="640" border="0" cellspacing="0" cellpadding="0">
		        <tr> 
		          <td height="30" align="right"><select name="select" class="INPUT">
		              <option selected>::::: 전체 :::::</option>
		            </select> <input name="textfield" type="text" class="INPUT"> <a href="#"><img src="<%=request.getContextPath()%>/resources/image/search.gif" width="49" height="18" border="0" align="absmiddle"></a></td>
		        </tr>
		        <tr> 
		          <td><table width="640" border="0" cellspacing="0" cellpadding="0">
		              <tr> 
		                <td height="3" background="<%=request.getContextPath()%>/resources/image/bar_bg1.gif"></td>
		              </tr>
		              <tr align="center" bgcolor="F8F8F8"> 
		                <td height="26" align="right" bgcolor="F8F8F8" style="padding-right:10"><img src="<%=request.getContextPath()%>/resources/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
		                  <a href="#">수정</a> <img src="<%=request.getContextPath()%>/resources/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
		                  <a href="#">인사기록카드</a> <img src="<%=request.getContextPath()%>/resources/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
		                  <a href="#">경력정보</a> <img src="<%=request.getContextPath()%>/resources/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
		                  <a href="#">근무정보</a> </td>
		              </tr>
		              <tr align="center" bgcolor="F8F8F8"> 
		                <td height="1" align="right" bgcolor="B1B1B1"></td>
		              </tr>
		              <tr> 
		                <td>
						<!-------------------------  리스트 ------------------------------>
						<table width="640" border="0" cellspacing="0" cellpadding="0">
		                    <tr> 
		                      <td width="35" height="20" align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
		                      <td width="85" align="center">홍길동</td>
		                      <td width="153" align="center">123456-1234567</td>
		                      <td width="91" align="center">남</td>
		                      <td width="91" align="center">중급</td>
		                      <td width="91" align="center">상태</td>
		                      <td width="94" align="center">근무</td>
		                    </tr>
		                    <tr> 
		                      <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
		                    </tr>
		                    <tr> 
		                      <td height="20" align="center"><input type="checkbox" name="checkbox2" value="checkbox"></td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                    </tr>
		                    <tr> 
		                      <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
		                    </tr>
		                    <tr> 
		                      <td height="20" align="center"><input type="checkbox" name="checkbox3" value="checkbox"></td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                    </tr>
		                    <tr> 
		                      <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
		                    </tr>
		                    <tr> 
		                      <td height="20" align="center"><input type="checkbox" name="checkbox4" value="checkbox"></td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                    </tr>
		                    <tr> 
		                      <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
		                    </tr>
		                    <tr> 
		                      <td height="20" align="center"><input type="checkbox" name="checkbox5" value="checkbox"></td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                    </tr>
		                    <tr> 
		                      <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
		                    </tr>
		                    <tr> 
		                      <td height="20" align="center"><input type="checkbox" name="checkbox6" value="checkbox"></td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                    </tr>
		                    <tr> 
		                      <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
		                    </tr>
		                    <tr> 
		                      <td height="20" align="center"><input type="checkbox" name="checkbox7" value="checkbox"></td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                    </tr>
		                    <tr> 
		                      <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
		                    </tr>
		                    <tr> 
		                      <td height="20" align="center"><input type="checkbox" name="checkbox8" value="checkbox"></td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                    </tr>
		                    <tr> 
		                      <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
		                    </tr>
		                    <tr> 
		                      <td height="20" align="center"><input type="checkbox" name="checkbox9" value="checkbox"></td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                    </tr>
		                    <tr> 
		                      <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
		                    </tr>
		                    <tr> 
		                      <td height="20" align="center"><input type="checkbox" name="checkbox10" value="checkbox"></td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                      <td align="center">&nbsp;</td>
		                    </tr>
		                    <tr> 
		                      <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
		                    </tr>
		                    <tr> 
		                      <td height="35" colspan="7" align="center" style="padding-bottom:3"><a href="#"><img src="<%=request.getContextPath()%>/resources/image/prev.gif" width="22" height="15" border="0" align="absmiddle"></a>&nbsp;<a href="#"><img src="<%=request.getContextPath()%>/resources/image/pre.gif" width="42" height="15" border="0" align="absmiddle"></a>&nbsp; 
		                        1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 &nbsp;<a href="#"><img src="<%=request.getContextPath()%>/resources/image/next.gif" width="42" height="15" border="0" align="absmiddle"></a>&nbsp;<a href="#"><img src="<%=request.getContextPath()%>/resources/image/next_.gif" width="22" height="15" border="0" align="absmiddle"></a></td>
		                    </tr>
		                  </table>
		 				<!-------------------------  리스트 ------------------------------>
						  </td>
		              </tr>
		              <tr align="center" bgcolor="F8F8F8"> 
		                <td height="1" align="right" bgcolor="B1B1B1"></td>
		              </tr>
		              <tr align="center" bgcolor="F8F8F8"> 
		                <td height="26" align="right" bgcolor="F8F8F8" style="padding-right:10"><img src="<%=request.getContextPath()%>/resources/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
		                  <a href="#">수정</a> <img src="<%=request.getContextPath()%>/resources/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
		                  <a href="#">인사기록카드</a> <img src="<%=request.getContextPath()%>/resources/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
		                  <a href="#">경력정보</a> <img src="<%=request.getContextPath()%>/resources/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
		                  <a href="#">근무정보</a> </td>
		              </tr>
		            </table></td>
		        </tr>
		        <tr> 
		          <td height="3" background="<%=request.getContextPath()%>/resources/image/bar_bg1.gif"></td>
		        </tr>
		      </table></td>
		  </tr>
		</table>
      </td>
    </tr>
  </table>
</body>
</html>