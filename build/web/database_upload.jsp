
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function dalert(){
                alert("Created user successfully");
            }
        </script>
    </head>
    <body onload="dalert()">
        
        <h1>
            <%
                String c_user=request.getParameter("c_email");
                String c_pwd=request.getParameter("c_pass2");
                String c_category=request.getParameter("cusertype");
               

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eventmanagement","root","root");
                    Statement st=db.createStatement();                    
                    String querry="insert into login(Email_id,Password,Category) values('"+c_user+"','"+c_pwd+"','"+c_category+"');";
                    st.executeUpdate(querry);
                    response.sendRedirect("create_user.jsp");
                }
                catch(Exception e)
                {
                    out.println(e);
                }
             
            %>
        </h1>
    </body>
</html>
