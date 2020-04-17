<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Travel_page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/user_edit.css">
    <script src="../../bootstrap/jquery.min.js"></script>
    <script src="../../bootstrap/bootstrap.min.js"></script>
    <script type = "text/javascript" src = "..\..\javascript\loginscript.js"></script>
  </head>
  <body>
      <!nav-bar-affix>
 
    <nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197" id ="top">
      <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
            </button>
            <br>
            <a class="navbar-brand" href="..\html\index.html" style = "color:white; font-size:200%">Revista</a>
        </div>
        <div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li style = "margin-top:2%;font-size:120%"><a href="../Travel/travel_planner.jsp">Planner</a></li>
                    <li style = "margin-top:2%;font-size:120%"><a href="..\Travel\travel_me.jsp">Add to diary</a></li>
                    <li style = "margin-top:2%;font-size:120%"><a href="../Travel/travel_output.jsp">Update diary</a></li>
                    
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
                                    out.println("<li><a href='../Travel/Travel_profile.jsp'>Profile</a><ul>");
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
    <div>
        <form name ="pass" method ="post" onsubmit ="return validpass()">
        <table width="50%" align = "center">
            <tr>
                <td>Old Password:</td>
                <td><input type = "password" name = "old"></td>
            </tr>
            <tr>
                <td>New Password:</td>
                <td><input type = "password" name = "new"></td>
            </tr>
            <tr>
                <td>Confirm Password:</td>
                <td><input type = "password" name = "new1"></td>
            </tr>
        
        <%
            String a = request.getParameter("old");
            String b = request.getParameter("new");
            String c = request.getParameter("new1");
            String pass = null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
                Statement smt = con.createStatement();
                ResultSet rs = smt.executeQuery("select * from login_form where Password = '"+a+"' and Serial_No = '"+serial+"'");
                while(rs.next())
                {
                    pass = rs.getString(9);
                    if(pass.equals(rs.getString(9)))
                    {
                        Statement stm1 = con.createStatement();
                        int i = stm1.executeUpdate("update login_form set Password = '"+b+"' where Serial_No = '"+serial+"'");
                        response.sendRedirect("../Travel/travel_output.jsp");
                        stm1.close();
                    }
                else
                {
                    %><script>alert("Enter the correct password!");</script><%break;
                }
                }
                
                 con.close();
            }
            catch(Exception ee)
            {
                out.println(ee);
            }
%>
<tr><td>&nbsp</td><td>&nbsp</td>s</tr>
        <tr align = "center"><td colspan = "2"><input type ="submit" value ="submit"></td></tr>
        </table>
        </form>
        
    </div>                                                        
  </body>
</html>