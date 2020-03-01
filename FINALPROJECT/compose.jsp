COMPOSE MAIL
<%@
page import="java.sql.*"
%>

<%!
	String too,frm,msg,subm;
	Connection conn;
	Statement st;
	ResultSet rs;
	PreparedStatement ps;
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
st=conn.createStatement();
too=request.getParameter("to");
frm=request.getParameter("from");
msg=request.getParameter("msg");
subm=request.getParameter("submit");
if(subm.equals("Send"))
{
ps=conn.prepareStatement("insert into gmail values(null,null,?,?,?)");
ps.setString(1,too);
ps.setString(2,frm);
ps.setString(3,msg);
ps.executeUpdate();
%>SEND
<%}
if(subm.equals("Draft"))
{
ps=conn.prepareStatement("insert into compose values(?,?,?)");
ps.setString(1,too);
ps.setString(2,frm);
ps.setString(3,msg);
ps.executeUpdate();
%>Saved To Draft<%}%>