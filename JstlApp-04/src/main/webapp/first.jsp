<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FORMAT JSTL TAGS</title>
</head>
<body>
<fmt:setLocale value="hi_IN"/>
<fmt:setBundle basename="com/divs/commons/App"></fmt:setBundle>
<fmt:message key="welcome.msg" var="msg1"></fmt:message>
<fmt:message key="goodbye.msg" var="msg2"></fmt:message>
<h1 style='color:blue; text-align:center;'>${msg1 },${msg2 }</h1>
</body>
</html>