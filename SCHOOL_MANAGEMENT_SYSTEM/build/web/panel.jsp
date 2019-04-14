 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd" > 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 


<%@page import="java.sql.Statement"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*;"%>

<HTML>
<HEAD>

<link href="csc/n.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<TITLE>insert data using prepared statement </TITLE>
</HEAD>



<CENTER><h1 class="bg-primary">STUDENT ADMINSTRATION PORTAL</h1></CENTER>
<FORM action="panel.jsp" method="post" allign="center" >
<table align="center"  >
 
<div class="peter">
<CENTER> 
<a href="index.jsp" class="btn btn-info" role="button">HOME</a>
<a href="insert.jsp"class="btn btn-success btn-xs" role ="button">INSERT</a>
<a href="update.jsp"class="btn btn-success btn-xs"> UPDATE</a>
<a href ="searchs.jsp"class="btn btn-success btn-xs">SEARCH</a>
<a href ="stude.jsp"class="btn btn-success btn-xs">SEARCH BY NAME</a>
<a href="delete.jsp"class="btn btn-success btn-xs">DELETE</a>
<a href="studentresult.jsp"class="btn btn-success btn-xs">INPUT RESULT</a>
<a href="view.jsp"class="btn btn-success btn-xs">VIEW TABLE</a>
<a href="viewresult.jsp"class="btn btn-success btn-xs">VIEW STUDENT RESULT</a>
<a href="panel.jsp"class="btn btn-success btn-xs">REFRESH</a>
<a href="adminportal.jsp"class="btn btn-success btn-xs">BACK</a>	

</CENTER>
</div> 
    
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>

<body>
<h1><center><span class="label label-primary">REGISTRAR PORTAL</center></span></h1>
<div class="container"  >
<FORM>
<div class="form-group">    
<label>STUDENT ID  :</label>
<input type="test"class="form-control" name="studentid" placeholder="ENTER YOUR STUDENT ID">      
</div>         

<div class="form-group">    
<label>DEPARTMENT :</label>
<select class="form-control"name="department">
<option>ECONOMIC</option>
<option>COMPUTER SCIENCE</option>
<option>ELECT/ELECT ENG.</option>
<option>MECH. ENG.</option>
<option>INTERNATION LAW</option>
<option>BUSINESS EDUCATION</option>
<option>AGRIC. ECONOMIC</option>
<option>ACCOUNTANCY</option>
<option>MEDICINE & SURGERY</option> 
</select> 
</div>    
    
    
<div class="form-group">    
<label>FALCULTY  :</label>
<select class="form-control"name="falculty">
<option>ENGINEERING</option>
<option>SOCIAL SCIENCE</option>
<option>LAW</option>
<option>EDUCATION</option>
<option>MEDICINE</option>
<option>AGRICULTURE</option>
<option>MANAGEMENT</option>
<option>NATURAL SCIENCE</option>  
</select> 
</div>    
</FORM>   
    
 <center>      
<button type="submit" class="btn btn-primary" class="">submit</button>   

</form> <hr>
</center>         
</body>
</html>
</TR>

<% 
String studentid = request.getParameter("studentid");
String department= request.getParameter("department");
String falculty = request.getParameter("falculty");  
Connection con = null;
int updateQuery = 0;
if(studentid!=null && department!=null && falculty!=null){
if(studentid!="" && department!="" && falculty!="") {
 try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
String queryString = "INSERT INTO student(FIRSTNAME,LASTNAME,STUDENTID,DEPARTMENT,FALCULTY,MIDDLENAME,STUDENTID,GENDER,DATE_OF_BIRTHDAY,PHONE,EMAIL,ADDRESS,DEPARTMENT,FALCULTY,STATE,COUNTRY,DATE ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?, ?,?)";		   
PreparedStatement  pstatement = con.prepareStatement(queryString);
pstatement.setString(1, studentid);
pstatement.setString(2, department);
pstatement.setString(3, falculty);   
updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) 
{
%>

<BR>
<TABLE style="background-color: #ffffff;"align="center" WIDTH="20%" border="3"style="border-collapse:collapse"bordercolor="#33FF00">
<tr><th><font color="red" ><CENTER>you are successfully registered.</th></tr></font></CENTER> 
</table>

<%
}
} 
catch (Exception ex) {
out.println("<center>Unable to connect to database.</center>");
}
finally {
con.close();
}
}
}
%>
</FORM>
</body> 
</HTML>