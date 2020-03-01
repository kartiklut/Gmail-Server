<%@
page import="java.sql.*"
%>

<%!
	String subm,uname,pass;
	Connection conn;
	Statement st;
	ResultSet rs;
	PreparedStatement ps;
%>
REGISTERED
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
st=conn.createStatement();
uname=request.getParameter("id");
pass=request.getParameter("pass");
ps=conn.prepareStatement("insert into gmail values(?,?,null,null,null)");
ps.setString(1,uname);
ps.setString(2,pass);
ps.executeUpdate();

%>