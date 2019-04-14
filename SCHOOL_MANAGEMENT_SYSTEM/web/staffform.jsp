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
<center> <h1><I><font color="red" background="pink"> STAFF FORM</h1></center></i></font>
</DIV>
        
        <CENTER><a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
            <a href="staffform.jsp"class="btn btn-success btn-xs">REFRESH</a>
    </CENTER>
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>       
        
<center><h2><font color="green">  fill out the following form</h2></center></font>
<FORM action="staffform.jsp" method="get" allign="center" >
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
<TD>STAFF ID:</TD><TD><INPUT type="TEXT" name="staffid"size="30"placeholder="ENTER YOUR STAFF ID"required></td>   
<TD>GENDER:</TD>
<TD><select name="gender">
<option>MALE</option>
<option>FEMALE</option>
</select></TD>

 <TR><TD>&nbsp;</td>
<td>&nbsp;</td> 


</tr>     
   
<tr>
<TD>DATE OF BIRTHDAY:</TD><TD><INPUT type="TEXT" name="db"size="30"placeholder="ENTER YOUR DAATE OF BIRTHDAY"required></td> 
<TD>PHONE:</TD><TD><INPUT type="TEXT" name="phone"size="30"placeholder="ENTER YOUR PHONE NUMBER"required></td>   
<TD>EMAIL:</TD><TD><INPUT type="email" name="email"size="30"placeholder="ENTER YOUR EMAIL"required></td> 


</tr>       
  
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>


<tr>
<TD>HOME ADDRESS:</TD><TD><TEXTAREA rows="1" cols="29" name="address"placeholder="ENTER YOUR HOME ADDRESS"required></TEXTAREA></TD>    
   

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
</select></td>     

<TD>CGP:</TD><TD><INPUT type="TEXT" name="cgp"size="30"placeholder="ENTER YOUR CGP"required></td> 


</tr> 


<TD>&nbsp;</td>
<td>&nbsp;</td> 
<TR> 
<TD>EXPERIENCE:</TD><TD><INPUT type="number" name="exp"size="30"placeholder="ENTER YOUR EXPERIENCE" min="0" max="30"required></td> 
<TD>L.G.A:</TD><TD><INPUT type="TEXT" name="lga"size="30"placeholder="ENTER YOUR L.G.A"required></td> 
<TD>STATE:</TD><TD><INPUT type="TEXT" name="state"size="30"placeholder="ENTER YOUR STATE"required></td> 

</TR>

<TR><TD>&nbsp;</td>
<td>&nbsp;</td> 

<TR>

 <TD>NATIONALITY:</TD><TD><INPUT type="TEXT" name="country"size="30"placeholder="ENTER YOUR NATIONALITY"required></td> 
<TD>MARITAL STATUS:</TD>
<TD><select name="status">
<option>SINGLE</option>
<option>MARRIED</option>
</select></TD> 
<TD>NYSC:</TD>
<TD><select name="nysc">
<option>COMPLETED</option>
<option>NOT COMPLETED</option>
</select></TD>  

</TR>

<TR><TD>&nbsp;</td>
<td>&nbsp;</td> 

<TR>
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
String queryString = ("UPDATE  STAFF SET TITTLE=?,FIRSTNAME=?,LASTNAME=?,MIDDLENAME=?, GENDER=?,DATE_OF_BIRTHDAY=?,PHONE=? ,EMAIL=? ,ADDRESS=? ,GRADE=?,CGP=?  ,EXPERIENCE=?,LGA=? ,STATE=?,COUNTRY=?  ,MARITAL_STATUS=?,NYSC=?,DATE=?  WHERE STAFFID =?" );	   
PreparedStatement  pstatement = con.prepareStatement(queryString);
pstatement.setString(1,title);
pstatement.setString(2,firstname);
pstatement.setString(3,lastname);
pstatement.setString(4,middlename);
pstatement.setString(5, gender);
pstatement.setString(6, db);
pstatement.setString(7, phone);
pstatement.setString(8, email);
pstatement.setString(9, address);
pstatement.setString(10,grade);
pstatement.setString(11,cgp);
pstatement.setString(12, exp);
pstatement.setString(13, lga);
pstatement.setString(14,  state );
pstatement.setString(15, country);
pstatement.setString(16, status);
pstatement.setString(17, nysc);
pstatement.setString(18,date);
pstatement.setString(19, staffid);
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