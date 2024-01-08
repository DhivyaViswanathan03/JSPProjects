<%@ page language="java" %>

<jsp:useBean id="student" class="com.divs.bean.Student" scope="session"/>

<jsp:getProperty name="student" property="id"/>
<jsp:getProperty name="student" property="name"/>
<jsp:getProperty name="student" property="address"/>
<jsp:getProperty name="student" property="age"/>


<h1><%=student %></h1>
