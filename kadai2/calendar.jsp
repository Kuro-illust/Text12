<%@ page contentType="text/html; charset=UTF-8"
	import="java.net.URLDecoder"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date" />
	本日は
	<fmt:formatDate value="${date}" pattern="yyyy年MM月dd日（E）" />
	<br>
	<form method="POST" action="<%=response.encodeURL("yotei.jsp")%>">
		<df>
		<dt>年を入力してください(例:2022年→2022)</dt>
		<dd>
			<textarea name="year"></textarea>
		</dd>
		<dt>月を２桁で入力してください(例:3月→03)</dt>
		<dd>
			<textarea name="month"></textarea>
		</dd>
		<dt>日を２桁で入力してください(例:1日→01)</dt>
		<dd>
			<textarea name="day"></textarea>
		</dd>
		</df>
		<input type="submit" value="送信">
	</form>
</body>
</html>
