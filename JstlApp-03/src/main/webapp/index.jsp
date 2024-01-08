<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
<c:set var="data" value="hello world java program"></c:set>

Length is:${fn:length(data) }<br/>
UpperCase is:${fn:toUpperCase(data) }<br/>
LowerCase is:${fn:toLowerCase(data) }<br/>
subString is:${fn:substring(data,3,7) }<br/>
Does contain JSTL:${fn:contains(data,"world")}<br/>
starts with:${fn:startsWith(data,"hello") }<br/>
EndsWith :${fn:endsWith(data,"Program") }<br/>
</h1>
<br/>

<h1>
<c:set var="datas" value="sachin,dhivya,mouli,priya"></c:set>

<c:set var="names" value="${fn:split(datas,',')}">
</c:set>

<c:forEach var="name" items="${names }">
${name }<br/>

</c:forEach>
</h1>
<br/>

<h1>
<c:set var="result" value="${fn:join(names,'-')}">

</c:set>

${result}<br/>


</h1>
</body>
</html>