<%@ page language="java" %>

<jsp:useBean id="dto" class="com.divs.dto.Employee" scope="request"/>
<jsp:setProperty name="dto" property="*"/>

<jsp:useBean id="service" class="com.divs.service.SalaryGeneratorServiceImpl" scope="application"/>

<%
service.generateSalaryDetails(dto);
%>

<html>
<body bgcolor='lightgreen' >
<table border='1' align='center'>
<tr>
<th>ENo</th>
<td><jsp:getProperty property="eno" name="dto"/></td>
</tr>
<tr>
<th>EName</th>
<td><jsp:getProperty property="ename" name="dto"/></td>
</tr>
<tr>
<th>EBaseSalary</th>
<td><jsp:getProperty property="bsalary" name="dto"/></td>
</tr>
<tr>
<th>EGrossSalary</th>
<td><jsp:getProperty property="grosssalary" name="dto"/></td>
</tr>
<tr>
<th>ENetSalary</th>
<td><jsp:getProperty property="netsalary" name="dto"/></td>
</tr>
</table>

<br/>
<br/>

<h1 style='text-align:center;'>
<a href="./index.html">|HOME PAGE|</a>
</h1>
</body>
</html>