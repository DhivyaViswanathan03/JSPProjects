<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<h1>
<c:url value="./core13.jsp" var="x">
<c:param name="JAVA" value="dhivya"></c:param>
<c:param name="SPRING" value="MOULI"></c:param>
</c:url>
<a href="${x}"> |Go to the new page|</a>

</h1>

</body>

