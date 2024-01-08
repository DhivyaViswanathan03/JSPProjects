<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>
<c:set var="name" value="dhivya"></c:set>
The output is :::<c:out value="${name}"></c:out>
</h1>

<h1>
<c:set scope="request" var="x" value="10"></c:set>
<c:set scope="request" var="y" value="20"></c:set>
<c:set  var="z" value="${x+y}"></c:set>

The output is::<c:out value="${z}"></c:out>
</h1>

<h1>
<%-- <c:set scope="application" var="username" value="${param.username}"></c:set> --%>

The output is::<c:out value="${param.username}" default="iNeuron"></c:out>
</h1>