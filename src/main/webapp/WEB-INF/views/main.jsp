<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet" type="text/css">
<script type="module" src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/4.2.0/mustache.min.js"></script>
    <meta charset="UTF-8">
    <title>Main Page</title>
    <style>
        .container {
            display: flex;
        }

        .right-div {
            flex: 1;
            margin: 5px;
        }
    </style>
</head>
<body>
	<div class="container">
	
	    <!-- 사이드바 -->
	    <div class="left-div">
	    	<%@ include file="sidebar.jsp" %>
		</div>
	    <!-- 메인 페이지 -->
	    <div class="right-div" id="main">
	        <%@ include file="boardPage.jsp" %> <!-- 기본적으로 페이지 1을 로드 -->
	    </div>
	</div>
</body>
</html>