<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String height1 = request.getParameter("height");
	String weight1 = request.getParameter("weight");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMIの計算結果</title>
</head>
<body>
	<h1>あなたのBMIの計算結果　</h1>
	<%
		double height, weight, bmi;
		height = Double.parseDouble(height1);
		weight = Double.parseDouble(weight1);
		height /= 100;
		
		bmi = weight / (height * height);
		
		out.println("あなたのBMI結果は: " + bmi);
	%>
</body>
</html>