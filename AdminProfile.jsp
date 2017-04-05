

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       
        String id="";
        String name="";
        
        int count=0;
        Cookie[] ck=request.getCookies();
         Cookie c;
         for(Cookie ck1:ck){
         String cn=ck1.getName();
         System.out.println(cn);
         if(cn.equals("admincookie")){
         id=ck1.getValue();
             count++;                
         }
                 }
         if(count!=0){
         
          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:Glizo","sa","Slietians");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from AdminValid where ID='"+id+"'");
        while(rs.next()){
        name=rs.getString("NAME"); 
        out.println(" WELCOME " + name);
        }
          }else{
            response.sendRedirect("ERROR.jsp");
        }
        %>
        <h3>SELECT DATA TO BE EDITTED</h3>
        <form method="post" action="TableDecider">
            STUDENT ID:<input type="text" name="studentid"/>
            SEMESTER :<select name="semester">
  <option value="SEM1">SEMESTER 1</option>
  <option value="SEM2">SEMESTER 2</option>
  <option value="SEM3">SEMESTER 3</option>
  <option value="SEM4">SEMESTER 4</option>
  <option value="SEM5">SEMESTER 5</option>
  <option value="SEM6">SEMESTER 6</option>
  <option value="SEM7">SEMESTER 7</option>
  <option value="SEM8">SEMESTER 8</option>
</select>
         SELECT TERMS :  <select name="terms">
  <option value="MINOR1">MINOR 1</option>
  <option value="MINOR2">MINOR 2</option>
  <option value="MAJOR">MAJOR</option>
</select>
       SUBMIT : <input type="submit" >    
        </form>
        </br></br></br>
        <a href="UploadFeeStructure.jsp"><h4><center> UPLOAD FEE STRUCTURES</center> </h4><>
        
    </body>
</html>
