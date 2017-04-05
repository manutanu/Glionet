

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
        int register=0;
        String filename="";
        String id="";
        String a[]=new String[8];
        
       int count=0;
 Cookie[] ck=request.getCookies();
         Cookie c;
         for(Cookie ck1:ck){
         String cn=ck1.getName();
         System.out.println(cn);
         if(cn.equals("usercookie")){
         id=ck1.getValue();
              count++;             
         }
                 } 
if(count==0)
    response.sendRedirect("ERROR.jsp");
 else{ 
             %>
             <center><a href="FeeStructure.jsp">FEE STRUCTURE</a></center></br>
             <center><a href="FeeBill.jsp">FEE BILL</a></center></br>
             <center><a href="FeeReciept.jsp">FEE RECIEPT</a></center></br>
             <%
}               
%>
    </body>
</html>
