
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd" > 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<HTML>
<HEAD>
    <link href="csc/m.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<TITLE>insert data using prepared statement </TITLE>
</HEAD>

<body bgcolor="WHITE">
    
 <div class="head">
<center> <h1><I><font color="red" background="pink"> MASTER DEGREE FORM </h1></center></i></font>
</DIV>
    <CENTER><a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
        <a href="mscform.jsp"class="btn btn-success btn-xs">REFRESH</a>
    <a href="mscpanel.jsp"class="btn btn-success btn-xs">BACK</a> </CENTER>  
    <TR><TD>&nbsp;</td>
<td>&nbsp;</td>
<center><h2><font color="green">  fill out the following form</h2></center></font>
<!--<center><h2><font color="green">  fill out the following form</h2></center></font>-->
<FORM action="mscform.jsp" method="post" allign="center"id="form1" >
<table align="center"  >
 
<tr>
<TD>MSC ID:</TD><TD><INPUT type="TEXT" name="ph"size="30"placeholder="ENTER YOUR FIRSTNAME"required></td> 
<TD>FULL NAME:</TD><TD><INPUT type="TEXT" name="first"size="30"placeholder="ENTER YOUR FIRSTNAME"required></td>   
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

</tr>   

<TR><TD>&nbsp;</td>
<td>&nbsp;</td>
    

<TR>
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
<TD>PHONE:</TD><TD><INPUT type="TEXT" name="phone"size="30"placeholder="ENTER YOUR PHONE NUMBER"required></td>   
<TD>EMAIL:</TD><TD><INPUT type="email" name="email"size="30"placeholder="ENTER YOUR EMAIL"required></td>     
</TR>

<TR><TD>&nbsp;</td>
<td>&nbsp;</td>  

<tr>
<TD>MS GRADE:</TD>
<td> <select name="grade">
<option>FIRST CLASS</option>
<option>SECOND CLASS UPPER</option>
<option>SECOND CLASS LOWER</option>
<option>THIRD CLASS</option>
<option>PASS</option>
</select></td>           
<TD>HOME ADDRESS</TD><TD><INPUT type="TEXT" name="address"size="30"placeholder="ENTER YOUR PHONE NUMBER"required></td>
<TD>L.G.A:</TD><TD><INPUT type="TEXT" name="lga"size="30"placeholder="ENTER YOUR PHONE NUMBER"required></td>
</TR>

<TR><TD>&nbsp;</td>
<td>&nbsp;</td>  
    

<tr>

<TD>STATE:</TD><TD><INPUT type="text" name="state"size="30"placeholder="ENTER YOUR EMAIL"required></td> 
<TD>NATIONALITY:</TD><TD><INPUT type="text" name="country"size="30"placeholder="ENTER YOUR EMAIL"required></td> 
<TD>DATE:</TD><TD><INPUT type="date" name="date"size="30"placeholder="ENTER YOUR EMAIL"required></td> 
</tr>       

<TR><TD>&nbsp;</td>
<td>&nbsp;</td> 

<TR>
<TD>TITTLE:</TD>
<TD><select name="tittle">
<option>MR.</option>
<option>MRS.</option>
</select></TD>  
<TD>DATE OF BIRTHDAY:</TD><TD><INPUT type="date" name="db"size="30"placeholder="ENTER YOUR EMAIL"required></  
    
</TR>

</table> 

<BR>
<div class="form-group">
<CENTER>
<input type="submit" class="btn btn-primary" value="SUBMIT" >
<a href="index.jsp"class="btn btn-danger">EXIT</a> 

</center>
    
</table>    
</div>


    
<%
String ph= request.getParameter("ph");
String first = request.getParameter("first");
String department = request.getParameter("department");  
String falculty = request.getParameter("falculty");
String phone = request.getParameter("phone");
String email = request.getParameter("email");  
String grade = request.getParameter("grade");
String address= request.getParameter("address");
String lga= request.getParameter("lga"); 
String tittle = request.getParameter("tittle");
String state = request.getParameter("state");
String country = request.getParameter("country");
String date = request.getParameter("date");
String db= request.getParameter("db");
Connection con = null;

int updateQuery = 0;
if(ph!=null && first!=null && department!=null &&falculty!=null && phone!=null && email!=null      && grade!=null && address!=null && address!=null       && lga!=null && tittle!=null && state!=null        && country!=null && date!=null   && db!=null                ){	 
if(ph!="" && first!="" && department!="" &&  falculty!="" && phone!="" && email!=""    &&  grade!="" && address!="" && address!=""       &&  lga!="" && tittle!="" && state!=""    && country!="" &&  date!=""    &&  db!=""              ) {
try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
String queryString = "INSERT INTO MASTER ( ID,FIRSTNAME,DEPARTMENT,FALCULTY,PHONE,EMAIL,GRADE,ADDRESS,LGA,TITTLE,STATE,COUNTRY,DATE,DATE_OF_BIRTHDAY ) VALUES (?, ?, ?, ?, ?,?,?,?,?,?, ?, ?, ?, ?)";	   
PreparedStatement  pstatement = con.prepareStatement(queryString);
pstatement.setString(1, ph);
pstatement.setString(2, first);
pstatement.setString(3, department);
pstatement.setString(4, falculty);
pstatement.setString(5, phone);
pstatement.setString(6,email);
pstatement.setString(7, grade);
pstatement.setString(8, address);
pstatement.setString(9, lga);
pstatement.setString(10, tittle);
pstatement.setString(11,state);
pstatement.setString(12, country);
pstatement.setString(13,date);
pstatement.setString(14, db);
updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) 
{
%>

 <BR>
<TABLE style="background-color: #ffffff;"align="center" WIDTH="20%" border="3"style="border-collapse:collapse"bordercolor="#33FF00">
<tr><th><font color="red" ><CENTER>Data is inserted successfully  in database.</th></tr></font></CENTER> 
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