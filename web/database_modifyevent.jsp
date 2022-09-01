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
                String event_name=request.getParameter("mevent_name");
                int event_id=Integer.parseInt(request.getParameter("mev_id"));
                String event_date=request.getParameter("mev_date");
                String event_location=request.getParameter("mlocation");
                
                
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eventmanagement","root","root");
                    Statement st=db.createStatement();
                    String querry="update Event set Ev_name='"+event_name+"',Ev_date='"+event_date+"',Ev_location='"+event_location+"' where Ev_id="+event_id+";";
                    st.executeUpdate(querry);
                    response.sendRedirect("modify_event.jsp");
                    
                }
                catch(Exception e)
                {
                    out.println(e);
                }
             
            %>
        </h1>
    </body>
</html>
