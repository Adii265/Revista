<%@page import="java.util.Scanner"%>
<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        String emailname = (String)session.getAttribute("USER_EMAIL");
        String data;
        int x;
        PreparedStatement ps;
        try{
            Scanner s = new Scanner(System.in);
            System.out.println("Enter the dta again!");
            data = s.nextLine();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
            ps = con.prepareStatement("update informal set data=? where Date in (select * from planner where Serial_No in(select * from login_form where Email = (?)))");
            ps.setString(1,data);
            ps.setString(2,emailname);
            x = ps.executeUpdate();
            
            if(x == 1)
            {
                response.sendRedirect("../jspfiles/planner.jsp");
            }
       
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>
    </body>
</html>










