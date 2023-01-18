<%-- 
    Document   : index
    Created on : 16 Jan, 2023, 9:27:35 PM
    Author     : Aakash Dubey
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Auth.VerifyLogin"%>
<!DOCTYPE html>
<%
    boolean incorrect;
   if(request.getSession().getAttribute("correct")==null){
       incorrect=false;
    }
    else{
    incorrect=(boolean)request.getSession().getAttribute("correct");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
     
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
     <style>
      
    </style>
    
    <body style="font-size:18px;">      
        <div class="text-center">
            <form method="post" action="VerifyLogin">
            <div class="m-3">
                <h1>Login Page</h1>
            </div>
          

            <div class="m-3">
                <label>Username</label>
                <input type="text" name="username" placeholder="Username" required/>    
            </div>
            <div class="m-3">
                 <label>Password</label>
                 <input type="password" name="password"  placeholder="Password" required/>
            </div>
           <c:if test ="<%=(incorrect==true)%>">
               <div class="m-3">
                <p>Incorrect Credentials</p>
           </div>
           </c:if>
            <div class="m-3" >
                <input type="submit" value="Login" class="btn btn-primary"  name="password"/>
            </div>
            
            <div class="m-3" >
                <a href="./signup.jsp"/><b>SignUp </b></a>
            </div>
            
        </form>    
        </div>
  </body>
</html>
