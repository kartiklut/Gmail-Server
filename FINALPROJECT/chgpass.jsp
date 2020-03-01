PASSWORD CHANGED
<%@
page import="java.sql.*"
%>
<%!
	String idd,passs;
	Connection cc;
	Statement ss;
	ResultSet rr;
	PreparedStatement ps;
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
cc=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
ss=cc.createStatement();
idd=request.getParameter("name");
passs=request.getParameter("pass");
ps=cc.prepareStatement("update gmail set pass=? where id=?");
ps.setString(1,passs);
ps.setString(2,idd);
ps.executeUpdate();
%>