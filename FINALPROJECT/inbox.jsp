INBOX
<%@
page import="java.sql.*"
%>
<%!
	
	Connection c;
	Statement s;
	ResultSet r;
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
s=c.createStatement();
r=s.executeQuery("Select * from gmail");
	while(r.next())
		{
			out.println("<br>From: "+r.getString(4)+"<br>");
			out.println("Message: "+r.getString(5)+"<br>");
			
		}	
		
%>