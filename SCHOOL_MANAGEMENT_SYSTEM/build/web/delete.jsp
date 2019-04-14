<%-- 
    Document   : delete
    Created on : Jan 28, 2018, 11:59:07 AM
    Author     : peter ogwu
--%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<HTML>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body bgcolor="WHITE">
<!--<center> <h1><I><font color="maron"> STUDENT REGISTRATION FORM</h1></center></i></font>-->
<CENTER>
<center> <h2><font color="green"> DELETE FORM</h2></center></font>

<CENTER>
<a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
<a href="delete.jsp"class="btn btn-success btn-xs">REFRESH</a>     
<a href="panel.jsp"class="btn btn-success btn-xs">BACK</a>
</CENTER>  
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>
<FORM action="delete.jsp" method="POST" allign="center"color="pink" >

    
<div class="container">

  
<div class="container"  >
<form>
<div class="form-group">    
<label>STUDENT ID:</label>
<input type="test"class="form-control"name="STUDENTID" placeholder="ENTER YOUR STUDENT ID">      
</div>     
  
<input type="submit"  class="btn btn-primary" value="SUMIT">
<a href="index.jsp"class="btn btn-danger">EXIT</a> 
</div>  
</CENTER>   
</FORM>
</body>
</html>
<%
String STUDENTID = request.getParameter("STUDENTID");
Connection con = null;

int updateQuery = 0;
if(STUDENTID!=null ){
if(STUDENTID!=""  ) {   


try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
String queryString = ("delete from school  WHERE STUDENTID =?" );	   
PreparedStatement  pstatement = con.prepareStatement(queryString);

pstatement.setString(1, STUDENTID);
updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) {
%>

<BR>
<TABLE style="background-color: #ffffff;"align="center" WIDTH="20%" border="3"style="border-collapse:collapse"bordercolor="#33FF00">
<tr><th><font color="red" ><CENTER> successfully deleted.</th></tr></font></CENTER> 
</table>


<%
}
} 
catch (Exception ex) {
out.println("Unable to connect to database.");
}
finally {
con.close();
}
}
}
%>
</FORM>
</body> 
</html>