<%-- 
    Document   : booking_event
    Created on : 15-Jun-2022, 7:43:28 pm
    Author     : AKSHAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <head>
        <title>Events Section UI design</title>
        <style>
            @import url('https://fonts.googleapis.com/css?family=Roboto+Codensed');
body
{
    background-image: url(bg1.jpg);
    background-size:100%;
    background-repeat: no-repeat;
    margin: 0;
    padding:0;
    font-family: 'Roboto condensed', sans-serif;
}
section
{
    width: 100%;
    height: 100vh;
    background: url(back1.jpg);
    background-size:cover;
}
section .leftBox
{
    width: 50%;
    height:100%;
    float: left;
    padding: 50px;
    box-sizing: border-box;
}
section .leftBox .content
{
    color:#fff;
    background: rgba(0,0,0,.5);
    padding: 40px;
    transition: .5s;
}
section .leftBox .content:hover
{
 background: #2691d9;
 transition: .3s;
}
section .leftBox .content h1
{

    margin: 0;
    padding: 0;
    font-size: 50px;
    text-transform: uppercase;
}
section.leftBox .content p
{
    margin: 10px 0 0;
    padding: 0;
}
section .events
{
    position: relative;
    width: 50%;
    height: 100%;
    background: rgba(0,0,0,.5);
    float: right;
    box-sizing: border-box;
}
section .events ul
{
    position: absolute;
    top: 50%;
    transform: translateY(-40%);
    margin: 0 0 10px 0;
    padding: 40px;
    width: 100%;
    box-sizing: border-box;
}
section .events ul li
{
    list-style: none;
    background:#fff;
    box-sizing: border-box;
    height: 150px;
    margin:15px 0;
}
section .events ul li .time
{
    position:relative;
    padding: 20px;
    background: #262626;
    box-sizing: border-box;
    width: 30%;
    height:100%;
    float: left;
    
    transition: .5s;
}
section .events ul li:hover .time
{
    background:#2691d9;
}
section .events ul li .time h2
{
    position: absolute;
    margin: 0;
    padding: 0;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    color: #fff;
    font-size: 35px;
    line-height: 30px;
}
section .events ul li .time h2 span
{
    font-size:30px;
}
section .events ul li .details
{
    padding: 20px;
    background: #fff;
    box-sizing: border-box;
    width: 70%;
    height: 100%;
    float: left;
}
section .events ul li .details h3
{
    position: relative;
    margin: 0;
    padding: 0;
    font-size:22px;
}
section .events ul li .details p
{
    position: relative;
    margin: 10px 0 0;
    padding: 0;
    font-size:16px;
}
section .events ul li .details a
{
    display: inline-block;
    text-decoration: none;
    text-transform: uppercase;
    padding: 6px 15px;
    border: 2px solid #2691d9;
    color:#2691d9;
    margin-top: 15px;
    font-size: 18px;
    transition: .5s;
    float: right;
}
section .events ul li .details a:hover{
    background-color: #2691d9;
    border-color: #2691d9;
    transition: .5s;
    color: #fff;
}

section .events ul li .details align-self:hover
{
    background: #2691d9;
    color: #fff;
    border-color: #2691d9;
}






        </style>
       
    </head>
    <body>
        
        <%
                ResultSet result=null;              
                             
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eventmanagement","root","root");
                    Statement st=db.createStatement();
                    String querry="select *from Event;";
                    result=st.executeQuery(querry);
                    
            %>
        
        <section>
            <div class="leftBox">
                <div class="content">
                    <h1>Events And shows</h1>
                
                </div>
            </div>
            
            <div class="events">
                
                <ul>
                    <%while(result.next()){%>
                    <li>
                        <div class="time">
                            <h2 id="evnameonclick"><%=result.getDate("Ev_date")%><br><span></span></h2>
                        </div>
                        <div class="details">
                            <h3><%=result.getString("Ev_name") %></h3>
                            
                            <%
                                String event_name=result.getString("Ev_name");
                                
                            %>
                            <p><%=result.getString("description")%></p>
                            <a href="book_event.jsp?Event_name=<%=result.getString("Ev_name")%>"onclick="saveData()">Book event</a>
                        </div>
                        <div style="clear: both;"></div>
                    </li>  
                    <%}%>
                    </ul>
                            
            </div>
                            
        </section>
            <%
                
            }
                catch(Exception e)
                {
                    out.println(e);
                }
             
            %>
          
            
    </body>
</html>