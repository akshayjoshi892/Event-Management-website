

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<style>
      .content-table {
    margin-left: auto;
    margin-right: auto;
    position: relative;
  
  top: 50px;
  font-family: sans-serif;
  border-collapse: collapse;

  font-size: 0.9em;
  min-width: 400px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
  background-color: #2691d9;
  color: #ffffff;
  text-align: left;
  font-weight: bold;
}

.content-table th,
.content-table td {
  padding: 12px 15px;
}

.content-table tbody tr {
  border-bottom: 1px solid #dddddd;
}

.content-table tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
  border-bottom: 2px solid #2691d9;
}

.content-table tbody tr.active-row {
  font-weight: bold;
  color: #009879;
}
input[type=button], input[type=submit], input[type=reset] {  
  position: relative;
  top: 70px;
  left: 43.5%;
  background-color: #2691d9;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  border-radius: 25px;
  cursor: pointer;
}

</style>

<%
    response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
    String id = request.getParameter("userId");
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "EventManagement";
	String userId = "root";
	String password = "root";
	
	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<h2 align="center"><font><strong><span style="font-family:sans-serif;margin-left: auto;margin-right: auto;position: relative;top: 50px;text-decoration: underline;">List of the participants:-</span></strong></font></h2>
<table align="center" cellpadding="3" cellspacing="2" border="1" class="content-table">
    <thead>
	<tr>
		<td><b>Participant name</b></td>
		<td><b>Event name</b></td>
		<td><b>Event Department</b></td>
		<td><b>Event date</b></td>
                <td><b>Event ID</b></td>
                <td><b>Mobile no</b></td>
                <td><b>Email ID</b></td>
                
	</tr>
    </thead>
   <%
	try{	
		connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		statement=connection.createStatement();
		String sql ="SELECT * FROM registration_details";

		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
	%>
		<tr>
			
			<td><%=resultSet.getString("Participant_name") %></td>
			<td><%=resultSet.getString("Event_name") %></td>
			<td><%=resultSet.getString("department") %></td>
			<td><%=resultSet.getString("date") %></td>
                        <td><%=resultSet.getString("Event_id") %></td>
                        <td><%=resultSet.getString("Mobile_no") %></td>
                        <td><%=resultSet.getString("Email_id") %></td>
			
		</tr>
                
		            
	<%	
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

</table>
<div class="align_button">
   
    <input type="button" onclick="print_details()" value="Print" style="align-content: center;"id="pribtn">	
</div>
<script>
    function print_details(){
        var prbtn=document.getElementById("pribtn");
        prbtn.style.visibility='hidden';
        window.print();
        prbtn.style.visibility='visible';
    }
</script>
