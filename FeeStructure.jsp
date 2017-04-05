
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
     <%
     String s1="";
             String s2="";
             String location="";
     int count=0;
     String id="";
     Cookie ck[]=request.getCookies();
     Cookie c;
     for(Cookie ck1:ck){
     String name=ck1.getName();
     if(name.equals("usercookie"))
                 {
     id=ck1.getValue();
     ++count;
     }
     }
     if(count==0){
     response.sendRedirect("ERROR.jsp");
     }else{
         try{
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     Connection con=DriverManager.getConnection("jdbc:odbc:Glizo","sa","Slietians");
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from FEESTRUCTURE");
     while(rs.next()){
    s1=rs.getString("SEMESTER");
    s2=rs.getString("LOCA");
    location="FEESTRUCTURE//"+s2;
    System.out.println(location + " sss");
    if(s1.equals("SEM1")){
    %>
    <h3> SEMESTER 1 FEE STRUCTURE </h3>
    <a href="<%=location%>">         FEE STRUCTURE </a></br></br>
        <%
               }
        if(s1.equals("SEM2")){
    %>
    <h3> SEMESTER 2 FEE STRUCTURE </h3>
    <a href="<%=location%>">         FEE STRUCTURE </a></br></br>
        <%
               }
        if(s1.equals("SEM3")){
    %>
    <h3> SEMESTER 3 FEE STRUCTURE </h3>
    <a href="<%=location%>">         FEE STRUCTURE </a></br></br>
        <%
               }
        if(s1.equals("SEM4")){
    %>
    <h3> SEMESTER 4 FEE STRUCTURE </h3>
    <a href="<%=location%>">         FEE STRUCTURE </a></br></br>
        <%
               }
        if(s1.equals("SEM5")){
    %>
    <h3> SEMESTER 5 FEE STRUCTURE </h3>
    <a href="<%=location%>">         FEE STRUCTURE </a></br></br>
        <%
               }
        if(s1.equals("SEM6")){
    %>
    <h3> SEMESTER 6 FEE STRUCTURE </h3>
    <a href="<%=location%>">         FEE STRUCTURE </a></br></br>
        <%
               }
        if(s1.equals("SEM7")){
    %>
    <h3> SEMESTER 7 FEE STRUCTURE </h3>
    <a href="<%=location%>">         FEE STRUCTURE </a></br></br>
        <%
               }
     if(s1.equals("SEM8")){
    %>
    <h3> SEMESTER 8 FEE STRUCTURE </h3>
    <a href="<%=location%>">         FEE STRUCTURE </a></br></br>
        <%
               }
    }
                
         }catch(Exception e){
         
         }
     }
     %>
    </body>
</html>
