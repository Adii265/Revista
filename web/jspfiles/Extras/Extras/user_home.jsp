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
      
       <nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197" id ="top">
      <div class="container-fluid">
        <div class="navbar-header">
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

<div class="content">
  Hello Mr/Ms/Mrs.
        <%
            String ename = (String)session.getAttribute("USER_EMAIL");
            try{
             
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
             Statement smt = con.createStatement();
             ResultSet rs = smt.executeQuery("select * from login_form");
             while(rs.next())
             {
                 if(ename.equals(rs.getString(5)))
                 {
                        out.print(rs.getString(2));
                 }
             }
             con.close();
            }
            catch(Exception ee)
            {
                out.println(ee);
            }
        %>,
        <br><br>
        Welcome Back!
        <br>
        Keep writing.!
        <br><br>
        Regards,
        <br>
        Team Revista
</div>
  </body>
</html>
