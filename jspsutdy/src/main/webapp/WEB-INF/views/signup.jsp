<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div id="container">
		<h1>회원가입</h1>
		<!-- action -> 요청 메세지를 입력하는 곳 -->
		<form action="/signup" method="post">	
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
					<th><input class="username-input" type="text" name="username"></th>
				</tr>
				<tr class="username-check-msg">
					
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
	<script type="text/javascript" src="/static/js/signup.js"></script>
</body>
</html>