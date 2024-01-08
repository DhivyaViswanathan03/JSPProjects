<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body>
<c:set var="a" value="9"></c:set>

<c:if test="${a ne 10 }" var="b">
<h1>
The value is not equal to 10
</h1>
</c:if>

The value of a is ::${a}<br/>
The value of b is ::${b}

</body>

