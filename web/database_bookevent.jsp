<%-- 
    Document   : database_bookevent
    Created on : 26-Jun-2022, 11:10:31 pm
    Author     : AKSHAY
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function display_msg(){
                alert("Event successfully booked");
            }
        </script>
    </head>
    <body onload="dispaly_msg()">
        <h1>
            <%
                String b_evname=request.getParameter("event_name");
                String b_dept=request.getParameter("p_dept");
                String b_participant_name=request.getParameter("p_name");
                String  b_mobile=request.getParameter("p_mobile");
                String b_email=request.getParameter("p_email");
                String b_date=request.getParameter("p_date");
                int b_evid=Integer.parseInt(request.getParameter("p_evid"));

                
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eventmanagement","root","root");
                    Statement st=db.createStatement();
                    String querry="insert into registration_details(Participant_name,Event_name,department,date,Event_id,Mobile_no,Email_id)values('"+b_participant_name+"','"+b_evname+"','"+b_dept+"','"+b_date+"','"+b_evid+"','"+b_mobile+"','"+b_email+"');";
                    st.executeUpdate(querry);
                    response.sendRedirect("Participant_event.jsp");
                }
                catch(Exception e)
                {
                    out.println(e);
                }
             
            %>
        </h1>
    </body>
</html>
