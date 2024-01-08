<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<sql:setDataSource url="jdbc:mysql:///divs" user="root" 
password="Welcome@123" driver="com.mysql.cj.jdbc.Driver" var="dataSource"/>
<sql:query var="result" dataSource="${dataSource}">
select * from employee
</sql:query>

<table border="1" align="center">

<tr>
<th>EID</th>
<th>ENAME</th>
<th>EDDR</th>
<th>ESAL</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td>${row.id }</td>
<td>${row.ename }</td>
<td>${row.eaddr }</td>
<td>${row.esal }</td>
</tr>

</c:forEach>
</table>

<%-- <sql:update var="count" dataSource="${dataSource }">
insert into employee (`ename`,`eaddr`,`esal`)values("reka","nagar",5000)
</sql:update>
<h1 style='color:green; text-align:center;'>The no os rows affected is:::${count }</h1> --%>

<%-- <sql:update var="count" dataSource="${dataSource }">
insert into employee (`ename`,`eaddr`,`esal`)values(?,?,?)
<sql:param value="mouli"></sql:param>
<sql:param value="eriyur"></sql:param>
<sql:param value="10000"></sql:param>
</sql:update>
<h1 style='color:green; text-align:center;'>The no os rows affected is:::${count }</h1> --%>


<sql:transaction dataSource="${dataSource }">
<sql:update>
update employee set esal=esal+1000 where ename="dhivya"
</sql:update>

<sql:update>
update employee set esal=esal+1000 where ename="reka"
</sql:update>

</sql:transaction>


</body>
</html>