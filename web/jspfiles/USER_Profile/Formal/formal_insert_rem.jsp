<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String date,rem;
           int x;
           PreparedStatement pst;
           try
           {
            String serial = (String)session.getAttribute("SERIAL");
            date = request.getParameter("date");
            rem = request.getParameter("remF");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
            pst= con.prepareStatement("insert into formal_reminder(Serial,Date,Reminder) "+"values(?,?,?)");
            pst.setString(1,serial);
            pst.setString(2,date);
            pst.setString(3,rem);
            x = pst.executeUpdate();
            if(x == 1)
            {
                response.sendRedirect("formal_rem.jsp");
            }
           }
           catch(Exception e)
           {
               out.println(e);
           }
        %>
    </body>
</html>
