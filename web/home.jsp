<%-- 
    Document   : home
    Created on : 16 Jan, 2023, 11:11:25 PM
    Author     : Aakash Dubey
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/intern?zeroDateTimeBehavior=convertToNull","root","09072001"); 
    PreparedStatement stmt=con.prepareStatement("select * from userdetails where username=?");
    stmt.setString(1,request.getSession().getAttribute("u_name").toString());
    ResultSet rs= stmt.executeQuery();
    rs.next();
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Home Page</title>
    </head>
    
    <body>
        <div class="my-3">
        <div class="float-right mx-3">
            
            <a href="./logout.jsp">
        <button class="btn btn-primary" >Logout</button>               
            </a>
        </div>
        <div class="float-left mx-3">
             <h3>Welcome</h1>
        </div>
            
        </div>
        <div class="">
            <form class="container pt-5">
            <div class="text-center">
                <h1>User Information</h1>
            </div>
             <div class="form-row my-4">
            <label class="col">Full Name</label>
            <input class="col" type="text" name="fullname" value="<%=rs.getString("fullname")%>" placeholder="FullName" readonly/>    
            </div>
            
             <div class="form-row my-4">
                <label class="col">Email</label>
            <input class="col" type="text" name="email" value=<%= rs.getString("email") %> placeholder="Email"  readonly/>    
            </div>
            <div class="form-row my-4">
            <label class="col">UserName</label>
            <input class="col"  type="text" name="username" value=<%= rs.getString("username") %> placeholder="Username" readonly/>    
            </div>
             
             <div class="form-row  my-4">
                <label class="col" >Date of Birth</label>
            <input class="col" type="date" value= <%= rs.getString("dateofbirth") %> name="dateofbirth" readonly/>    
            </div>
           
        </form>    
        </div>    
          
    </body>
</html>
