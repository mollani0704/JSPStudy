<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<div id="container">
		<h1>회원가입</h1>
		<form action="">	
			<table>
				<tr>
					<th>이름</th>
					<th><input type="text" name="name"></th>
				</tr>
				<tr>
					<th>이메일</th>
					<th><input type="email" name="email"></th>
				</tr>
				<tr>
					<th>사용자이름</th>
					<th><input type="text" name="username"></th>
				</tr>
				<tr>
					<th>비밀번호</th>
					<th><input type="password" name="password"></th>
				</tr>
			</table>
			<button type="submit">가입하기</button>
			<button type="reset">재작성</button>
		</form>
	</div>
	<script type="text/javascript" src="/static/js/index.js"></script>
</body>
</html>