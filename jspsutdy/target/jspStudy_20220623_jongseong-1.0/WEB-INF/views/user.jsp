<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//String name = (String)request.getAttribute("name"); //request는 정의되지 않았는데 사용할 수 있다. 이를 jsp 내장객체라 한다. response도 있음.
	// data들 - model
	// jsp - view
	// 서버 - controller

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사용자 정보</h1>
	<label>이름: </label>
	<input type="text" value="${name}">
</body>
</html>

