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
     String tablename=(String)request.getAttribute("tablename");
     String studentid=(String)request.getAttribute("studentid");
     
            String sub1="";
            String sub2="";
            String sub3="";
            String sub4="";
            String sub5="";
            String sub6="";
            String sub7="";
      try{
              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:Glizo","sa","Slietians");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from "+tablename+" where ID='"+studentid+"'");
        while(rs.next()){
        sub1=rs.getString("SUB1");sub2=rs.getString("SUB2");sub3=rs.getString("SUB3");sub4=rs.getString("SUB4");
        sub5=rs.getString("SUB5");sub6=rs.getString("SUB6");sub7=rs.getString("SUB7");
        }
        System.out.println(sub1+"  "+tablename+"  "+studentid+"  " );
                 }catch(Exception e) {
                     out.println(e);
                 }
        %>
        <%
        if(tablename.equals("SEM1MINOR1")||tablename.equals("SEM2MINOR1")||tablename.equals("SEM3MINOR1")||tablename.equals("SEM4MINOR1")||tablename.equals("SEM5MINOR1")||tablename.equals("SEM6MINOR1")||tablename.equals("SEM7MINOR1")||tablename.equals("SEM8MINOR1")){
  %>
    <center><h3><b>MINOR 1 RESULT</b></h3>
<table border="2px">
    <tr>
    <th>S.NOs</th>
    <th>SUBJECTS</th>
    <th>SUBJECT CODES</th>
    <th>MARKS</th>
        </tr>
        <tr>
            <td> 1 </td>
            <td> SUB1 </td>
            <td> SUB01 </td>
            <td> <%=sub1%> </td>
            
        </tr>
        <tr>
            <td> 2 </td>
            <td> SUB2 </td>
            <td> SUB02 </td>
            <td> <%=sub2%> </td>
            
        </tr>
        <tr>
            <td> 3 </td>
            <td> SUB3 </td>
            <td> SUB03 </td>
            <td> <%=sub3%> </td>
           
        </tr>
        <tr>
            <td> 4 </td>
            <td> SUB4 </td>
            <td> SUB04 </td>
            <td> <%=sub4%> </td>
          
        </tr>
        <tr>
            <td> 5 </td>
            <td> SUB5 </td>
            <td> SUB05 </td>
            <td> <%=sub5%> </td>
          
        </tr>
        <tr>
            <td> 6 </td>
            <td> SUB6 </td>
            <td> SUB06 </td>
            <td> <%=sub6%> </td>
            
        </tr>
        <tr>
            <td> 7 </td>
            <td> SUB7 </td>
            <td> SUB07 </td>
            <td> <%=sub7%> </td>
            
        </tr>
</table><center>

            <br></br>
            
               <form method="post" action="EditData">
        <input type="hidden" name="studentid" value="<%=studentid%>"/>
        <input type="hidden" name="table" value="<%=tablename%>"/>
                 SUBJECT :<select name="subject">
  <option value="SUB1">SUBJECT 01</option>
  <option value="SUB2">SUBJECT 02</option>
  <option value="SUB3">SUBJECT 03</option>
  <option value="SUB4">SUBJECT 04</option>
  <option value="SUB5">SUBJECT 05</option>
  <option value="SUB6">SUBJECT 06</option>
  <option value="SUB7">SUBJECT 07</option>
</select>
                 <input type="text" name="data"/>
       SUBMIT : <input type="submit" >    
        </form>
     <%          
}
            
%>
     
 <%
        if(tablename.equals("SEM1MINOR2")||tablename.equals("SEM2MINOR2")||tablename.equals("SEM3MINOR2")||tablename.equals("SEM4MINOR2")||tablename.equals("SEM5MINOR2")||tablename.equals("SEM6MINOR2")||tablename.equals("SEM7MINOR2")||tablename.equals("SEM8MINOR2")){
  %>
    <center><h3><b>MINOR 2 RESULT</b></h3>
<table border="2px">
    <tr>
    <th>S.NOs</th>
    <th>SUBJECTS</th>
    <th>SUBJECT CODES</th>
    <th>MARKS</th>
        </tr>
        <tr>
            <td> 1 </td>
            <td> SUB1 </td>
            <td> SUB01 </td>
            <td> <%=sub1%> </td>
            
        </tr>
        <tr>
            <td> 2 </td>
            <td> SUB2 </td>
            <td> SUB02 </td>
            <td> <%=sub2%> </td>
            
        </tr>
        <tr>
            <td> 3 </td>
            <td> SUB3 </td>
            <td> SUB03 </td>
            <td> <%=sub3%> </td>
           
        </tr>
        <tr>
            <td> 4 </td>
            <td> SUB4 </td>
            <td> SUB04 </td>
            <td> <%=sub4%> </td>
          
        </tr>
        <tr>
            <td> 5 </td>
            <td> SUB5 </td>
            <td> SUB05 </td>
            <td> <%=sub5%> </td>
          
        </tr>
        <tr>
            <td> 6 </td>
            <td> SUB6 </td>
            <td> SUB06 </td>
            <td> <%=sub6%> </td>
            
        </tr>
        <tr>
            <td> 7 </td>
            <td> SUB7 </td>
            <td> SUB07 </td>
            <td> <%=sub7%> </td>
            
        </tr>
</table><center>

            <br></br>
            
               <form method="post" action="EditData">
        <input type="hidden" name="studentid" value="<%=studentid%>"/>
        <input type="hidden" name="table" value="<%=tablename%>"/>
                 SUBJECT :<select name="subject">
  <option value="SUB1">SUBJECT 01</option>
  <option value="SUB2">SUBJECT 02</option>
  <option value="SUB3">SUBJECT 03</option>
  <option value="SUB4">SUBJECT 04</option>
  <option value="SUB5">SUBJECT 05</option>
  <option value="SUB6">SUBJECT 06</option>
  <option value="SUB7">SUBJECT 07</option>
</select>
                            <input type="text" name="data"/>
       SUBMIT : <input type="submit" >    
        </form>
     <%          
}
%>

 <%
        if(tablename.equals("SEM1MAJOR")||tablename.equals("SEM2MAJOR")||tablename.equals("SEM3MAJOR")||tablename.equals("SEM4MAJOR")||tablename.equals("SEM5MAJOR")||tablename.equals("SEM6MAJOR")||tablename.equals("SEM7MAJOR")||tablename.equals("SEM8MAJOR")){
  %>
    <center><h3><b>MAJOR RESULT</b></h3>
<table border="2px">
    <tr>
    <th>S.NOs</th>
    <th>SUBJECTS</th>
    <th>SUBJECT CODES</th>
    <th>MARKS</th>
        </tr>
        <tr>
            <td> 1 </td>
            <td> SUB1 </td>
            <td> SUB01 </td>
            <td> <%=sub1%> </td>
            
        </tr>
        <tr>
            <td> 2 </td>
            <td> SUB2 </td>
            <td> SUB02 </td>
            <td> <%=sub2%> </td>
            
        </tr>
        <tr>
            <td> 3 </td>
            <td> SUB3 </td>
            <td> SUB03 </td>
            <td> <%=sub3%> </td>
           
        </tr>
        <tr>
            <td> 4 </td>
            <td> SUB4 </td>
            <td> SUB04 </td>
            <td> <%=sub4%> </td>
          
        </tr>
        <tr>
            <td> 5 </td>
            <td> SUB5 </td>
            <td> SUB05 </td>
            <td> <%=sub5%> </td>
          
        </tr>
        <tr>
            <td> 6 </td>
            <td> SUB6 </td>
            <td> SUB06 </td>
            <td> <%=sub6%> </td>
            
        </tr>
        <tr>
            <td> 7 </td>
            <td> SUB7 </td>
            <td> SUB07 </td>
            <td> <%=sub7%> </td>
            
        </tr>
</table><center>

            <br></br>
            
               <form method="post" action="EditData">
        <input type="hidden" name="studentid" value="<%=studentid%>"/>
        <input type="hidden" name="table" value="<%=tablename%>"/>
                 SUBJECT :<select name="subject">
  <option value="SUB1">SUBJECT 01</option>
  <option value="SUB2">SUBJECT 02</option>
  <option value="SUB3">SUBJECT 03</option>
  <option value="SUB4">SUBJECT 04</option>
  <option value="SUB5">SUBJECT 05</option>
  <option value="SUB6">SUBJECT 06</option>
  <option value="SUB7">SUBJECT 07</option>
</select>
                            <input type="text" name="data"/>
       SUBMIT : <input type="submit" >    
        </form>
     <%          
}
%>
      
 <br><br><br>
<a href="AdminProfile.jsp">BACK TO HOME</a>
    </body>
</html>
