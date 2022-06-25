<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String[] name = new String[5];
	String[] email = new String[5];
		
	String madeName(String name) {
		return name + "님";
	}
		
	String madeEmail(String email) {
		return email + "@google.com";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
		<%
			name[0] = "문종성";
			email[0] = "mollani0704";
			name[1] = "문종서";
			email[1] = "mollani0701";
			name[2] = "문종석";
			email[2] = "mollani0702";
			name[3] = "문종선";
			email[3] = "mollani0703";
			name[4] = "문종섭";
			email[4] = "mollani0700";
		%>
		<%
			for(int i = 0; i < name.length; i++) {
				
			
		%>
			<tr>
				<td><%= i + 1 %></td>
				<td><%= madeName(name[i]) %></td>
				<td><%= madeEmail(email[i]) %></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</body>
</html>