<%-- 
    Document   : View
    Created on : Oct 25, 2015, 7:54:44 PM
    Author     : OM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="csc/m.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VIEW STUDENT RECORD</title>
<link href="stylesheet.css" type="text/css" rel="stylesheet" media="all" />
<style type="text/css">
body
{
background-color:white;
color: black;
}
.wel
{
color:rgb(121,56,250);
font-size:24px;
}
.bm
{
color:red;
font-size:18px;
}
a
{
text-decoration:none;
color:maroon;
font-size:20px;
}
a:hover
{
text-decoration:underline;
color:rgb(90,216,210);
}
h2
{
text-align:center;
color:olive;
font-size:30px;
}
</style>

</head>
<body>
<%
Connection con;
int count=0;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
Statement st= con.createStatement();
ResultSet rs = st.executeQuery("select * from student");
%>
<center> <h1><I><font color="green"> VIEW STUDENT RECORD</h1></center></i></font>
<CENTER><a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
    <a href="view.jsp"class="btn btn-success btn-xs">REFRESH</a>
<a href="panel.jsp" class="btn btn-success btn-xs" role="button">BACK</a></CENTER>
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>


<table class="table table-striped table-bordered  table-condensed"style="width: 70%">  
<tr>
<th>S/NO</th>   
<th>FIRSTNAME</th>        
<th>LASTNAME</th>         
<th>MIDDLENAME</th>         
<th>STUDENTID</th> 
<th>GENDER</th>        
<th>DATE_OF_BIRTHDAY</th>         
<th>PHONE</th>         
<th>EMAIL</th> 
<th>ADDRESS</th>        
<th>DEPARTMENT</th>         
<th>FALCULTY</th>         
<th>STATE</th> '
<th>COUNTRY</th>         
<th>DATE</th>
</tr> 
  </center>


<%
while(rs.next())
{
rs.getString("STUDENTID");
%>
<tr class="view_field" bgcolor="lightgrey">
<td><div align="center"><%=++count %></div></td>
<td><%= rs.getString("FIRSTNAME") %></td>
<td><%= rs.getString("LASTNAME") %></td>
<td><%= rs.getString("MIDDLENAME") %></td>
<td><%= rs.getString("STUDENTID") %></td>
<td><%= rs.getString("GENDER") %></td>
<td><%= rs.getString("DATE_OF_BIRTHDAY") %></td>
<td><%= rs.getString("PHONE") %></td>
<td><%= rs.getString("EMAIL") %></td>
<td><%= rs.getString("ADDRESS") %></td>
<td><%= rs.getString("DEPARTMENT") %></td>
<td><%= rs.getString("FALCULTY") %></td>
<td><%= rs.getString("STATE") %></td>
<td><%= rs.getString("COUNTRY") %></td>
<td><%= rs.getString("DATE") %></td>
</tr>
<% } %>


</table>
</body>
</html>
