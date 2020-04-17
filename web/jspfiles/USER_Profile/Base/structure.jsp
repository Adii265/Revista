<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Revista</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../../../bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="../../../css/user_edit.css">
        <script src="../../../bootstrap/jquery.min.js"></script>
        <script src="../../../bootstrap/bootstrap.min.js"></script>
        <script type = "text/javascript" src = "../../javascript/loginscript.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197" id ="top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
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
                            <li style = "margin-top:2%;font-size:120%"><a href="../Activities/user_planner.jsp">Planner</a></li>
                            <li style = "margin-top:2%;font-size:120%"><a href="../Activities/user_output.jsp">Update/Delete records</a></li>
                            <li style = "margin-top:2%;font-size:120%"><a href="../Activities/user_pass_reset.jsp">Password change</a></li>
                            <li style = font-size:120%>
                                <div class="dropdown" >
                                    <br>
                                    <button class="btn btn-primary dropdown-toggle btn-lg" style = "width:100%;margin-right:10%" type="button" data-toggle="dropdown">
                                            
                                    
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
                                            out.println("<span class='caret'></span></button>");
                                            out.println("<ul class='dropdown-menu'>");
                                            out.println("<li><a href='../Activities/user_profile.jsp'>Profile</a></li>");
                                            out.println("<ul>");
                                            out.println("<li>Pen Name:"+rs.getString(3)+"</li><li>Email:"+rs.getString(5)+"</li><li>Mobile No.:"+rs.getString(6)+"</li>");
                                            out.println("</ul><li style = 'list-style-type: none' ><a href='../../../jspfiles/logout.jsp'>Logout</a></li></ul>");
                                            }
                                        }
                                        con.close();
                                    }
                                    catch(Exception ee)
                                    {
                                    out.println(ee);
                                    }
                                    %>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <br>
                </div>
            </div>
        </nav>  
        <!-- The sidebar -->
        <div class="left">
        <div class="sidebar1" style = "float:left">
            <a class="active1" href="../Informal/Informal_page.jsp">Informal</a>
            <button class="dropdown-btn1">Formal
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown1-container" >
                <a href="../Formal/formal_note.jsp">Notes</a>
                <a href="../Formal/formal_rem.jsp">Reminders</a>
                <a href="../Formal/formal_to.jsp">To do list</a>
                <a href="../Formal/formal_meet.jsp">Appointments Schedule</a>
            </div>
            <script>
                var dropdown = document.getElementsByClassName("dropdown-btn1");
                var i;

                for (i = 0; i < dropdown.length; i++) 
                {
                    dropdown[i].addEventListener("click", function()
                    {
                        this.classList.toggle("active");
                        var dropdownContent = this.nextElementSibling;
                        if (dropdownContent.style.display === "block") 
                        {
                            dropdownContent.style.display = "none";
                        }    
                        else 
                        {
                            dropdownContent.style.display = "block";
                        }
                    });
                }
            </script>
            <a href="../Travel/travel_me.jsp">Travel</a>
            <a href="../Activities/user_planner.jsp">Planner</a>
            <a href="../Activities/user_profile.jsp">Profile</a>
            
        </div>                        
            