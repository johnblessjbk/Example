<%-- 
    Document   : deleter
    Created on : Sep 21, 2020, 5:14:10 AM
    Author     : Jenisha
--%>

<%@page import="Connection.dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                 String userid=(String)session.getAttribute("loguid");
                String pid=request.getParameter("id");              
              dbconnection con=new dbconnection();
                int i = con.putData("delete from mall where mid='"+pid+"'");
                if (i > 0) {
   %>
                <script>alert(" Deleted");
                    window.location = 'viewmall.jsp';</script>
                    <% 
                } else {
   %>
                <script>alert("Failed");
                    window.location = 'viewmall.jsp';</script>
                    <%                 }
            } catch (Exception e) {
                out.print(e);
            }
        %>    </body>
</html>
