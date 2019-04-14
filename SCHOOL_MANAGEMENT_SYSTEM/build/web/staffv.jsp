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
ResultSet rs = st.executeQuery("select * from STAFF");
%>
<center> <h1><I><font color="green"> VIEW STAFF RECORD</h1></center></i></font>
<CENTER><a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
<a href="staffv.jsp"class="btn btn-success btn-xs">REFRESH</a>
<a href="staffpanel.jsp"class="btn btn-success btn-xs">BACK</a> </CENTER>
<TR><TD>&nbsp;</td>
<td>&nbsp;</td> 



<center>  
<!--<table class="table table-bordered table-striped"style="width: 70%">-->
<table class="table table-striped table-bordered  table-condensed"style="width: 70%"> 
<tr>   
<th style=" width: 15%">S/NO</th>        
<th style=" width: 15%">TITTLE</th>         
<th style=" width: 15%">FIRSTNAME</th>         
<th style=" width: 15%">LASTNAME</th> 
<th style=" width: 15%">MIDDLENAME</th>        
<th style=" width: 15%">STAFFID</th>  
<th style=" width: 15%">GENDER</th> 
<th style=" width: 15%">DATE_OF_BIRTHDAY</th>         
<th style=" width: 15%">PHONE</th> 
<th style=" width: 15%">EMAIL</th>        
<th style=" width: 15%">ADDRESS</th>   
<th style=" width: 15%">DEPARTMENT</th>        
<th style=" width: 15%">FALCULTY</th>         
<th style=" width: 15%">GRADE</th>         
<th style=" width: 15%">CGP</th> 
<th style=" width: 15%">EXPERIENCE</th>        
<th style=" width: 15%">LGA</th>         
<th style=" width: 15%">STATE</th>         
<th style=" width: 15%">COUNTRY</th> 
<th style=" width: 15%">MARITAL_STATUS</th>        
<th style=" width: 15%">NYSC</th>   
<th style=" width: 15%">DATE</th> 
</tr> 
</center>




                
<%

while(rs.next())
{
rs.getString("STAFFID");
%>


<tr class="view_field"bgcolor="lightgrey">
<td><div align="center"><%=++count %></div></td>
<td><%= rs.getString("TITTLE") %></td>
<td><%= rs.getString("FIRSTNAME") %></td>
<td><%= rs.getString("LASTNAME") %></td>
<td><%= rs.getString("MIDDLENAME") %></td>
<td><%= rs.getString("STAFFID") %></td>
<td><%= rs.getString("GENDER") %></td>
<td><%= rs.getString("DATE_OF_BIRTHDAY") %></td>
<td><%= rs.getString("PHONE") %></td>
<td><%= rs.getString("EMAIL") %></td>
<td><%= rs.getString("ADDRESS") %></td>
<td><%= rs.getString("DEPARTMENT") %></td>
<td><%= rs.getString("FALCULTY") %></td>
<td><%= rs.getString("GRADE") %></td>
<td><%= rs.getString("CGP") %></td>
<td><%= rs.getString("EXPERIENCE") %></td>
<td><%= rs.getString("LGA") %></td>
<td><%= rs.getString("STATE") %></td>
<td><%= rs.getString("COUNTRY") %></td>
<td><%= rs.getString("MARITAL_STATUS") %></td>
<td><%= rs.getString("NYSC") %></td>
<td><%= rs.getString("DATE") %></td>



</tr>
<% } %>
</table>
</body>
</html>
