package Auth;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Aakash Dubey
 */
public class VerifyLogin extends HttpServlet {
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    
    try {  
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/intern?zeroDateTimeBehavior=convertToNull","root","09072001"); 
    PreparedStatement stmt=con.prepareStatement("select * from login where username=? and password=?");
    stmt.setString(1,username);
    stmt.setString(2,password);
    ResultSet rs=stmt.executeQuery();
    if(rs.next()){
        request.getSession().setAttribute("u_name",username); 
        request.getSession().setAttribute("correct",false);
        response.sendRedirect(request.getContextPath()+"/home.jsp"); 
    }else{
        request.getSession().setAttribute("correct",true);
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }
    con.close();
    }catch(ClassNotFoundException | SQLException ex) {
      Logger.getLogger(VerifyLogin.class.getName()).log(Level.SEVERE, null, ex);
    }
      
   }

  

}
