<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>
<c:set scope="page" var="x" value="10"></c:set>
<c:set scope="page" var="y" value="20"></c:set>
<c:set scope="application" var="z" value="${x+y}"></c:set>
</h1>
<h1>
The output is:::<c:out value="${z}"></c:out>
</h1>
<h1>
<c:remove var="x"/>
<c:remove var="y"/>
<c:remove var="z"/>
<h1>
The output is:::<c:out value="${z}" default="50"></c:out>
</h1>
</h1>