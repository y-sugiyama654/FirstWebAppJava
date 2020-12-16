<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>はじめてのJSP!!</title>
</head>
<body>
<h1>こんにちは、from Java Server Pages!</h1>
<%= Calendar.getInstance().getTime() %>

<%
Calendar gcal = Calendar.getInstance();
SimpleDateFormat format1 = new SimpleDateFormat("Gyyyy年 MM月 dd日(E)");
SimpleDateFormat format2 = new SimpleDateFormat("ahh時 mm分");

String string1 = format1.format(gcal.getTime());
String string2 = format2.format(gcal.getTime());
out.println("<br>");
out.println("本日の日付：　" + string1 + "<br>");
out.println("本日の時刻：　" + string2);
%>

</body>
</html>