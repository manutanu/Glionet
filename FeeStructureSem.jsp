

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
    </head>
    <body>
<%
String sem=request.getParameter("sem");
if(sem.equals("SEM1")){
%>
<form action="Upload_FeeStructure" method="post" enctype="multipart/form-data">
<input type="file" name="file" size="50">
<br/>
<input type="submit" value="upload file">
</form>        
<%
}  
if(sem.equals("SEM2")){
%>

 <form action="Upload_FeeStructure2" method="post" enctype="multipart/form-data">
<input type="file" name="file" size="50">
<br/>
<input type="submit" value="upload file">
</form>        
        
<%
} 

if(sem.equals("SEM3")){
%>

<form action="Upload_FeeStructure3" method="post" enctype="multipart/form-data">
<input type="file" name="file" size="50">
<br/>
<input type="submit" value="upload file">
</form>         
        
<%
}

if(sem.equals("SEM4")){
%>

<form action="Upload_FeeStructure4" method="post" enctype="multipart/form-data">
<input type="file" name="file" size="50">
<br/>
<input type="submit" value="upload file">
</form>         
        
<%
}

if(sem.equals("SEM5")){
%>

<form action="Upload_FeeStructure5" method="post" enctype="multipart/form-data">
<input type="file" name="file" size="50">
<br/>
<input type="submit" value="upload file">
</form>         
        
<%
}

if(sem.equals("SEM6")){
%>

<form action="Upload_FeeStructure6" method="post" enctype="multipart/form-data">
<input type="file" name="file" size="50">
<br/>
<input type="submit" value="upload file">
</form>         
        
<%
}

if(sem.equals("SEM7")){
%>

 <form action="Upload_FeeStructure7" method="post" enctype="multipart/form-data">
<input type="file" name="file" size="50">
<br/>
<input type="submit" value="upload file">
</form>        
        
<%
}

if(sem.equals("SEM8")){
%>

 <form action="Upload_FeeStructure8" method="post" enctype="multipart/form-data">
<input type="file" name="file" size="50">
<br/>
<input type="submit" value="upload file">
</form>        
        
<%
}

%>
    </body>
</html>
