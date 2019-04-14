<%-- 
    Document   : View
    Created on : Oct 25, 2015, 7:54:44 PM
    Author     : OM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<html>
<head>
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
ResultSet rs = st.executeQuery("select * from  studentresults");
%>
<center> <h1><I><font color="green"> VIEW STUDENT RECORD</h1></center></i></font>

<CENTER><a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
<a href="viewresult.jsp"class="btn btn-success btn-xs">REFRESH</a>
<a href="panel.jsp" class="btn btn-success btn-xs" role="button">BACK</a></CENTER>
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>

<center>  
<!--<table class="table table-bordered table-striped"style="width: 70%">-->
<table class="table table-striped table-bordered  table-condensed"style="width: 70%">  
<tr>   
<th style=" width: 15%">S/NO</th>        
<th style=" width: 15%">STUDENT_ID</th>         
<th style=" width: 15%">ENG101</th>         
<th style=" width: 15%">MATHIO1</th> 
<th style=" width: 15%">CHEM106</th>        
<th style=" width: 15%">PHY106</th>         
<th style=" width: 15%">BIO103</th>         
<th style=" width: 15%">MECH206</th> 
<th style=" width: 15%">PHY102</th>        
<th style=" width: 15%">BIO105</th>         
</tr> 
</center>


<%

while(rs.next())
{
rs.getString("ID");
%>
<tr class="view_field"bgcolor="lightgrey">
<td><div align="center"><%=++count %></div></td>
<td><%= rs.getString("ID") %></td>
<td><%= rs.getString("ENG101") %></td>
<td><%= rs.getString("MATHIO1") %></td>
<td><%= rs.getString("CHEM106") %></td>
<td><%= rs.getString("PHY106") %></td>
<td><%= rs.getString("BIO103") %></td>
<td><%= rs.getString("MECH206") %></td>
<td><%= rs.getString("PHY102") %></td>
<td><%= rs.getString("BIO105") %></td>
<% } %>
</table>
</body>
</html>
