<%-- 
    Document   : home
    Created on : 16-Jun-2022, 10:50:46 am
    Author     : AKSHAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            /* CSS Document */

@import url(https://fonts.googleapis.com/css?family=Open+Sans);
@import url(https://fonts.googleapis.com/css?family=Bree+Serif);

body {
        background-image: url(bg1.jpg);
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

/* Giving a background-color to the nav container. */
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
	font-size:30px;
	line-height: 60px;
}

/* Since we'll have the "ul li" "float:left"
 * we need to add a clear after the container. */

nav:after {
	content:"";
	display:table;
	clear:both;
}

/* Removing padding, margin and "list-style" from the "ul",
 * and adding "position:reltive" */
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
        padding: 2px 10px;
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
	display:list-item;
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
	}

}
        </style>
    </head>
    <body>
        <% response.setHeader("Cache-control","no-cache,no-store,must-revalidate");%>
        <nav>
        <div id="logo">Event Management System</div>

        <label for="drop" class="toggle">Menu</label>
        <input type="checkbox" id="drop" />
            <ul class="menu">
                <li><a href="#" class="active">Home</a></li>
                <li>
                    <!-- First Tier Drop Down -->
                    <label for="drop-1" class="toggle">Events</label>
                    <a href="#">Events</a>
                    <input type="checkbox" id="drop-1"/>
                    <ul>
                        <li><a href="create_event.jsp">Create </a></li>
                        <li><a href="modify_event.jsp">Modify </a></li>
                        <li><a href="deleteevent.jsp">Delete</a></li>
                        <li><a href="event_display.jsp">Print</a></li>
                    </ul> 

                </li>
                <li><a href="display_book.jsp" >Participants list</a></li>
                <li>

                <!-- First Tier Drop Down -->
                <label for="drop-2" class="toggle">Users</label>
                <a href="#">Users</a>
                <input type="checkbox" id="drop-2"/>
                <ul>
                    <li><a href="create_user.jsp">Create</a></li>
                    <li><a href="modify_user.jsp">Modify</a></li>
                    <li><a href="delete_user.jsp">Delete</a></li>
                      
                    <input type="checkbox" id="drop-3"/>
                   
                </ul>
                </li>
                
                <li>

                <!-- First Tier Drop Down -->
                <label for="drop-4" class="toggle">Profile</label>
                <a href="#">Profile</a>
                <input type="checkbox" id="drop-4"/>
                <ul>
                    <li><a href="login.jsp">Logout </a></li>
                      
                    <input type="checkbox" id="drop-3"/>
                   
                </ul>
                </li>                
                 <li><a href="contact.jsp">contact</a></li>
                
            </ul>
        </nav>


       
</body>
</html>
