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
<a href="ms2.jsp"class="btn btn-success btn-xs">REFRESH</a>
<a href="mscpanel.jsp" class="btn btn-success btn-xs">BACK</a>
</CENTER>
<br><br>

<% 
Connection con;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
Statement statement = con.createStatement();
String ID = request.getParameter("ID");  
ResultSet resultset = 
statement.executeQuery("select *  from MASTER where ID = '" + ID + "'") ; 
if(!resultset.next()) {
out.println("<center>Sorry, could not find that student id in database.</center> ");
} else {
%>


<center>  
<!--<table class="table table-bordered table-striped"style="width: 70%">-->
<table class="table table-striped table-bordered  table-condensed"style="width: 70%">  
<tr>   
      
<th style=" width: 15%">ID</th>         
<th style=" width: 15%">FIRSTNAME</th>         
<th style=" width: 15%">DEPARTMENT</th> 

<th style=" width: 15%">FALCULTY</th>        
<th style=" width: 15%">PHONE</th>  
<th style=" width: 15%">EMAIL</th>           
<th style=" width: 15%">GRADE</th>        
<th style=" width: 15%">ADDRESS</th> 

<th style=" width: 15%">L.G.A</th>        
<th style=" width: 15%">TITTLE</th> 
<th style=" width: 15%">STATE</th> 
<th style=" width: 15%">NATIONALITY</th>         
<th style=" width: 15%">DATE</th> 
<th style=" width: 15%">DATE_OF_BIRTHDAY</th>        

</tr> 
</center>




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
