<%
pageContext.setAttribute("p","page");
request.setAttribute("p","request");
session.setAttribute("p","session");
application.setAttribute("p","application");
pageContext.forward("./disp.jsp");
%>