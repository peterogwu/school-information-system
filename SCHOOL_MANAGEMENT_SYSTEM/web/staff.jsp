<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd" > 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<HTML>
<HEAD>
    <link href="csc/n.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<TITLE>insert data using prepared statement </TITLE>
</HEAD>

<body bgcolor="WHITE">
    
<div class="head">
<center> <h1><I><font color="red" background="pink"> STAFF PORTAL</h1></center></i></font>
</DIV>
<CENTER><a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
<a href="staff.jsp"class="btn btn-success btn-xs">REFRESH</a>
<a href="staffpanel.jsp"class="btn btn-success btn-xs">BACK</a> </CENTER>
<TR><TD>&nbsp;</td>
<td>&nbsp;</td> 
<center><h2><font color="green">  fill out the following form</h2></center></font>
<FORM action="staff.jsp" method="get" allign="center" >
<table align="center"  >
 
<tr>
<TD>TITTLE:</TD>
<TD><select name="title">
<option>MR</option>
<option>MRS</option>
</select></TD>
    
<TD>FIRST NAME:</TD><TD><INPUT type="TEXT" name="firstname"size="30"placeholder="ENTER YOUR FIRSTNAME"required></td>  
<TD>LAST NAME:</TD><TD><INPUT type="TEXT" name="lastname"size="30"placeholder="ENTER YOUR LASTNAME"required></td> 
 
</tr>   


<TR><TD>&nbsp;</td>
<td>&nbsp;</td>
    
<tr>
<TD>MIDDLE NAME:</TD><TD><INPUT type="TEXT" name="middlename"size="30"placeholder="ENTER YOUR MIDDLENAME"></td>     
<TD>STAFF ID:</TD><TD><INPUT type="TEXT" name="staffid"size="30"placeholder="ENTER YOUR STUDENT ID NUMBER"required></td>   
<TD>GENDER:</TD>
<TD><select name="gender">
<option>MALE</option>
<option>FEMALE</option>
</select></TD>

 
</tr>     
    
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>  
    
<tr>
<TD>DATE OF BIRTHDAY:</TD><TD><INPUT type="TEXT" name="db"size="30"placeholder="ENTER YOUR DAATE OF BIRTHDAY"required></td> 
<TD>PHONE:</TD><TD><INPUT type="TEXT" name="phone"size="30"placeholder="ENTER YOUR PHONE NUMBER"required></td>   
<TD>EMAIL:</TD><TD><INPUT type="email" name="email"size="30"placeholder="ENTER YOUR EMAIL"required></td> 


</tr>       
  
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>


<tr>
<TD>HOME ADDRESS:</TD><TD><TEXTAREA rows="1" cols="29" name="address"placeholder="ENTER YOUR HOME ADDRESS"required></TEXTAREA></TD>    
   
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
</tr> 

<TR><TD>&nbsp;</td>
<td>&nbsp;</td> 

<TR>
<TD>GRADE:</TD>
<td> <select name="grade">
<option>N.C.E</option>
<option>O.N.D</option>
<option>DEPLOMA</option>
<option>H.N.D</option>
<option>B.SC</option>
<option>M.SC</option>
<option>PH.D</option>
<option>ASSOCIATE PROF.</option>
</select></td>     <!--


--><TD>CGP:</TD><TD><INPUT type="TEXT" name="cgp"size="30"placeholder="ENTER YOUR CGP"required></td> 
<TD>EXPERIENCE:</TD><TD><INPUT type="number" name="exp"size="30"placeholder="ENTER YOUR EXPERIENCE" min="0" max="30"required></td>  

</TR>

<TR><TD>&nbsp;</td>
<td>&nbsp;</td> 

<TR>
<TD>L.G.A:</TD><TD><INPUT type="TEXT" name="lga"size="30"placeholder="ENTER YOUR L.G.A"required></td> 
<TD>STATE:</TD><TD><INPUT type="TEXT" name="state"size="30"placeholder="ENTER YOUR STATE"required></td> 
<TD>COUNTRY:</TD><TD><INPUT type="TEXT" name="country"size="30"placeholder="ENTER YOUR COUNTRY"required></td>  

</TR><

<TR><TD>&nbsp;</td>
<td>&nbsp;</td>
<TR>
<<TD>MARITAL STATUS:</TD>
<TD><select name="status">
<option>SINGLE</option>
<option>MARRIED</option>
</select></TD> 
<TD>NYSC:</TD>
<TD><select name="nysc">
<option>COMPLETED</option>
<option>NOT COMPLETED</option>
</select></TD>  
<TD>DATE:</TD><TD><INPUT type="date" name="date"size="25"placeholder="ENTER YOUR DATE"required></td>

</TR>
</table> 

<BR>
<div class="form-group">
<CENTER>
 <input type="submit" name="staff.jsp"class="btn btn-primary" value="SUBMIT" >
 <a href="index.jsp"class="btn btn-danger">EXIT</a>    

</center>
</table>    
</div>


    
<%
String title = request.getParameter("title");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");  
String middlename = request.getParameter("middlename");
String staffid = request.getParameter("staffid");
String gender = request.getParameter("gender");  
String db = request.getParameter("db");
String phone = request.getParameter("phone");
String email= request.getParameter("email"); 
String address = request.getParameter("address");
String department = request.getParameter("department");
String falculty= request.getParameter("falculty");
String grade = request.getParameter("grade");
String cgp = request.getParameter("cgp");
String exp= request.getParameter("exp");
String lga = request.getParameter("lga");
String state = request.getParameter("state");
String country = request.getParameter("country");  
String status= request.getParameter("status");
String nysc = request.getParameter("nysc");
String date= request.getParameter("date");
Connection con = null;

int updateQuery = 0;
if(title!=null && firstname!=null && lastname !=null && middlename!=null && staffid!=null){	 
if(title!="" && firstname!="" && lastname !="" &&  middlename!="" && staffid!=""  ) {
try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
String queryString = "INSERT INTO STAFF (TITTLE,FIRSTNAME,LASTNAME,MIDDLENAME, STAFFID,GENDER,DATE_OF_BIRTHDAY,PHONE,EMAIL ,ADDRESS,DEPARTMENT,FALCULTY,GRADE,CGP,EXPERIENCE,LGA,STATE,COUNTRY,MARITAL_STATUS,NYSC,DATE ) VALUES (?, ?, ?, ?, ?,?, ?, ?, ?,?, ?, ?, ? , ?, ?, ?, ?, ?, ?, ?, ?)";	   
PreparedStatement  pstatement = con.prepareStatement(queryString);
pstatement.setString(1,title);
pstatement.setString(2,firstname);
pstatement.setString(3,lastname);
pstatement.setString(4,middlename);
pstatement.setString(5,staffid);
pstatement.setString(6, gender);
pstatement.setString(7, db);
pstatement.setString(8, phone);
pstatement.setString(9, email);
pstatement.setString(10, address);
pstatement.setString(11,department);
pstatement.setString(12, falculty);
pstatement.setString(13,grade);
pstatement.setString(14,cgp);
pstatement.setString(15, exp);
pstatement.setString(16, lga);
pstatement.setString(17,  state );
pstatement.setString(18, country);
pstatement.setString(19, status);
pstatement.setString(20, nysc);
pstatement.setString(21, date);
updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) {
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