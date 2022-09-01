<%-- 
    Document   : database_signup
    Created on : 10-Jul-2022, 5:05:10 pm
    Author     : AKSHAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String spass=request.getParameter("spwd");   
            String cpass=request.getParameter("cpwd"); 
            String catg=request.getParameter("categ");
            
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eventmanagement","root","root");
                    PreparedStatement ps=db.prepareStatement("select Email_id,Name from login where Email_id=?;");
                    ps.setString(1,email);
                    
                    ResultSet resu=ps.executeQuery();
                    if(resu.next()){
                        out.println("Email Id is already existed or invalid");
                        out.println(",    Please go back and enter correct details.");
                        
                    }
                    else{
                        Statement st=db.createStatement();
                        String query="insert into login(Email_id,Password,Category,Name)values('"+email+"','"+cpass+"','"+catg+"','"+name+"');";
                        st.executeUpdate(query);
                        response.sendRedirect("signup.jsp");
                    }
                }
                catch(Exception e)
                {
                    out.println(e);
                }
             
            %>

    </body>
</html>
