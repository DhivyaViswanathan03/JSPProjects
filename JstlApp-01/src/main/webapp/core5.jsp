<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body>
<h1>
<c:choose>
<c:when test="${param.p<0 }">
${param.p} is a negative
</c:when>
<c:when test="${param.p>0 }">
${param.p} is a positive
</c:when>
<c:otherwise>
${para.p} is zero
</c:otherwise>
</c:choose>
</h1>
</body>

