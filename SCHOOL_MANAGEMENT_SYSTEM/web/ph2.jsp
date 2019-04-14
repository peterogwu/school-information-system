<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


<HTML>
<HEAD>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<TITLE>Fetching Data From a Database</TITLE>
</HEAD>
<link href="bootstrap/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<BODY>
<H1><center>Fetching Data From a Database</center></H1>
<CENTER>
<a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
<a href="ph2.jsp"class="btn btn-success btn-xs">REFRESH</a>
<a href="panel.jsp" class="btn btn-success btn-xs">BACK</a>
</CENTER>
<br><br>

<%
Connection con;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
Statement statement = con.createStatement();
String ID= request.getParameter("ID");
ResultSet resultset =
statement.executeQuery("select *  from  DOCTOR where ID = '" + ID + "'") ;
if(!resultset.next()) {
out.println("<center>Sorry, could not find that student id in database.</center> ");
} else {
%>
<!--<table border="3"  cellpadding="5"
cellspacing="1" style="border-collapse:collapse"bordercolor="#33FF00" width="100%">
<tr class="field_name">
--><table class="table table-striped table-bordered  table-condensed"style="width: 70%"> <!--
--><tr>
<td><div align="cente"><strong>FIRSTNAME</strong></div></td>
<td><div align="cente"><strong>LASTNAME</strong></div></td>
<td><div align="cente"><strong>MIDDLENAME</strong></div></td>
<td><div align="cente"><strong>STUDENTID</strong></div></td>
<td><div align="cente"><strong>GENDER</strong></div></td>
<td><div align="cente"><strong>DATE_OF_BIRTHDAY</strong></div></td>
<td><div align="cente"><strong>PHONE</strong></div></td>
<td><div align="cente"><strong>EMAIL</strong></div></td>
<td><div align="cente"><strong>ADDRESS</strong></div></td>
<td><div align="cente"><strong>DEPARTMENT</strong></div></td>
<td><div align="cente"><strong>FALCULTY</strong></div></td>
<td><div align="cente"><strong>STATE</strong></div></td>
<td><div align="cente"><strong>COUNTRY</strong></div></td>
<td><div align="cente"><strong>DATE</strong></div></td>
</TR>




<TR>
<TD> <%= resultset.getString(1) %> </TD>
<TD> <%= resultset.getString(2) %> </TD>
<TD> <%= resultset.getString(3) %> </TD>
<TD> <%= resultset.getString(4) %> </TD>
<TD> <%= resultset.getString(5) %> </TD>
<TD> <%= resultset.getString(6) %> </TD>
<TD> <%= resultset.getString(7) %> </TD>
<TD> <%= resultset.getString(8) %> </TD>
<TD> <%= resultset.getString(9) %> </TD>
<TD> <%= resultset.getString(10) %> </TD>
<TD> <%= resultset.getString(11) %> </TD>
<TD> <%= resultset.getString(12) %> </TD>
<TD> <%= resultset.getString(13) %> </TD>
<TD> <%= resultset.getString(14) %> </TD>


</TR>
</TR>


</TR>
</TABLE>
<BR>
<%
}
%>
</BODY>
</HTML>
