<%@ page language="java" contentType="text/html;charset=Windows-31J" %>

<html>
<head>
	<title></title>
</head>
<body>
<br>

<%
String message = (String)request.getAttribute( "login" );
String name = (String)session.getAttribute( "name" );
%>

<br><br>
 <%= message %> <br><br>
 
����ɂ��́@<%= name %> ����<br><br>

<a href="/first/result.jsp">�O�̃y�[�W�ɖ߂�</a>
<br><br><br><br>
<a href="/first/logout.jsp">���O�A�E�g</a>
<br><br><br><br>

</body>
</html>