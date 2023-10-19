<%-- 
    Document   : validate
    Created on : Sep 20, 2023, 11:09:46?AM
    Author     : Samsa
--%>
<%@page import="dbPack.DbManager"%>
<%@page import="java.sql.ResultSet"%>

<%
   String ano=request.getParameter("ano");
   DbManager dm=new DbManager();
   String query="select * from booking where aadharno='"+ano+"'";
   ResultSet rs=dm.select(query);
   if(rs.next())
   {
     out.print("<script>alert('Bookin is already done'); window.location.href='booking.jsp';</script>");
}else{
    session.setAttribute("ano", ano);
    response.sendRedirect("book.jsp");
}
%>