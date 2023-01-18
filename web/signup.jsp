<%-- 
    Document   : index
    Created on : 16 Jan, 2023, 9:27:35 PM
    Author     : Aakash Dubey
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body style=" font-size: 18px;">
        <div>
            <form class="container pt-5"  method="post" action="Register">
            <div class="text-center">
                <h1>SignUp</h1>
            </div>
             <div class="form-row my-4">
            <label class="col">Full Name</label>
            <input class="col" type="text" name="fullname" placeholder="Full Name" required/>    
            </div>
            <div class="form-row my-4">
                <label class="col">Email</label>
            <input class="col" type="text" name="email" placeholder="Email"  required/>    
            </div>
            <div class="form-row my-4">
            <label class="col">UserName</label>
            <input class="col"  type="text" name="username" placeholder="Username" required/>    
            </div> 
            <div class="form-row  my-4">
                <label class="col" >Date of Birth</label>
            <input class="col" type="date" name="dateofbirth" required/>    
            </div>
            <div class="form-row my-4">
                 <label class="col" >Password</label>
            <input class="col" type="password" name="password" placeholder="Password" required/>
            </div>
            <div class="form-row my-4">
               <label class="col" >Confirm Password</label>
            <input class="col" type="password" name="password1"  placeholder="Confirm"   required/>
            </div>  
            <div class="text-center my-4">
                <input type="submit" value="Signup" class="btn btn-primary"  name="password" required/>
            </div>
              <div class="text-center my-4" >
                <a href="./index.jsp"/><b>Login </b></a>
            </div>
        </form>    
        </div>
  </body>
</html>
