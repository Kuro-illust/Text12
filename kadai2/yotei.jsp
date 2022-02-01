<%@ page contentType="text/html; charset=UTF-8"
	import="java.net.URLEncoder, java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
request.setCharacterEncoding("UTF-8");
String year = request.getParameter("year");
String month = request.getParameter("month");
String day = request.getParameter("day");
String koyomi = year + "/" + month + "/" + day;
String kekka = "なし";

Map<String, String> map = new HashMap();
map.put("2022/01/01", "元旦");
map.put("2022/01/10", "成人の日");
map.put("2022/02/11", "建国記念の日");
map.put("2022/02/14", "バレンタインデー");
map.put("2022/02/23", "天皇誕生日");
map.put("2022/03/21", "春分の日");
map.put("2022/04/01", "エイプリルフール");
map.put("2022/04/29", "昭和の日");
map.put("2022/05/03", "憲法記念日");
map.put("2022/05/04", "みどりの日");
map.put("2022/05/05", "こどもの日");
map.put("2022/07/18", "海の日");
map.put("2022/08/11", "山の日");
map.put("2022/09/19", "敬老の日");
map.put("2022/09/23", "秋分の日");
map.put("2022/10/10", "スポーツの日");
map.put("2022/11/03", "文化の日");
map.put("2022/11/23", "勤労感謝の日");
map.put("2022/12/24", "クリスマスイブ");
map.put("2022/12/25", "クリスマス");

request.setAttribute("data2", map);
request.setAttribute("koyomi", koyomi);
request.setAttribute("kekka", kekka);
%>
<!DOCTYPE html>
<html>
<head>
<metacharset"UTF-8">
<title>session</title>
</head>
<body>
	<fmt:parseDate var="date" value="<%=koyomi%>" type="DATE"
		dateStyle="LONG" />
	<fmt:formatDate value="${date}" pattern="yyyy年MM月dd日（E）" />
	の行事は
	<p>
		<c:forEach var="obj" items="${data2}">
			<c:if test="${obj.key == koyomi}">
				<%
				kekka = map.get(koyomi);
				%>
			</c:if>
		</c:forEach>
		「<%=kekka%>」です。
	</p>

	<a href="calendar.jsp">行事検索に戻る</a>
</body>
</html>