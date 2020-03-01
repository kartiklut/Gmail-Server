Sent E-mail Deleted 
<%@
page import="java.sql.*"
%>
<%!
String i;
Connection coc;
Statement sos;
ResultSet ror;
PreparedStatement pos;
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
coc=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
sos=coc.createStatement();
i=request.getParameter("ii");
pos=coc.prepareStatement("DELETE FROM gmail WHERE too=?");
pos.setString(1,i);
pos.executeUpdate();

%>
