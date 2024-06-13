<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<style>	
	.pagination {
	  list-style: none; /* 리스트 마커를 제거합니다 */
	  padding: 0; /* 기본 패딩을 제거합니다 */
	}
	
	.pagination li {
	  display: inline; /* 리스트 항목을 가로로 표시합니다 */
	  margin-right: 10px; /* 각 항목 사이의 간격을 조정합니다 */
	}
	
	#preview {
        width: 300px;
        height: 300px;
        object-fit: contain; /* 이미지가 주어진 크기에 맞게 조정됩니다 */
        border: 1px solid #000; /* 시각적으로 확인하기 쉽게 테두리를 추가합니다 */
    }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/mustache.js"></script>
<script>
	var contextPath = '<%= request.getContextPath() %>';

    $(document).ready(function() {
    	var allSelected =  false;
        // 문서가 준비되면 실행될 코드
        $("#modify").click(function() {
           // 버튼이 클릭되었을 때 실행될 코드
           if($('input[name="checkbox"]:checked').length > 1){
        	   alert('1개만 수정가능')   
        	   return false;
           }
           var id = $('input[name="checkbox"]:checked').val();
           updateUserPage(id);
           
        });
        
        $("#checkAll").click(function() {
        	allSelected = !allSelected;
            // 버튼이 클릭되었을 때 실행될 코드
           $("input[name='checkbox']").prop('checked',allSelected)
        });
        
    });
    
    function previewFile() {
        const preview = document.getElementById('preview');
        const file = document.getElementById('file').files[0];
        const reader = new FileReader();

        reader.addEventListener("load", function () {
            preview.src = reader.result;
        }, false);

        if (file) {
            reader.readAsDataURL(file);
        }
    }
    
    function updateUserPage(id){
    	location.href = "${pageContext.request.contextPath}/updateUserPage?id=" + id;
    	
    }
    
    function loadPage(pageNumber) {
        $.ajax({
          url: "${pageContext.request.contextPath}/loadPage",
          type: "GET",
          data: { nowPage: pageNumber, cntPerPage : 5 },
          dataType: 'json',
          contentType: 'application/json',
          success: function(data) {
        	// Mustache 템플릿을 가져옵니다
              var template = $("#userListTemplate").html();
              var userList = data.userList;
              
              // Mustache로 데이터를 렌더링합니다
             var rendered = Mustache.render(template, { userList : data.userList });
             $("#userList").html(Mustache.render(template, { userList : data.userList }));
             
             //페이징 처리
             paging(data);
          
             
             
          },
          error: function(xhr, status, error) {
            // 오류 처리
            console.error(error);
          }
        });
      }
    
    function paging(data){
    	// 페이징 처리를 위한 데이터 사용
        var pagingData = data.paging;
        var startPage = pagingData.startPage;
        var endPage = pagingData.endPage;
        var nowPage = pagingData.nowPage;
        var lastPage = pagingData.lastPage;
		
     	// 페이징 처리된 테이블 업데이트
        var pagingHTML = '<table style="display: inline-block;">' +
                         '<tr>' +
                         '<td height="35" colspan="7" align="center" style="padding-bottom:3">' +
                         '<div style="display: block; text-align: center;">';

        
        pagingHTML += '<span style="cursor:pointer" onclick="loadPage(1)">' +
                      '<img src="<%=request.getContextPath()%>/resources/image/prev.gif" width="22" height="15" border="0" align="absmiddle"></span>&nbsp;'                          
        if (nowPage === 1) { 
    	 	pagingHTML += '<span style="cursor:pointer" onclick="loadPage(1)">' +
           '<img src="<%=request.getContextPath()%>/resources/image/pre.gif" width="42" height="15" border="0" align="absmiddle"></span>&nbsp;';	
        }else{
       	 pagingHTML += '<span style="cursor:pointer" onclick="loadPage(' + (nowPage - 1) + ')">' +
            '<img src="<%=request.getContextPath()%>/resources/image/pre.gif" width="42" height="15" border="0" align="absmiddle"></span>&nbsp;';	
        }              
                      
        

       // 페이징 링크
       for (var p = startPage; p <= endPage; p++) {
           if (p === nowPage) {
               pagingHTML += '<b><span style="cursor:pointer; font-weight:bold" onclick="loadPage(' + p + ')">' + p + '</span></b>&nbsp;';
           } else {
               pagingHTML += '<span style="cursor:pointer" onclick="loadPage(' + p + ')">' + p + '</span>&nbsp;';
           }
       }

       // 다음 페이지 링크     
       if (nowPage === lastPage) { 
       	pagingHTML += '<span style="cursor:pointer" onclick="loadPage(' + (lastPage) + ')">' +
           '<img src="<%=request.getContextPath()%>/resources/image/next.gif" width="42" height="15" border="0" align="absmiddle"></span>&nbsp;' +
    	 	'<span style="cursor:pointer" onclick="loadPage(' + (lastPage) + ')">' +
           '<img src="<%=request.getContextPath()%>/resources/image/next_.gif" width="22" height="15" border="0" align="absmiddle"></span>&nbsp;';	
        }else{
       	 pagingHTML += '<span style="cursor:pointer" onclick="loadPage(' + (nowPage + 1) + ')">' +
            '<img src="<%=request.getContextPath()%>/resources/image/next.gif" width="42" height="15" border="0" align="absmiddle"></span>&nbsp;' +
       	 	'<span style="cursor:pointer" onclick="loadPage(' + (lastPage) + ')">' +
            '<img src="<%=request.getContextPath()%>/resources/image/next_.gif" width="22" height="15" border="0" align="absmiddle"></span>&nbsp;';	
        }                
       
       pagingHTML += '</div>' +
                     '</td>' +
                     '</tr>' +
                     '</table>';
        
        $("#pageContainer").html(pagingHTML);
    	
    }
</script>
</head>
<body>
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
		          <td height="30" align="right">
		          	<select name="select" class="INPUT">
		              <option selected>::::: 전체 :::::</option>
		              <option>::::: 이름 :::::</option>
		              <option>::::: 성별 :::::</option>
		              <option>::::기술등급:::</option>
		            </select> 
		              <input name="textfield" type="text" class="INPUT"> <a href="#"><img src="<%=request.getContextPath()%>/resources/image/search.gif" width="49" height="18" border="0" align="absmiddle"></a></td>
		        </tr>
		        <tr> 
		          <td><table width="640" border="0" cellspacing="0" cellpadding="0">
		              <tr> 
		                <td height="3" background="<%=request.getContextPath()%>/resources/image/bar_bg1.gif"></td>
		              </tr>
		              <tr align="center" bgcolor="F8F8F8"> 
		                <td height="26" align="right" bgcolor="F8F8F8" style="padding-right:10"><img src="<%=request.getContextPath()%>/resources/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
		                  <span id="modify"><a href="#">수정</a></span> <img src="<%=request.getContextPath()%>/resources/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
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
							<thead>
								<tr> 
			                      <td id="checkAll" width="35" height="20" align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
			                      <td width="85" align="center">이름</td>
			                      <td width="153" align="center">주민번호</td>
			                      <td width="91" align="center">성별</td>
			                      <td width="91" align="center">기술등급</td>
			                      <td width="91" align="center">상태</td>
			                      <td width="94" align="center">근무</td>
			                    </tr>
			                </thead>
			                <tbody id="userList">
								<c:forEach var="item" items="${userList}">
			                    <tr > 
			                      <td width="35" height="20" align="center"><input type="checkbox" name="checkbox" value="${item.id}"></td>
			                      <td width="85" align="center">${item.name}</td>
			                      <td width="153" align="center">123456-1234567</td>
			                      <td width="91" align="center">남</td>
			                      <td width="91" align="center">중급</td>
			                      <td width="91" align="center">상태</td>
			                      <td width="94" align="center">근무</td>
			                    </tr>
			                    <tr> 
			                      <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
			                    </tr>
			                     </c:forEach>
			                </tbody>
			                
		                  </table>   
		                  <div id="pageContainer" style="text-align: center;"> 
		                  <table style="display: inline-block;"> 
		                    <tr> 
		                      <td height="35" colspan="7" align="center" style="padding-bottom:3">
		                      		<div style="display: block; text-align: center;">		
			                     		<span style="cursor:pointer" onclick="loadPage(1)"><img src="<%=request.getContextPath()%>/resources/image/prev.gif" width="22" height="15" border="0" align="absmiddle"></span>&nbsp;
			                     		<c:choose>
			                     			<c:when test="${1 == paging.nowPage }">
			                     				<span style="cursor:pointer" onclick="loadPage(1)"><img src="<%=request.getContextPath()%>/resources/image/pre.gif" width="42" height="15" border="0" align="absmiddle"></span>	
			                     			</c:when>
			                     			<c:when test="${1 != paging.nowPage }">
			                     				<span style="cursor:pointer" onclick="loadPage(${paging.nowPage - 1 })"><img src="<%=request.getContextPath()%>/resources/image/pre.gif" width="42" height="15" border="0" align="absmiddle"></span>
			                     			</c:when>
			                     		</c:choose>
									    <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
									        <c:choose>
									            <c:when test="${p == paging.nowPage }">
									                <b>${p }</b>
									            </c:when>
									            <c:when test="${p != paging.nowPage }">
									            	<span style="cursor:pointer" onclick="loadPage(${p })">${p }</span>
									            </c:when>
									        </c:choose>
									    </c:forEach>
									    <c:if test="${paging.endPage != paging.lastPage}">
									    	<span style="cursor:pointer" onclick="loadPage(${paging.nowPage+1 })"><img src="<%=request.getContextPath()%>/resources/image/next.gif" width="42" height="15" border="0" align="absmiddle"></span>&nbsp;
									        <span style="cursor:pointer" onclick="loadPage(${paging.lastPage })"><img src="<%=request.getContextPath()%>/resources/image/next_.gif" width="22" height="15" border="0" align="absmiddle"></span>
									    </c:if>
									</div>
		                    	</td>
		                    </tr>
		                  </table>
		                 </div>
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
		
<!-- Mustache 템플릿 -->
<script id="userListTemplate" type="x-tmpl-mustache">
{{#userList}}
	<tr>
            <td width="35" height="20" align="center"><input type="checkbox" name="checkbox" value="${id}"></td>
		    <td width="85" align="center">{{name}}</td>
		    <td width="153" align="center">989499-989489</td>
		    <td width="91" align="center">남</td>
		    <td width="91" align="center">고급</td>
		    <td width="91" align="center">상태</td>
		    <td width="94" align="center">근무</td>
			<tr> 
			   <td colspan="7" background="<%=request.getContextPath()%>/resources/image/line_bg.gif"></td>
			</tr>
	</tr>
{{/userList}}
</script>
</body>
</html>