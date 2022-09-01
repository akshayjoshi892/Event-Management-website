
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
 <%
                String user=request.getParameter("name");
                String pass=request.getParameter("password");
                String cat=request.getParameter("luser_type");

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eventmanagement","root","root");
                    PreparedStatement ps=db.prepareStatement("select Email_id,Category from login where Email_id=? and Password=? and Category=?");
                    ps.setString(1, user);
                    ps.setString(2, pass);
                    ps.setString(3, cat);                 
                    ResultSet rs=ps.executeQuery();
                    
                    if(rs.next())
                    {
                        String catg=rs.getString(2);
                        
                        if(catg.equals("Student"))
                        {
                            response.sendRedirect("home_participant.jsp");
                        }
                        if(catg.equals("Faculty"))
                        {
                            
                            response.sendRedirect("home_faculty.jsp?username="+user+"&password="+pass+"&catg="+cat);
                        } 
                        
                        if(catg.equals("Admin"))
                        {
                            response.sendRedirect("home_admin.jsp");
                        } 
                    }
                    else{
                        out.println("Invalid details");
                        
                    }
                    
                    
     }          
                        
                    
                                
                    
                    

    
                catch(Exception e)
                {
                    out.println(e);
                }
             
            %>
</body>
</html>
