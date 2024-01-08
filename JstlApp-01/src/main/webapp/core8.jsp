<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<body>
<h1>
<table border='1'>
<tr>
<th>NAMES</th>
</tr>
<c:forTokens items="dhivya#priya#reka#mouli" delims="#" var="a">

<tr>
<td>${a}</td>
</tr>
</c:forTokens>
</table>
</h1>

</body>

