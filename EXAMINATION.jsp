

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
                  <center><li><a href='SEMESTERResult.jsp?uid=<%=id%>&page=<%=1%>'>SEMESTER 1 RESULT</a></li></center><br>
         <center><li><a href='SEMESTERResult.jsp?uid=<%=id%>&page=<%=2%>'>SEMESTER 2 RESULT</a></li></center><br>
         <center><li><a href='SEMESTERResult.jsp?uid=<%=id%>&page=<%=3%>'>SEMESTER 3 RESULT</a></li></center><br>
         <center><li><a href='SEMESTERResult.jsp?uid=<%=id%>&page=<%=4%>'>SEMESTER 4 RESULT</a></li></center><br>
             <center><li><a href='SEMESTERResult.jsp?uid=<%=id%>&page=<%=5%>'>SEMESTER 5 RESULT</a></li></center><br>
             <center><li><a href='SEMESTERResult.jsp?uid=<%=id%>&page=<%=6%>'>SEMESTER 6 RESULT</a></li></center><br>
             <center><li><a href='SEMESTERResult.jsp?uid=<%=id%>&page=<%=7%>'>SEMESTER 7 RESULT</a></li></center><br>
             <center><li><a href='SEMESTERResult.jsp?uid=<%=id%>&page=<%=8%>'>SEMESTER 8 RESULT</a></li></center><br>
          </ul>
    </body>
</html>
