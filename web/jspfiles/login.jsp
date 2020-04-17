 <%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
  String name,penname,type,age,phone,mail,address,pwd2,Serial;
    int x;
    
    PreparedStatement pst;
    try
    {
        name = request.getParameter("sname");
        penname = request.getParameter("penname");
        age = request.getParameter("age");
        mail = request.getParameter("mail");
        phone = request.getParameter("phone");
        address = request.getParameter("add");
        pwd2 = request.getParameter("pwd1");
        session.setAttribute("USER_EMAIL",mail);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        pst = con.prepareStatement("insert into login_form(Name,Pen_name,Date_Of_Birth,Email,Phone_number,Address,Password)"+"values(?,?,?,?,?,?,?)");
        pst.setString(1,name);
        pst.setString(2,penname);
        pst.setString(3,age);
        pst.setString(4,mail);
        pst.setString(5,phone);
        pst.setString(6,address);
        pst.setString(7,pwd2);
        x = pst.executeUpdate();
        if(x == 1)
        {
                
          
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from login_form");
        while(rs.next())
        {
            if(mail.equals(rs.getString(5)))
            {
                Serial = (String)rs.getString(1);
                session.setAttribute("SERIAL",Serial);
                out.println(Serial);
                response.sendRedirect("../jspfiles/USER_Profile/Activities/user_homepage.jsp");
            }
            
        }
        /*if( x == 1)
        {
            if(type.equals("Informal"))
            {
                Statement smt = con.createStatement();
                ResultSet rs = smt.executeQuery("select * from login_form");
                while(rs.next())
                {
                    if(mail.equals(rs.getString(5)))
                    {
                        Serial = (String)rs.getString(1);
                        session.setAttribute("SERIAL",Serial);
                        out.println(Serial);
                        response.sendRedirect("../jspfiles/Informal/Informal_page.jsp");
                    }
                }
            }
            else if(type.equals("Formal"))
            {
                Statement smt = con.createStatement();
                ResultSet rs = smt.executeQuery("select * from login_form");
                while(rs.next())
                {
                    if(mail.equals(rs.getString(5)))
                    {
                        Serial = (String)rs.getString(1);
                        session.setAttribute("SERIAL",Serial);
                        out.println(Serial);
                        response.sendRedirect("../jspfiles/Formal/Formal_page.jsp.jsp");
                    }
                }            }
            else
            {
                response.sendRedirect("../jspfiles/Travel/travel_me.jsp");
            }*/
        
            
        }        
        con.close();
    }
    catch(Exception ee)
    {
        out.println(ee);
    }
%>