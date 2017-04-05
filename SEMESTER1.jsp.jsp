

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
        String id=request.getParameter("uid");
        %><center><h1><b>SEMESTER 1 course for <%=id%></b></h1></center>
    <%
        String sub1="";
        String sub2="";
        String sub3="";
        String sub4="";
        String sub5="";
        String sub6="";
        String sub7="";
         
   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con=DriverManager.getConnection("jdbc:odbc:Glizo","sa","Slietians");
       Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from SEM1 where ID='"+id+"'");
      while(rs.next()){
      sub1=rs.getString("SUB1");sub2=rs.getString("SUB2");sub3=rs.getString("SUB3");sub4=rs.getString("SUB4");
      sub5=rs.getString("SUB5");sub6=rs.getString("SUB6");sub7=rs.getString("SUB7");
     }

%>
<center><table border="2px">
    <tr>
    <th>S.NOs</th>
    <th>SUBJECTS</th>
    <th>SUBJECT CODES</th>
    <th>ATTENDANCE</th>
    <th>TOTAL CLASSES</th>
        </tr>
        <tr>
            <td> 1 </td>
            <td> SUB1 </td>
            <td> SUB01 </td>
            <td> <%=sub1%> </td>
            <td> 21 </td>
        </tr>
        <tr>
            <td> 2 </td>
            <td> SUB2 </td>
            <td> SUB02 </td>
            <td> <%=sub2%> </td>
            <td> 22 </td>
        </tr>
        <tr>
            <td> 3 </td>
            <td> SUB3 </td>
            <td> SUB03 </td>
            <td> <%=sub3%> </td>
            <td> 23 </td>
        </tr>
        <tr>
            <td> 4 </td>
            <td> SUB4 </td>
            <td> SUB04 </td>
            <td> <%=sub4%> </td>
            <td> 24 </td>
        </tr>
        <tr>
            <td> 5 </td>
            <td> SUB5 </td>
            <td> SUB05 </td>
            <td> <%=sub5%> </td>
            <td> 25 </td>
        </tr>
        <tr>
            <td> 6 </td>
            <td> SUB6 </td>
            <td> SUB06 </td>
            <td> <%=sub6%> </td>
            <td> 26 </td>
        </tr>
        <tr>
            <td> 7 </td>
            <td> SUB7 </td>
            <td> SUB07 </td>
            <td> <%=sub7%> </td>
            <td> 27 </td>
        </tr>
</table></center>

    </body>
</html>
