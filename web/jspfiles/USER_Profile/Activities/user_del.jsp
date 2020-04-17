<%@ page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String date;
            int x;
            PreparedStatement pst;
            try
            {
                String serial = (String)session.getAttribute("SERIAL");
                date = request.getParameter("Date");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
                pst = con.prepareStatement("delete from informal where Serial like "+serial+" and Date = '"+date+"'");
                x = pst.executeUpdate();
                if(x == 1)
                {
                    response.sendRedirect("../Informal/output.jsp");
                }
            
           }
           catch(Exception ee)
           {
               out.println(ee);
           }
            %>
    </body>
        </html>