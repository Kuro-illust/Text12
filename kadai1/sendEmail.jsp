<%@ page contentType="text/html; charset=UTF-8"
	import="java.net.URLEncoder"%>
<%
request.setCharacterEncoding("UTF-8");
String address = URLEncoder.encode(request.getParameter("address"), "UTF-8");
String comment = URLEncoder.encode(request.getParameter("comment"), "UTF-8");
session.setAttribute("address", address);
session.setAttribute("comment", comment);

session.setMaxInactiveInterval(180);
%>
<!DOCTYPE html>
<html>
<head>
<metacharset"UTF-8">
<title>session</title>
</head>
<body>
	<p>E-mailを送信しました。セッションは３分間保存されます。</p>
	<a href="logoutEmail.jsp">ログアウト</a>
</body>
</html>