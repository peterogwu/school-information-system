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
<center> <h2><font color="green"> DELETE FORM</h2></center></font>
  <CENTER><a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
      <a href="phdd.jsp"class="btn btn-success btn-xs">REFRESH</a>
    <a href="phdpanel.jsp"class="btn btn-success btn-xs">BACK</a> </CENTER>
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>
<FORM action="phdd.jsp" method="get" allign="center"color="pink" >
<table align="center" >
<TRY>
<TD>PH.D ID:</TD><TD><INPUT type="TEXT" name="studentid" placeholder="ENTER YOUR PH.D ID"required></td> 
</try>
</table> 
    
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>
<div class="form-group">
<CENTER>
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>
<input type="submit"  class="btn btn-primary" value="DELETE">
<a href="index.jsp"class="btn btn-danger">EXIT</a> 
</center>
</table>    
</div>

</body>
</html>
<%
String studentid = request.getParameter("studentid");
Connection con = null;

int updateQuery = 0;
if(studentid!=null ){
if(studentid!=""  ) {   


try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
String queryString = ("delete from DOCTOR  WHERE ID =?"  );	   
PreparedStatement  pstatement = con.prepareStatement(queryString);

pstatement.setString(1, studentid);
updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) {
%>

<BR>
<TABLE style="background-color: #ffffff;"align="center" WIDTH="20%" border="3"style="border-collapse:collapse"bordercolor="#33FF00">
<tr><th><font color="red" ><CENTER>successfully deleted from the database.</th></tr></font></CENTER> 
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