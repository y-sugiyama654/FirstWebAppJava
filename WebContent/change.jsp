<%@ page language="java" contentType="text/html;charset=Windows-31J"%>
<%@page import="jp.hogehoge.javastudy.ShainBeans"%>

<html>
<body>

	<%
		ShainBeans shain = (ShainBeans) request.getAttribute("shain");
	%>

	<br> �ȉ�����ύX�ł��܂��B
	<br>
	<br>
	<form action="/first/Edit" method="POST">

		ID:
		<%=shain.getId()%>�i�ύX�s�j <input type="hidden" name="id"
			value="<%=shain.getId()%>"> ���O: <input type="text"
			name="name" value="<%=shain.getName()%>"> ���ʁF<SELECT
			NAME="sei">
			<OPTION VALUE="<%=shain.getSei()%>" selected><%=shain.getSei()%></OPTION>
			<OPTION VALUE="�j">�j</OPTION>
			<OPTION VALUE="��">��</OPTION>
		</SELECT> ���ДN�F<SELECT NAME="nen">
			<OPTION VALUE="<%=shain.getNen()%>" selected><%=shain.getNen()%></OPTION>
			<OPTION VALUE="2002">2002</OPTION>
			<OPTION VALUE="2003">2003</OPTION>
			<OPTION VALUE="2004">2004</OPTION>
			<OPTION VALUE="2005">2005</OPTION>
			<OPTION VALUE="2006">2006</OPTION>
		</SELECT> �Z��: <input type="text" name="address"
			value="<%=shain.getAddress()%>"> <br>
		<br> <input type="hidden" name="mode" value="del_add"> <input
			type="submit" value="�ύX�m��">
	</form>


	<br>


	<a href="./index2.jsp">�g�b�v�ɖ߂�</a>

</body>
</html>