<%-- 
    Document   : logout
    Created on : 17 Jan, 2023, 8:50:56 AM
    Author     : Aakash Dubey
--%>
<%
    session.invalidate();
    response.sendRedirect("./index.jsp");  
%>

