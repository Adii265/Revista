<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Informal_page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/user_edit.css">
    <script src="../../bootstrap/jquery.min.js"></script>
    <script src="../../bootstrap/bootstrap.min.js"></script>
    <script type = "text/javascript" src = "..\javascript\loginscript.js"></script>
  </head>
  <body>
      <!nav-bar-affix>
 
    <nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197" id ="top">
      <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-    target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
            </button>
            <br>
            <a class="navbar-brand"  style = "color:white; font-size:200%">Revista</a>
        </div>
        <div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li style = "margin-top:2%;font-size:120%"><a href="../USER_Profile/informal_update.jsp">Update older records</a></li>
                    <li style = "margin-top:2%;font-size:120%"><a href="../USER_Profile/informal_delete.jsp">Delete records</a></li>
                    <li style = "margin-top:2%;font-size:120%"><a href="../USER_Profile/informl_pass.jsp">Password change</a></li>
                    
                    <li>
                        <div class="dropdown">
                            <br>
                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                            <%
                                String emailname = (String)session.getAttribute("USER_EMAIL");
                                String serial = (String)session.getAttribute("SERIAL");
                                String e = "'"+emailname+"%'";
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
                                    Statement smt = con.createStatement();
                                    ResultSet rs = smt.executeQuery("select * from login_form");
                                    while(rs.next())
                                    {
                                        if(emailname.equals(rs.getString(5)))
                                        {
                                            out.print(rs.getString(2));
                                        }
                                    }
                                    out.println("<span class='caret'></span></button>");
                                    out.println("<ul class='dropdown-menu'>");
                                    out.println("<li><a href='../Informal/Informal_profile.jsp'>Profile</a><ul>");
                                    while(rs.next())
                                    {
                                        out.println("<li>Pen Name:"+rs.getString(3)+"</li><li>Email:"+rs.getString(5)+"</li><li>Mobile No.:"+rs.getString(6)+"</li>");
                                    }
                                    con.close();
                                }
                                catch(Exception ee)
                                {
                                    out.println(ee);
                                }
                            %>
                                                                </ul>
                                </li>
                                
                                <li><a href="../../jspfiles/logout.jsp">Logout</a></li>
                            </ul>
                        </div>
                        <br>
                    </li>
                    
                </ul>
            </div>
        </div>
      </div>
    </nav>
      <!-- The sidebar -->
<div class="sidebar1">
    
  <a class="active1" href="../Informal/Informal_page.jsp">Informal</a>
  <a href="../Formal/Formal_page.jsp">Formal</a>
  <a href="../Travel/travel_me.jsp">Travel</a>
  <a href="../USER_Profile/planner.jsp">Planner</a>
  <a href="../USER_Profile/Informal_profile.jsp">Profile</a>
  <a href="../USER_Profile/output.jsp">Delete/Update</a>
</div>

<!-- Page content -->

    <div>
        <h3 style="text-align:center">Your planner for the year </h3>
      <h4 style="text-align:center">
      
      <div class = "planner">
        <table class = "plan">
          <tr class = "row">
            <td class = "col">
              <!--on clicking go to the respective saved page of the month-->
              <h2>January</h2>
              <%
                  
                
                
                
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '01' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"-->"+rs.getString(2)+"<br>");  
        }
        ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '01' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '01' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '01' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '01' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '01' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
            <td class = "col">
              <h2>February</h2>
              <%
                  
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '02' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"-->"+rs.getString(2)+"<br>");  
        }
        ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '02' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '02' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '02' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '02' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '02' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
            <td class = "col">
              <h2>March</h2>
              <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '03' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"--"+rs.getString(2)+"<br>");  
        }
        ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '03' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '03' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '03' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '03' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '03' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
            <td class = "col">
              <h2>April</h2>
              <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '04' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"--"+rs.getString(2)+"<br>");  
        }
        ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '04' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '04' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '04' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '04' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '04' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        con.close();
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
          </tr>
          <tr class = "row">
            <td class = "col">
              <h2>May</h2>
              <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '05' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"--"+rs.getString(2)+"<br>");  
        }
        ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '05' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '05' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '05' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '05' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '05' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        
        con.close();
        }
        
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
            <td class = "col">
              <h2>June</h2>
              <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '06' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"--"+rs.getString(2)+"<br>");  
        }
        ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '06' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '06' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '06' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '06' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '06' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        con.close();
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
            <td class = "col">
              <h2>July</h2>
              <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '07' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"--"+rs.getString(2)+"<br>");  
        }
        ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '07' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '07' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '07' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '07' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '07' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
            <td class = "col">
              <h2>August</h2>
              <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '08' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"--"+rs.getString(2)+"<br>");  
        }
        ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '08' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '08' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '08' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '08' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '08' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
          </tr>
          <tr class = "row">
            <td class = "col">
              <h2>September</h2>
              <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '09' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"--"+rs.getString(2)+"<br>");  
        }ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '09' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '09' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '09' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '09' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '09' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
            <td class = "col">
              <h2>October</h2>
              <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '10' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"--"+rs.getString(2)+"<br>");  
        }
        ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '10' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '10' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '10' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '10' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '10' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
            <td class = "col">
              <h2>November</h2>
              <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '11' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"--"+rs.getString(2)+"<br>");  
        }
        ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '11' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '11' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '11' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '11' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '11' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
            <td class = "col">
              <h2>December</h2>
              <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '12' and Serial like "+serial);
        while(rs.next())
        {
            out.println(rs.getString(1)+"--"+rs.getString(2)+"<br>");  
        }
        ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '12' and Serial like "+serial);
        while(rs1.next())
        {
            out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
        }
        ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '12' and Serial like "+serial);
        while(rs2.next())
        {
            out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
        }
        ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '12' and Serial like "+serial);
        while(rs3.next())
        {
            out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
        }
        ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '12' and Serial like "+serial);
        while(rs4.next())
        {
            out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
        }
        ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '12' and Serial like "+serial);
        while(rs5.next())
        {
            out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
        }
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
    %>

            </td>
          </tr>
        </table>
      </div>
      
      </form>
      <br>
      <br>
    </div>
  </body>
</html>