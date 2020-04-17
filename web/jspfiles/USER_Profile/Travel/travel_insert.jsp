
<%@ page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String date,title,file,travel,serial;
           int x;
           PreparedStatement pst;
           try
           {
            serial = (String)session.getAttribute("SERIAL");
            date = request.getParameter("date");
            title = request.getParameter("title");
            file = request.getParameter("file");
            travel = request.getParameter("travel_text");
            
            out.println(serial);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
            pst= con.prepareStatement("insert into travel(Date,Title,Travel_images,Story,Serial) "+"values(?,?,?,?,?)");
            pst.setString(1,date);
            pst.setString(2,title);
            pst.setString(3,file);
            pst.setString(4,travel);
            pst.setString(5,serial);
            
            
            x = pst.executeUpdate();
            if(x == 1)
            {
                response.sendRedirect("travel_me.jsp");
            }
           }
           catch(Exception e)
           {
               out.println(e);
           }
        %>
    </body>
</html>
