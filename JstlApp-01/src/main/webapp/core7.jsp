<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<body>
<h1>
<table border='1'>

<c:forEach var="i" begin="1" end="10" step="1">
<tr>
<td>2 *${i}</td>
<td>${2*i}</td>
</tr>

</c:forEach>
</table>
</h1>
<h1>
<%
String names[]={"dhivya","mouli","priya","revathi"};
request.setAttribute("names", names);
List<String> stringList=new ArrayList<String>();
stringList.add("d");
stringList.add("m");
stringList.add("p");
stringList.add("r");
request.setAttribute("stringList", stringList);
%>

<c:forEach var="name" items="${names}">
The name is ::${name}<br/>
</c:forEach><br/>

<c:forEach var="list" items="${stringList}">
The name is ::${list}<br/>
</c:forEach><br/>
</h1>
</body>

