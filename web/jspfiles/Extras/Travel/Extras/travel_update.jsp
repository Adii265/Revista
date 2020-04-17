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
    <script type = "text/javascript" src = "..\javascript\loginscript.js"></script>
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
            <a class="navbar-brand" href="..\..\html\index.html" style = "color:white; font-size:200%">Revista</a>
        </div>
        <div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li style = "margin-top:2%;font-size:120%"><a href="../Travel/travel_planner.jsp">Planner</a></li>
                    <li style = "margin-top:2%;font-size:120%"><a href="..\Travel\travel_me.jsp">Add to diary</a></li>
                    <li style = "margin-top:2%;font-size:120%"><a href="..\Travel\travel_update.jsp">Update diary</a></li>
                    
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
                                    ResultSet rs1 = smt.executeQuery("select * from login_form where Serial_No like "+ serial);
                                    while(rs1.next())
                                    {
                                        out.println("<li>Pen Name:"+rs1.getString(3)+"</li><li>Email:"+rs1.getString(5)+"</li><li>Mobile No.:"+rs1.getString(6)+"</li>");
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
    <div class ="container">
        <form method ="post">
            <p align = "center">Enter the new content!</p>
            <input type ="text" name = "travel" style = "margin-left:43%"><br><br><br>
            <textarea class = "form-control" maxlength = "1000" name = "text1" rows = "20" wrap = "soft" style = "max-width:80%;margin-left:10%">
            </textarea>                                                             <br>
            <input type ="submit" name ="Update" style = "margin-left:45%"> 
        <%    
            int x;
            
            String str = request.getParameter("text1");
            String date = request.getParameter("Date");
            String str2 = request.getParameter("travel");
            
            try
            {
              	Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
                PreparedStatement pst = con.prepareStatement("update travel set Title = ? and Story = ? where Serial = ? and Date = ?");
                pst.setString(1, str2);
                pst.setString(2,str);
                pst.setString(3,serial);
                pst.setString(4,date);
                x = pst.executeUpdate();
                if(x == 1)
                {
                    response.sendRedirect("../Travel/travel_output.jsp");
                }     
                else
                {
                    %><script>alert("Cannot update!");</script><%
                }
            }
                catch(Exception ee)
		{
		out.println(ee.toString());
		}
		%>
	</form>
    </div>                          
  </body>
</html>