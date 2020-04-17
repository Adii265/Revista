<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String date,note;
           int x;
           PreparedStatement pst;
           try
           {
            String serial = (String)session.getAttribute("SERIAL");
            date = request.getParameter("date");
            note = request.getParameter("notesF");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
            pst= con.prepareStatement("insert into formal_notes(Serial,Date,Notes) "+"values(?,?,?)");
            pst.setString(1,serial);
            pst.setString(2,date);
            pst.setString(3,note);
            x = pst.executeUpdate();
            if(x == 1)
            {
                response.sendRedirect("formal_note.jsp");
            }
           }
           catch(Exception e)
           {
               out.println(e);
           }
        %>
    </body>
</html>
