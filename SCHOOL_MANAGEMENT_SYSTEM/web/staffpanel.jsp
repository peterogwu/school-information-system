 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd" >    
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<HTML>
<HEAD>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<TITLE>insert data using prepared statement </TITLE>
</HEAD>

<body bgcolor="WHITE">
<link href="csc/m.css" rel="stylesheet" type="text/css"/>
<div class="head">
<center> <h1><I><font color="red" background="pink"> STAFF ADMINSTRATION PORTAL</h1></center></i></font>
</DIV>

<center><h2><font color="green">  fill out the following form</h2></center></font>
<FORM action="staffpanel.jsp" method="get" allign="center" >
<table align="center"  >
 
<div class="peter">
<CENTER> 
<a href="index.jsp" class="btn btn-info" role="button">HOME</a>
<a href="staff.jsp"class="btn btn-success btn-xs" role ="button">INSERT</a>
<a href="staffupdate.jsp"class="btn btn-success btn-xs"> UPDATE</a>
<a href="staf.jsp" class="btn btn-success btn-xs">SEARCH</a>
<a href="staffv.jsp"class="btn btn-success btn-xs">VIEW TABLE</a>	
<a href="staffdelete.jsp"class="btn btn-success btn-xs">DELETE</a>
<a href="staffpanel.jsp"class="btn btn-success btn-xs">REFRESH</a>
<a href="adminportal.jsp"class="btn btn-success btn-xs">BACK</a>	
</CENTER>
</div> 
    
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>
<tr>
<TD>STAFF ID:</TD><TD><INPUT type="TEXT" name="studentid"size="30"placeholder="ENTER YOUR STUDENT ID"required></td>     

<TD>DEPARTMENT:</TD>
<td> <select name="department">
<option>ECONOMIC</option>
<option>COMPUTER SCIENCE</option>
<option>ELECT/ELECT ENG.</option>
<option>MECH. ENG.</option>
<option>INTERNATION LAW</option>
<option>BUSINESS EDUCATION</option>
<option>AGRIC. ECONOMIC</option>
<option>ACCOUNTANCY</option>
<option>MEDICINE & SURGERY</option>
</select></td>    

<TD>FALCULTY:</TD>
<td> <select name="falculty">
<option>ENGINEERING</option>
<option>SOCIAL SCIENCE</option>
<option>LAW</option>
<option>EDUCATION</option>
<option>MEDICINE</option>
<option>AGRICULTURE</option>
<option>MANAGEMENT</option>
<option>NATURAL SCIENCE</option>
</select></td>     
</TR>
</table> 

<BR>
<div class="form-group">
<CENTER>
<input type="submit" class="btn btn-primary" value="SUBMIT">
<a href="index.jsp"class="btn btn-danger">EXIT</a>
<!--<input type="submit" name="index.jsp" class="btn btn-primary" value="UPDATE">-->
</center>
</table>    
</div>
<% 
String studentid = request.getParameter("studentid");
String department = request.getParameter("department");
String falculty = request.getParameter("falculty");
Connection con = null;

int updateQuery = 0;
if(studentid!=null &&  department!=null && falculty!=null   ){	 
if(studentid!=""  &&  department!="" && falculty!=""   ) {
try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
String queryString = "INSERT INTO STAFF( STAFFID,DEPARTMENT,FALCULTY ) VALUES (?, ?, ?)";	   
PreparedStatement  pstatement = con.prepareStatement(queryString);
pstatement.setString(1, studentid);
pstatement.setString(2, department);
pstatement.setString(3,falculty);
updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) {
%>


<BR>
<TABLE style="background-color: #ffffff;"align="center" WIDTH="20%" border="3"style="border-collapse:collapse"bordercolor="#33FF00">
<tr><th><font color="red" ><CENTER>you are successfully registered</th></tr></font></CENTER> 
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
</HTML>