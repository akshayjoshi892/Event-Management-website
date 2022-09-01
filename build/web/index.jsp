<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            

@import url(https://fonts.googleapis.com/css?family=Open+Sans);
@import url(https://fonts.googleapis.com/css?family=Bree+Serif);

body {
	background-image: url('bg1.jpg');
        background-size: 100%;        
	font-size:22px;     
        
	line-height: 32px;
	color: #ffffff;
	margin: 0;
	padding: 0;
	word-wrap:break-word !important;
	font-family: 'Open Sans', sans-serif;
	}

h1 {
	font-size: 60px;
	text-align: center;
	color: #FFF;
}	

h3 {
	font-size: 30px;
	line-height: 34px;
	text-align: center;
	color: #FFF;
}

h3 a {
	color: #FFF;
}

a {
	color: #FFF;
}

h1 {
	margin-top: 100px;
	text-align:center;
	font-size:60px;
	line-height: 70px;
	font-family: 'Bree Serif', 'serif';
	}

#container {
	margin: 0 auto;
	max-width: 890px;
}

p {
	text-align: center;
}

.toggle,
[id^=drop] {
	display: none;
}

nav { 
	margin:0;
	padding: 0;
	background-color:#3974d4;
}

#logo {
        font-weight: bold;
        letter-spacing: 1px;
	display: block;
	padding: 0 30px;
	float: left;
	font-size:20px;
	line-height: 60px;
}



nav:after {
	content:"";
	display:table;
	clear:both;
}


nav ul {
	float: right;
	padding:0;
	margin:0;
	list-style: none;
	position: relative;
	}
	
/* Positioning the navigation items inline */
nav ul li {
	margin: 0px;
	display:block;
	float: left;
        padding: 2px 15px;
	background-color: #3974d4;
	}

/* Styling the links */
nav a {
	display:block;
	padding:14px 20px;	
	color:#fff;
        background: #3974d4;
	font-size:17px;
	text-decoration:none;
        border-radius: 7px;
        letter-spacing: 1px;
        transition: .3s;
        transition-property: background;
}


nav ul li ul li:hover { background: #000000; }

/* Background color change on Hover */
nav a:hover { 
	background-color: #264a85; 
}

/* Hide Dropdowns by Default
 * and giving it a position of absolute */
nav ul ul {
	display: none;
	position: absolute; 
	/* has to be the same number as the "line-height" of "nav a" */
	top: 60px; 
}
	
/* Display Dropdowns on Hover */
nav ul li:hover > ul {
	display:inherit;
}
	
/* Fisrt Tier Dropdown */
nav ul ul li {
	width:170px;
	float:none;
	display:b;
	position: relative;
}

/* Second, Third and more Tiers	
 * We move the 2nd and 3rd etc tier dropdowns to the left
 * by the amount of the width of the first tier.
*/
nav ul ul ul li {
	position: relative;
	top:-60px;
	/* has to be the same number as the "width" of "nav ul ul li" */ 
	left:170px; 
}
.active{
    background-color:#264a85; 
}
	
/* Change ' +' in order to change the Dropdown symbol */

li > a:only-child:after { content: ''; }


/* Media Queries
--------------------------------------------- */

@media all and (max-width : 768px) {

	#logo {
		display: block;
		padding: 0;
		width: 100%;
		text-align: center;
		float: none;
	}

	nav {
		margin: 0;
	}

	/* Hide the navigation menu by default */
	/* Also hide the  */
	.toggle + a,
	.menu {
		display: none;
	}

	/* Stylinf the toggle lable */
	.toggle {
		display: block;
		background-color: #264a85;
		padding:14px 20px;	
		color:#FFF;
		font-size:17px;
		text-decoration:none;
		border:none;
	}

	.toggle:hover {
		background-color: #264a85;
	}

	/* Display Dropdown when clicked on Parent Lable */
	[id^=drop]:checked + ul {
		display: block;
	}

	/* Change menu item's width to 100% */
	nav ul li {
		display: block;
		width: 100%;
		}

	nav ul ul .toggle,
	nav ul ul a {
		padding: 0 40px;
	}

	nav ul ul ul a {
		padding: 0 80px;
	}

	nav a:hover,
 	nav ul ul ul a {
		background-color: #264a85;
	}
  
	nav ul li ul li .toggle,
	nav ul ul a,
  nav ul ul ul a{
		padding:14px 20px;	
		color:#FFF;
		font-size:17px; 
	}
  
  
	nav ul li ul li .toggle,
	nav ul ul a {
		background-color: #264a85; 
	}

	/* Hide Dropdowns by Default */
	nav ul ul {
		float: none;
		position:static;
		color: #ffffff;
		/* has to be the same number as the "line-height" of "nav a" */
	}
		
	/* Hide menus on hover */
	nav ul ul li:hover > ul,
	nav ul li:hover > ul {
		display: none;
	}
		
	/* Fisrt Tier Dropdown */
	nav ul ul li {
		display: block;
		width: 100%;
	}

	nav ul ul ul li {
		position: static;
		/* has to be the same number as the "width" of "nav ul ul li" */ 

	}

}

@media all and (max-width : 330px) {

	nav ul li {
		display:block;
		width: 94%;
	}}
section
{
    width: 100%;
    height: 100vh;
    background: url(back1.jpg);
    background-size:cover;
}
section 
{
    width: 50%;
    padding: 10px;
    height:100%;   
    float: left;
    margin: 10px 0 0 50% ;
    box-sizing: border-box;
}
section  .content
{
    color:#fff;
    background: rgba(0,0,0,.5);
    padding: 30px;
    transition: .5s;
    border-radius: 14px;
}
section  .content:hover
{
 background: #2691d9;
 transition: .3s;
}
section  .content h1
{
    
    margin: 0;
    padding: 10px;
    font-size: 35px;
    text-transform: uppercase;

}


.content {
height: 100px; 
overflow: hidden;
position: relative;
}
.content h1,p  {
position: absolute;
width: 100%;
height: 100%;
margin: 0;
line-height: 50px;
text-align: center;
/* Starting position */
-moz-transform:translateX(100%);
-webkit-transform:translateX(100%); 
transform:translateX(100%);
/* Apply animation to this element */ 
-moz-animation: scroll-left 10s linear infinite;
-webkit-animation: scroll-left 10s linear infinite;
animation: scroll-left 10s linear infinite;
}
/* Move it (define the animation) */
@-moz-keyframes scroll-left {
0% { -moz-transform: translateX(100%); }
100% { -moz-transform: translateX(-100%); }
}
@-webkit-keyframes scroll-left {
0% { -webkit-transform: translateX(100%); }
100% { -webkit-transform: translateX(-100%); }
}
@keyframes scroll-left {
0% { 
-moz-transform: translateX(100%); /* Browser bug fix */
-webkit-transform: translateX(100%); /* Browser bug fix */
transform: translateX(100%); 
}
100% { 
-moz-transform: translateX(-100%); /* Browser bug fix */
-webkit-transform: translateX(-100%); /* Browser bug fix */
transform: translateX(-100%); 
}
}
section .content p
{
    
    margin: 10px 0;
    padding: 0;
}

.blinking{
    width: 47%;
    animation:blinkingText 1.2s infinite;
    float: middle;
    text-transform: uppercase;
    padding: 20px;
    margin: 30px 30px 0 50%;
    text-align: center;
    background-color: #F17A61;
    color: white;
    border-radius: 10px;
    
}


@keyframes blinkingText{
    0%{     color: #000;    }
    49%{    color: #000; }
    60%{    color: transparent; }
    99%{    color:transparent;  }
    100%{   color: #000;    }
}
#cont{
    
    
}
    </style>
    <script type="text/javascript">
        function display(){
            alert("Login/Register to view the events");
            
        }
    </script>
    </head>
    <body>
        

        <% response.setHeader("Cache-control","no-cache,no-store,must-revalidate");%>
        <nav>
        <div id="logo">Event Management System</div>

        <label for="drop" class="toggle">Menu</label>
        <input type="checkbox" id="drop" />
            <ul class="menu">
                <li><a href="#" class="active">Home</a></li>   
                <li><a href="login.jsp">Log in</a></li>
                <li><a href="#cont">Contact</a></li>
            </ul>
        </nav>
        &nbsp;<h3 class="blinking">Upcoming Events!!!</h3>
        
             
        <%
            ResultSet res=null;              
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/Eventmanagement","root","root");
                    Statement st=db.createStatement();
                    String query="select Ev_name , Ev_date from event where Ev_date>CURRENT_TIMESTAMP; ";
                    
                    res=st.executeQuery(query);
                    while(res.next()){
                         
                   %>
              
                   
       
                   
                   <a onclick="display()"><section>
                       <div class="content">
                           <h1><%=res.getString("Ev_name")%></h1></br>
                           <p><%=res.getString("Ev_date")%></p>
                       </div>
                       </section></a>
        <%
            }

        }
        
                catch(Exception e)
                {
                    out.println(e);
                }
             
       %>
       

</body>
</html>
