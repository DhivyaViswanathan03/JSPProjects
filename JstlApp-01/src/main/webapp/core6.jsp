<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<body>
<h1>
<table border='1'>
<tr>
<th>KEY</th>
<th>VALUE</th>
</tr>
<c:forEach var="p" items="${param}">
<tr>
<td>${p.key}</td>
<td>${p.value }</td>
</tr>
</c:forEach>
</table>
</h1>

</body>

