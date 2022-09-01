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
        <title>Employee details</title>
    </head>
    <body>
        
        <h1>
            <%
                String event_name=request.getParameter("cevent_name");
                int event_id=Integer.parseInt(request.getParameter("cevent_id"));
                String event_date=request.getParameter("cevent_date");
                String event_location=request.getParameter("clocation");
                String dept=request.getParameter("cevent_dept");
                String category=request.getParameter("cevent_type");
                int eid=119;
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eventmanagement","root","root");
                    Statement st=db.createStatement();
                    String querry="insert into Event(Ev_id,Ev_name,Ev_dept,Ev_date,Ev_location)values('"+event_id+"','"+event_name+"','"+dept+"','"+event_date+"','"+event_location+"');";
                    st.executeUpdate(querry);
                    out.println("inserted successfully");
                }
                catch(Exception e)
                {
                    out.println(e);
                }
             
            %>
        </h1>
    </body>
</html>
