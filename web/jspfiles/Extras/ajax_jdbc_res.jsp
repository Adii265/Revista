<%@page import="java.sql.*" %>
<html>
<body>
<%
out.println("<table width='600px' style='font-family:arial;font-size:14px;' border='2'>");
out.println("<tr>");
out.println("<td colspan='5' style='background-color:maroon; color:white;'>");
out.println("Record</td>");
out.println("</tr>");
out.println("<tr style='background-color:black;color:white'>");
out.println("<th>ID</th><th>Name</th><th>Course</th><th>Branch</th><th>Semester</th>");
out.println("</tr>");

		Connection con=null;
		Statement st;
		ResultSet rs;
		try{
			Class.forName("com.mysql.jdbc.Driver");	
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
			st=con.createStatement();	
			String n=request.getParameter("name");
			String na="'"+n+"%'";
			rs=st.executeQuery("select * from login_form where Name like "+na);
			while(rs.next())
			{
				out.println("<tr><td>");
				out.println(rs.getString(1));
				out.println("</td><td>");
				out.println(rs.getString(2));
				out.println("</td><td>");
				out.println(rs.getString(3));
				out.println("</td><td>");
				out.println(rs.getString(4));
				out.println("</td><td>");
				out.println(rs.getString(5));
				out.println("</td></tr>");
			}
		}catch(Exception e)
		{
			out.println(e.toString());
		}
	out.println("</table>");
	%>
</body>
</html>