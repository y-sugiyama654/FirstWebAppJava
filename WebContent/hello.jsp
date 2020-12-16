<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>はじめてのJSP!!</title>
</head>
<body>
<h1>こんにちは、from Java Server Pages!</h1>
<%= Calendar.getInstance().getTime() %>
</body>
</html>