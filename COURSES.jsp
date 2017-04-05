

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
         if(cn.equals("usercookie")){
         id=ck1.getValue();                
         }
               }

        %>
              <ul>
                  <center><li><a href='SEMESTER1.jsp.jsp?uid=<%=id%>'>SEMESTER 1 COURSE</a></li></center><br>
         <center><li><a href='SEMESTER2.jsp?uid=<%=id%>'>SEMESTER 2 COURSE</a></li></center><br>
         <center><li><a href='SEMESTER3.jsp?uid=<%=id%>'>SEMESTER 3 COURSE</a></li></center><br>
         <center><li><a href='SEMESTER4.jsp?uid=<%=id%>'>SEMESTER 4 COURSE</a></li></center><br>
             <center><li><a href='SEMESTER5.jsp?uid=<%=id%>'>SEMESTER 5 COURSE</a></li></center><br>
             <center><li><a href='SEMESTER6.jsp?uid=<%=id%>'>SEMESTER 6 COURSE</a></li></center><br>
             <center><li><a href='SEMESTER7.jsp?uid=<%=id%>'>SEMESTER 7 COURSE</a></li></center><br>
             <center><li><a href='SEMESTER8.jsp?uid=<%=id%>'>SEMESTER 8 COURSE</a></li></center><br>
              </ul>
    </body>
</html>
