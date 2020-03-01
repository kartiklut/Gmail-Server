SENT MAIL
<%@
page import="java.sql.*"
%>
<%!
	
	Connection con;
	Statement stt;
	ResultSet rss;
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
stt=con.createStatement();
rss=stt.executeQuery("Select * from gmail");
	while(rss.next())
		{
			out.println("<br>To: "+rss.getString(3)+"<br>");
			out.println("From: "+rss.getString(4)+"<br>");
			out.println("Message: "+rss.getString(5)+"<br>");
			
		}
		
%>