<%-- 
    Document   : database_modifyevent
    Created on : 19-Jun-2022, 8:59:38 pm
    Author     : AKSHAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        
        <h1>
            <%
                String username=request.getParameter("duser");
                String password=request.getParameter("dpass1");
                
                
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eventmanagement","root","root");
                    Statement st=db.createStatement();
                    String querry="delete from login where Email_id='"+username+"' and Password='"+password+"';";
                    st.executeUpdate(querry);
                    response.sendRedirect("delete_user.jsp");
                    
                }
                catch(Exception e)
                {
                    out.println(e);
                }
             
            %>
        </h1>
    </body>
</html>
