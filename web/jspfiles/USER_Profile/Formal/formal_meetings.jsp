<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String date,done,task,duedate,pno;
           int x;
           PreparedStatement pst;
           try
           {
            String serial = (String)session.getAttribute("SERIAL");
            date = request.getParameter("date");
            done = request.getParameter("time");
            task = request.getParameter("title");
            duedate = request.getParameter("stime");
            pno = request.getParameter("pno");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
            pst= con.prepareStatement("insert into formal_appointment(Serial,Date,Time,Title,Start_time,Phone_no) "+"values(?,?,?,?,?,?)");
            pst.setString(1,serial);
            pst.setString(2,date);
            pst.setString(3,done);
            pst.setString(4,task);
            pst.setString(5,duedate);
            pst.setString(6,pno);
            x = pst.executeUpdate();
            if(x == 1)
            {
                response.sendRedirect("../../jspfiles/Formal_page.jsp");
            }
           }
           catch(Exception e)
           {
               out.println(e);
           }
        %>
    </body>
</html>
