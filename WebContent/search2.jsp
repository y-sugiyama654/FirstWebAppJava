<%@ page language="java" contentType="text/html;charset=Windows-31J"%>
<%@page import="java.sql.*"%>

<html>
<head>
<title></title>
</head>
<body>
	<br>
	<%
		ResultSet rset = (ResultSet) request.getAttribute("kekka");
	%>
	<table border="1">
		<tr bgcolor="#cccccc">
			<td><b>ID</b></td>
			<td><b>���O</b></td>
			<td><b>����</b></td>
			<td><b>���ДN</b></td>
			<td><b>�Z��</b></td>
			<td><b>�폜</b></td>
			<td><b>�ύX</b></td>
		</tr>
		<%
			while (rset.next()) {
		%>
		<tr>
			<td><%=rset.getString(1)%></td>
			<td><%=rset.getString(2)%></td>
			<td><%=rset.getString(3)%></td>
			<td><%=rset.getString(4)%></td>
			<td><%=rset.getString(5)%></td>
			<td><a href="Edit?&mode=delete&id=<%=rset.getString(1)%>">�폜</a></td>
			<td>
				<form action="/first/Edit" method="POST">
					<input type="hidden" name="mode" value="change"> <input
						type="hidden" name="id" value="<%=rset.getString(1)%>"> <input
						type="hidden" name="name" value="<%=rset.getString(2)%>">
					<input type="hidden" name="sei" value="<%=rset.getString(3)%>">
					<input type="hidden" name="nen" value="<%=rset.getString(4)%>">
					<input type="hidden" name="address" value="<%=rset.getString(5)%>">
					<input type="submit" value="�ύX">
				</form>
			</td>
		</tr>
		<%
			}
		%>
	</table>
	<br>
	<a href="./index2.jsp">�g�b�v�ɖ߂�</a>
</body>
</html>