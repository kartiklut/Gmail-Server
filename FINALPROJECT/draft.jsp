DRAFT
<%@
page import="java.sql.*"
%>
<%!
	
	Connection co;
	Statement sttt;
	ResultSet rsss;
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
sttt=co.createStatement();
rsss=sttt.executeQuery("Select * from compose");
	while(rsss.next())
		{
			out.println("<br>To: "+rsss.getString(1)+"<br>");
			out.println("From: "+rsss.getString(2)+"<br>");
			out.println("Message: "+rsss.getString(3)+"<br>");
			
		}	
		
%>