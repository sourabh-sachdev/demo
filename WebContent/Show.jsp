<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<table align="center" border="1px">
<%
String qr="select * from product";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	do
	{
		String name=rs.getString("name");
		String price=rs.getString("price");
		String cat=rs.getString("cat");
		String cmp=rs.getString("cmp");
		%>
			<tr>
			<td><%=name %></td>
			<td><%=price %></td>
			<td><%=cat %></td>
			<td><%=cmp %></td>
			<td><a href="Delete?name=<%=name %>">Delete</a></td>
			<td><a href="UpdatePro.jsp?name=<%=name %>&price=<%=price %>&cat=<%=cat %>&cmp=<%=cmp %>">Update</a></td>
			</tr>		
		<%
	}while(rs.next());
}
else
{
	out.println("no records found");
}
con.close();
%>
</table>