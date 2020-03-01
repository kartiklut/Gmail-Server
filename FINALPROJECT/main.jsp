<%!
	String click;
%>

<body bgcolor=white>
	<table border=2 align=center border=4 height=600 width=900 cellspacing=2>
 <caption>WELCOME to GMAIL</caption>
 
 <!-- first row -->
 <tr height=50>
  <th colspan="3" width=700 >GMAIL SERVER<br>
  <%Cookie cc[]=request.getCookies();
		for(Cookie c1:cc)
		{
			if(c1.getName().equals("user"))
			{
				out.println("Welcome "+c1.getValue());
			}
		}%></th>
  <th colspan="1" style='text-align:right' width=200><a href=main.jsp?nm=sett>Settings</a> | <a href=index.html?nm=log>Logout</a></th>
 </tr>
 <!-- Second  row -->
 <tr height=300>
	
	<th colspan=1 width=200 ><a href=main.jsp?nm=ibx>INBOX</a><br>

	<a href=main.jsp?nm=dft>DRAFT</a><br>
	<a href=main.jsp?nm=snt>SENT</a><br>
 
	<a href=main.jsp?nm=tsh>TRASH</a></br>
 
	<a href=main.jsp?nm=newf>NEW FOLDER</a><br>
	<a href=main.jsp?nm=cps>COMPOSE</a><br>

</th>


  <th colspan="2" width=00><font size=3>
	<%
	click=request.getParameter("nm");
	if(click!=null)
	{
		if(click.equals("cps"))
		{%>
			<%@ include file="cps.html"%>
		<%}
		if(click.equals("snt"))
		{%>
			<%@ include file="sent.jsp" %>
	<%}
		if(click.equals("dft"))
		{%>
			<%@ include file="draft.jsp" %>
	<%}
		if(click.equals("ibx"))
		{%>
			<%@ include file="inbox.jsp" %>
	<%}
		if(click.equals("tsh"))
		{%>
			<form action="trash.jsp">
				Enter E-mail ID to delete Mail
			E-mail Id:<input type="text" name="ii"<br>
			<input type="submit" value="DELETE" name=submit>
			</form>		

	<%}
		if(click.equals("sett"))
		{%>
			<body>
			<table border=3 cellspacing=2>
			<tr>
				<td><a href=settings.jsp?nm=bg>Change Background</a></td>	
				<td><a href=settings.jsp?nm=chngpass>Change Password</a></td>	
			<tr>
			</table>
			</body>
		<%}}%>
  </th>
  <th width=100></th>
 </tr>
 
 </table>
</body>


		
		
	