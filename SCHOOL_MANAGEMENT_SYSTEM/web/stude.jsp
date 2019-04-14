<%-- 
    Document   : search
    Created on : Feb 26, 2018, 7:36:19 AM
    Author     : peter ogwu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>search using like operator</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <br>
<CENTER><a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
<a href="stude.jsp"class="btn btn-success btn-xs">REFRESH</a>
<a href="panel.jsp"class="btn btn-success btn-xs">BACK</a> </CENTER>   
<br>
<form act="search.jsp" method="POST">
<div class="container">
<div class="form-group">
<div class="col-sm-5">
<div class="input-group">
<input type="text" name="search"class="form-control" placeholder="type First Chars of Department Name"autocomplete="off">       
<div class="input-group-btn">
<button type="submit"value="Search"class="btn btn-primary"><Span class="glyphicon glyphicon-Search"></Span>Search</button>
 
      
</div>               
</div>      
</div>                        
</div> 
<br>  
<table class="table table-bordered table-striped"style="width: 70%">
<tr>
    
<th style=" width: 15%">FIRSTNAME</th>        
<th style=" width: 15%">LASTNAME</th>         
<th style=" width: 15%">MIDDLENAME</th>         
<th style=" width: 15%">STUDENTID</th> 
<th style=" width: 15%">GENDER</th>        
<th style=" width: 15%">DATE_OF_BIRTHDAY</th>         
<th style=" width: 15%">PHONE</th>         
<th style=" width: 15%">EMAIL</th> 
<th style=" width: 15%">ADDRESS</th>        
<th style=" width: 15%">DEPARTMENT</th>         
<th style=" width: 15%">FALCULTY</th>         
<th style=" width: 15%">STATE</th> '
<th style=" width: 15%">COUNTRY</th>         
<th style=" width: 15%">DATE</th>
</tr>   
<%
try
{ 
Connection con = null;  
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
String Query="select * from school where LASTNAME like'%"+request.getParameter("search")+"%'";
Statement stm=con.createStatement();
ResultSet rs=stm.executeQuery(Query);
while(rs.next())
{
%>
<tr>  
<td><%=rs.getString("FIRSTNAME")%></td>    
<td><%=rs.getString("LASTNAME")%></td>  
<td><%=rs.getString("MIDDLENAME")%></td>  
<td><%=rs.getString("STUDENTID")%></td>    
<td><%=rs.getString("GENDER")%></td>  
<td><%=rs.getString("DATE_OF_BIRTHDAY")%></td>  
<td><%=rs.getString("PHONE")%></td> 
<td><%=rs.getString("EMAIL")%></td>    
<td><%=rs.getString("ADDRESS")%></td>  
<td><%=rs.getString("DEPARTMENT")%></td>  
<td><%=rs.getString("FALCULTY")%></td> 
<td><%=rs.getString("STATE")%></td>    
<td><%=rs.getString("COUNTRY")%></td>  
<td><%=rs.getString("DATE")%></td>    
</tr>
<%
 }
 }  
catch(Exception ex)
{
ex.printStackTrace();
}
%>
</table>
</div>       
</form>    
</body>
</html>
