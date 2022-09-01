
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
                String event_name=request.getParameter("devent_name");
                String evid=request.getParameter("delevent_id");
                
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eventmanagement","root","root");
                    Statement st=db.createStatement();
                    String querry="delete from Event where  Ev_name='"+event_name+"'";
                    st.executeUpdate(querry);
                    response.sendRedirect("deleteevent.jsp");
                }
                catch(Exception e)
                {
                    out.println(e);
                }
             
            %>
        </h1>
    </body>
</html>
