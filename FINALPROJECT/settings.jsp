<%!
	String clk;
%>
<%
clk=request.getParameter("nm");
if(clk!=null){
if(clk.equals("bg"))
{}
if(clk.equals("chngpass"))
{%>
<form action="chgpass.jsp">
Enter UserName:<input type="text" name="name"><br>
Enter  New Password:<input type="password" name="pass"><br>
<input type="submit" value="Change" name=submit>
</form>		
<%}}%>