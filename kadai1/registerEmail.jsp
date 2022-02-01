<%@ page contentType="text/html; charset=UTF-8"
	import="java.net.URLDecoder"%>
<%
String address = (String)session.getAttribute("address");
String comment = (String)session.getAttribute("comment");

if(address == null){
	address = "";
}else {
	address = URLDecoder.decode(address);
}
if(comment == null){
	comment = "";
}else {
	comment = URLDecoder.decode(comment);
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emailtest</title>
</head>
<body>
	<form method="POST" action="<%= response.encodeURL("sendEmail.jsp") %>">
		<df>
		<dt>宛先</dt>
		<dd>
			<input type="email" name="address" size="40" value="<%= address %>">
		</dd>
		<dt>本文</dt>
		<dd>
			<textarea name="comment" rows="8"><%=comment %></textarea>
		</dd>
		</df>
		<input type="submit" value="登録"> <br> <a
			href="logoutEmail.jsp">ログアウト</a>
	</form>
</body>
</html>
