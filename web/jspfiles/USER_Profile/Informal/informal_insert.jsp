
<%@ page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String date,data;
           int x;
           PreparedStatement pst;
           try
           {
               String serial = (String)session.getAttribute("SERIAL");
            date = request.getParameter("date");
            data = request.getParameter("informal_text");
            out.println(date);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
            pst= con.prepareStatement("insert into informal (Date,Data,Serial) "+"values(?,?,?)");
            pst.setString(1,date);
            pst.setString(2,data);
            pst.setString(3,serial);
            
            
            x = pst.executeUpdate();
            if(x == 1)
            {
                response.sendRedirect("Informal_page.jsp");
            }
           }
           catch(Exception e)
           {
               out.println(e);
           }
        %>
    </body>
</html>
