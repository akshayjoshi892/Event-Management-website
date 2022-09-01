<%-- 
    Document   : index
    Created on : 07-May-2022, 6:53:14 pm
    Author     : AKSHAY
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        
        <h1>
            <%
                String event_name=request.getParameter("sevent_name");
                int event_id=Integer.parseInt(request.getParameter("sevent_id"));
                String event_date=request.getParameter("sevent_date");
                String event_location=request.getParameter("slocation");
                String dept=request.getParameter("sevent_dept");
                String category=request.getParameter("sevent_type");
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eventmanagement","root","root");
                    Statement st=db.createStatement();
                    String querry="insert into subevent(Ev_id,Ev_name,Ev_dept,date,location,category)values('"+event_id+"','"+event_name+"','"+dept+"','"+event_date+"','"+event_location+"','"+category+"');";
                    st.executeUpdate(querry);
                    response.sendRedirect("fcreate_subevent.jsp");
                }
                catch(Exception e)
                {
                    out.println(e);
                }
             
            %>
        </h1>
    </body>
</html>
