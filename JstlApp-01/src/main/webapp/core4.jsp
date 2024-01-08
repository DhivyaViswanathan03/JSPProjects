<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>

The userName is:::${param.username}
</h1>

<c:catch var="e">
<%
int age=Integer.parseInt(request.getParameter("userage"));
%>
<h1>The age is:: ${param.userage}</h1>
</c:catch>

<h1>The height is ::: ${param.userheight}</h1>

