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
    


<FORM action="studentform.jsp" method="get" allign="center" >
<table align="center"  >
<div class="head">
<center> <h1><I><font color="red" background="pink"> STUDENT REGISTRSTION FORM</h1></center></i></font>
</DIV>
<CENTER><a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
<a href="studentform.jsp"class="btn btn-success btn-xs">REFRESH</a>
<!--<a href="studentform.jsp" class="btn btn-success btn-xs">BACK</a></CENTER>-->
<TR><TD>&nbsp;</td>
<td>&nbsp;</td> 
<TR><TD>&nbsp;</td>
<tr>
<TD>FIRST NAME:</TD><TD><INPUT type="TEXT" name="city"size="30"placeholder="ENTER YOUR FIRSTNAME"required></td>   
<TD>LAST NAME:</TD><TD><INPUT type="TEXT" name="name"size="30"placeholder="ENTER YOUR LASTNAME"required></td> 
<TD>MIDDLE NAME:</TD><TD><INPUT type="TEXT" name="phone"size="30"placeholder="ENTER YOUR MIDDLENAME"></td> 
</tr>    
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>
    
<tr>
<TD>STUDENT ID:</TD><TD><INPUT type="TEXT" name="studentid"size="30"placeholder="ENTER YOUR STUDENT ID "required></td>   
<TD>GENDER:</TD>
<TD><select name="gender">
<option>MALE</option>
<option>FEMALE</option>
</select></TD>

<TD>DATE OF BIRTHDAY:</TD><TD><INPUT type="TEXT" name="db"size="30"placeholder="ENTER YOUR DAATE OF BIRTHDAY"required></td> 
</tr>     
    
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>  
    
<tr>
<TD>PHONE:</TD><TD><INPUT type="TEXT" name="phone2"size="30"placeholder="ENTER YOUR PHONE NUMBER"required></td>   
<TD>EMAIL:</TD><TD><INPUT type="TEXT" name="email"size="30"placeholder="ENTER YOUR EMAIL"required></td> 
<TD>HOME ADDRESS:</TD><TD><TEXTAREA rows="1" cols="29" name="address"placeholder="ENTER YOUR HOME ADDRESS"required></TEXTAREA></TD>

</tr>       
  
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>
<TR>
<TD>STATE:</TD><TD><INPUT type="TEXT" name="state"size="30"placeholder="ENTER YOUR STATE"required></td> 
<TD>COUNTRY:</TD><TD><INPUT type="TEXT" name="country"size="30"placeholder="ENTER YOUR COUNTRY"required></td>
<TD>DATE:</TD><TD><INPUT type="date" name="date"size="25"placeholder="ENTER YOUR DATE"required></td>
</TR>
</table> 

<BR>
<div class="form-group">
<CENTER>
<input type="submit" class="btn btn-primary" value="SUBMIT">
<a href="index.jsp"class="btn btn-danger">EXIT</a>
<!--<input type="submit" name=update.jsp" class="btn btn-primary" value="UPDATE">
<input type="submit" name=delete.jsp" class="btn btn-primary" value="SEARCH">
<input type="submit"  class="btn btn-danger" value="DELETE">-->
</center>
</table>    
</div>
<%
String name = request.getParameter("name");
String city = request.getParameter("city");
String phone = request.getParameter("phone");  
String studentid = request.getParameter("studentid");
String gender = request.getParameter("gender");
String db = request.getParameter("db");  
String phone2 = request.getParameter("phone2");
String email = request.getParameter("email");
String address= request.getParameter("address"); 
String state= request.getParameter("state");
String country = request.getParameter("country");
String date= request.getParameter("date");
Connection con = null;

int updateQuery = 0;
if(name!=null && city!=null && phone!=null && studentid!=null && gender!=null && db!=null      && phone2!=null && email!=null && address!=null        && state!=null        && country!=null && date!=null                  ){	 
if(name!="" && city!="" && phone!="" &&  studentid!="" && gender!="" && db!=""    &&  phone2!="" && email!="" && address!=""  && state!=""    && country!="" &&  date!=""                 ) {
try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
String queryString = ("UPDATE school   set  FIRSTNAME=?,LASTNAME=?,MIDDLENAME=?,GENDER=?,DATE_OF_BIRTHDAY=?,PHONE=?,EMAIL=?,ADDRESS=?,STATE=?,COUNTRY=?,DATE=? WHERE STUDENTID =?" );
PreparedStatement  pstatement = con.prepareStatement(queryString);
pstatement.setString(1, name);
pstatement.setString(2, city);
pstatement.setString(3, phone);
pstatement.setString(4, studentid);
pstatement.setString(5, gender);
pstatement.setString(6, db);
pstatement.setString(7, phone2);
pstatement.setString(8, email);
pstatement.setString(9, address);
pstatement.setString(10, country);
pstatement.setString(11,date);
pstatement.setString(12, studentid);
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