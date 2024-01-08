<%@ page language="java"%>
<jsp:useBean id="student" class="com.divs.bean.Student" scope="session"></jsp:useBean>
<jsp:setProperty property="id" name="student" value="101"/>
<jsp:setProperty property="name" name="student" value="dhivya"/>
<jsp:setProperty property="address" name="student" value="Eriyur"/>
<jsp:setProperty property="age" name="student" value="30"/>

<h1><%= student %></h1><br/>
<jsp:setProperty property="id" name="student" param="id"/>
<jsp:setProperty property="name" name="student" param="name"/>
<jsp:setProperty property="address" name="student" param="address"/>
<jsp:setProperty property="age" name="student" param="age"/>
<h1><%= student %></h1><br/>
<jsp:setProperty property="*" name="student"/>

<h1><%= student %></h1><br/>