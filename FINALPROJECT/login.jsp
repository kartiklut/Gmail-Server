<%@
page import="java.sql.*"
%>

<%!
	String subm,uname,pass,query,uname1,pass1,logout;
	Connection conn;
	Statement st;
	ResultSet rs;
	PreparedStatement ps;
	Cookie cookie;
	boolean b;
	
%>
<%

Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
st=conn.createStatement();
uname=request.getParameter("name");
pass=request.getParameter("pass");
subm=request.getParameter("submit");
rs=st.executeQuery("Select * from gmail where id='"+uname+"'");
if(rs!=null)
{
	while(rs.next())
	{
		uname1=rs.getString("id");
		pass1=rs.getString("pass");
	}
}
cookie=new Cookie("user",uname);
cookie.setMaxAge(10000);
response.addCookie(cookie);
if(subm.equals("Login"))
{
if(uname.equals(uname1) && pass.equals(pass1))
{%>
<%@ include file="main.jsp" %>
<%}
else
{
	out.println("Incorrect Id or Password.Please try Again!!");
}}
if(subm.equals("Register"))
{
%>
<form action="reg.jsp">
Enter First Name:<input type="text" name="fname"><br>
Enter Last Name:<input type="text" name="lname"><br>
Enter E-mail Id:<input type="text" name="id"><br>
Enter Phone Number:<input type="text" name="num"><br>
Enter Password:<input type="password" name="pass"><br>
<input type="submit" value="Register"><br>
</form>
<%}%>
		

