<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<h1>
<c:url value="http://www.google.com" var="googleURI" scope="request">

</c:url>
<c:redirect url="${googleURI}"></c:redirect>
</h1>

</body>

