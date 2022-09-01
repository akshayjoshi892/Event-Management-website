<%-- 
    Document   : create_user
    Created on : 14-Jun-2022, 7:08:20 pm
    Author     : AKSHAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%ResultSet resultset1 =null;%>
<%ResultSet resultset2 =null;%>

       <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
                  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');
*{
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: "Poppins", sans-serif;
}
body{
margin: 0;
padding: 0;
background: #e9f4fb;
height: 100vh;
overflow: hidden;
}
.center{
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%, -50%);
width: 400px;
background: white;
border-radius: 10px;
box-shadow: 10px 10px 15px rgba(0,0,0,0.05);
}
.center h1{
text-align: center;
padding: 20px 0;
border-bottom: 1px solid silver;
}
.center form{
padding: 0 40px;
box-sizing: border-box;
}
form .txt_field{
position: relative;
border-bottom: 2px solid #adadad;
margin: 30px 0;
}
.txt_field input{
width: 100%;
padding: 0 5px;
height: 40px;
font-size: 16px;
border: none;
background: none;
outline: none;
}
.txt_field label{
position: absolute;
top: 50%;
left: 5px;
color: #adadad;
transform: translateY(-50%);
font-size: 16px;
pointer-events: none;
transition: .5s;
}
.txt_field span::before{
content: '';
position: absolute;
top: 40px;
left: 0;
width: 0%;
height: 2px;
background: #2691d9;
transition: .5s;
}
.txt_field input:focus ~ label,
.txt_field input:valid ~ label{
top: -5px;
color: #2691d9;
}
.txt_field input:focus ~ span::before,
.txt_field input:valid ~ span::before{
width: 100%;
}
.pass{
margin: -5px 0 20px 5px;
color: #a6a6a6;
cursor: pointer;
}
.pass:hover{
text-decoration: underline;
}
input[type="submit"]{
width: 100%;
height: 50px;
border: 1px solid;
background: #5f94ea;
border-radius: 25px;
font-size: 18px;
color: #e9f4fb;
font-weight: 700;
cursor: pointer;
outline: none;
margin: 0 0 10px;
}
input[type="submit"]:hover{
border-color: #0e2d60;
transition: .5s;
}
.dropdown{
color: #2691d9;
font-family: "poppins",sans-serif;
font-size: 16px;
}


</style>
    </head>

    <body>
        <div class="center">
            <h1>Create Sub-event</h1>
         <form class="create_event" action="database_subevent.jsp">
           <%
           try{
             Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/EventManagement?user=root&password=root");
             Statement statement = connection.createStatement() ;
             resultset1 =statement.executeQuery("select * from Event") ;
    %>
Main event name:<select id="main_eventname" name="main_eventname">
        <%  while(resultset1.next()){ %>
            <option><%= resultset1.getString(2)%></option>
        <% } %>
        </select>
    

        
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
            <div class="txt_field">
                <input type="number" name="sevent_id" id="sev_id">
                <span></span>
                <label>Main event I d</label>
            </div>
            <div class="txt_field">
                <input type="text" name="sevent_name" id="sev_name">
                <span></span>
                <label>Sub Event Name</label>
            </div>
           
            <div class="txt_field">
                <input type="text" name="sevent_dept" id="sev_dept">
                <span></span>
                <label>Department</label>
            </div>
            <div>
                &nbsp;<label class="dropdown">Event category: &nbsp;</label><select id="sevent_type" name="sevent_type"></br>
                    <option>Cultural</option>
                    <option>Technical</option>
                    <option>Sports</option>
                    <option>Quiz</option>
                    <option>Fest</option>
                </select>
                
            </div>
            <div class="txt_field">
                <input type="date" name="sevent_date" id="sev_date">
                <span></span>
                <label>Date</label>
            </div>
            <div class="txt_field">
                <input type="text" name="slocation" id="sev_lo">
                <span></span>
                <label>Event location</label>
            </div>
           
            <input type="submit" id="cbtn" value="SUBMIT" />

        </form>
        </div>
    </body>

    </html>