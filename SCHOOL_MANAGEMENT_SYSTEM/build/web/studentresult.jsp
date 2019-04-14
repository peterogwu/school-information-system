<%-- 
    Document   : studentresult
    Created on : Feb 4, 2018, 9:22:16 PM
    Author     : peter ogwu
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="csc/m.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
   <body bgcolor="WHITE">
<div class="head">
<center> <h1><I><font color="red" background="pink">STUDENT RESULT</h1></center></i></font>
</DIV>
 <CENTER><a href="index.jsp" class="btn btn-success btn-xs">HOME</a>
     <a href="studentresult.jsp"class="btn btn-success btn-xs">REFRESH</a>
        <a href="panel.jsp" class="btn btn-success btn-xs" role="button">BACK</a></CENTER>
<TR><TD>&nbsp;</td>
<td>&nbsp;</td>
<FORM action="studentresult.jsp" method="get" allign="center" >
<table align="center"  >
      <TR><TD>&nbsp;</td>
<td>&nbsp;</td>   
      
<tr>
<TD>STUDENT ID:</TD><TD><INPUT type="text" name="ID"size="30"placeholder="ENTER YOUR STUDENT ID"required></td> 
<TD>ENG101:</TD><TD><INPUT type="text" name="ENG101"size="30"placeholder="ENTER YOUR ENG101"required></td> 
<TD>MATHIO1:</TD><TD><INPUT type="text" name="MATHIO1"size="30"placeholder="ENTER YOUR MATH101"required></td> 
</tr>       

<TR><TD>&nbsp;</td>
<td>&nbsp;</td> 
   
        
<tr>
<TD>CHEM106:</TD><TD><INPUT type="text" name="CHEM106"size="30"placeholder="ENTER YOUR CHEM106"required></td> 
<TD>PHY106:</TD><TD><INPUT type="text" name="PHY106"size="30"placeholder="ENTER YOUR PHY106"required></td> 
<TD>BIO103:</TD><TD><INPUT type="text" name="BIO103"size="30"placeholder="ENTER YOUR BI0103"required></td> 
</tr>       

<TR><TD>&nbsp;</td>
<td>&nbsp;</td> 
   
        
<tr>
<TD>MECH206:</TD><TD><INPUT type="text" name="MECH206"size="30"placeholder="ENTER YOUR MECH206"required></td> 
<TD>PHY102:</TD><TD><INPUT type="text" name="PHY102"size="30"placeholder="ENTER YOUR PHY102"required></td> 
<TD>BIO105:</TD><TD><INPUT type="text" name="BIO105"size="30"placeholder="ENTER YOUR BIO105"required></td> 
</tr>       
</table> 
<TR><TD>&nbsp;</td>
<td>&nbsp;</td> 
   
           
    
<BR>
<div class="form-group">
<CENTER>
<input type="submit" class="btn btn-primary" value="SUBMIT">
<a href="index.jsp"class="btn btn-danger">EXIT</a> 
<!--<input type="submit" name="" class="btn btn-primary" value="UPDATE">-->
</center>
</table>    
</div>    
        
    
<%
String ID = request.getParameter("ID");
String ENG101 = request.getParameter("ENG101");
String MATHIO1 = request.getParameter("MATHIO1");  
String CHEM106 = request.getParameter("CHEM106");
String PHY106 = request.getParameter("PHY106");
String BIO103 = request.getParameter("BIO103");  
String MECH206 = request.getParameter("MECH206");
String PHY102 = request.getParameter("PHY102");
String BIO105= request.getParameter("BIO105"); 

Connection con = null;

int updateQuery = 0;
if(ID!=null && ENG101!=null &&MATHIO1!=null && CHEM106!=null &&PHY106!=null &&  BIO103!=null      &&  MECH206!=null && PHY102!=null &&BIO105!=null ){	 
if(ID!="" && ENG101!="" && MATHIO1!="" &&  CHEM106!="" && PHY106!="" &&  BIO103!=""    &&   MECH206!="" && PHY102!="" &&BIO105!="") {
try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
String queryString = "INSERT INTO studentresults(ID,ENG101,MATHIO1, CHEM106,PHY106,BIO103,MECH206,PHY102, BIO105) VALUES (?, ?, ?, ?, ?,?,?,?,?)";	
PreparedStatement  pstatement = con.prepareStatement(queryString);
pstatement.setString(1, ID);
pstatement.setString(2, ENG101);
pstatement.setString(3, MATHIO1);
pstatement.setString(4, CHEM106);
pstatement.setString(5, PHY106);
pstatement.setString(6, BIO103);
pstatement.setString(7, MECH206);
pstatement.setString(8, PHY102);
pstatement.setString(9, BIO105);

updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) {
%>

<BR>
<TABLE style="background-color: #ffffff;"align="center" WIDTH="20%" border="3"style="border-collapse:collapse"bordercolor="#33FF00">
<tr><th><font color="red" ><CENTER>result is successfully entered.</th></tr></font></CENTER> 
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

           
</form>       
</table>        
</body>
</html>
