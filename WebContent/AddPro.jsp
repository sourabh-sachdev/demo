<%@include file="db.jsp" %>
<%@page errorPage="error.jsp" %>
<%
String name=request.getParameter("name");
String price=request.getParameter("price");
String cat=request.getParameter("cat");
String cmp=request.getParameter("cmp");
String qr="insert into product values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, name);
ps.setString(2, price);
ps.setString(3, cat);
ps.setString(4, cmp);
int i=ps.executeUpdate();
if(i>0)
{
	out.println(i+" adde");
}
else
{
	out.println("not added");
}
con.close();
%>