

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AdminValid extends HttpServlet {

   
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String id=request.getParameter("ID");
        String pass=request.getParameter("PASS");
        try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:Glizo","sa","Slietians");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select NAME from AdminValid where ID='"+id+"' and PASS='"+pass+"' ");
        while(rs.next()){
             Cookie[] ck=request.getCookies();
         Cookie c;
         for(Cookie ck1:ck){
         String cn=ck1.getName();
         if(cn.equals("admincookie")){
         new Cookie("admincookie",id);
         System.out.println("updated");
         }else{
         c=new Cookie("admincookie",id);
         response.addCookie(c);
         System.out.println("created");
         }
         System.out.println("created");
          response.sendRedirect("AdminProfile.jsp");
         
         }
        }
        response.sendRedirect("index_admin.jsp");
        }catch(Exception e){
        out.println(e);
        }
    }
}

   

