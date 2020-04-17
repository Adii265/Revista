<%@ include file="../Base/structure.jsp" %>

        <div class = "container" style = "float:right">
        <%
            
            int x;
            PreparedStatement pst;
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
                Statement smt = con.createStatement();
                ResultSet rs = smt.executeQuery("select * from login_form where Serial = '"+serial+"'");
                out.println("<table width = '40%' align = 'center' style = 'font-size:120%;padding:50%' border = '1px'>");
                while(rs.next())
                {
                    out.println("<tr><td width = '30%'>Name:</td><td>"+rs.getString(2)+"</td></tr>");
                    out.println("<tr><td width = '30%'>Pen Name:</td><td>"+rs.getString(3)+"</td></tr>");
                    out.println("<tr><td width = '30%'>Date of Birth:</td><td>"+rs.getString(4)+"</td></tr>");
                    out.println("<tr><td width = '30%'>Email:</td><td>"+rs.getString(5)+"</td></tr>");
                    out.println("<tr><td width = '30%'>Phone Number:</td><td>"+rs.getString(6)+"</td></tr>");
                    out.println("<tr><td width = '30%'>Address:</td><td>"+rs.getString(7)+"</td></tr>");
                    
                }
                con.close();
           }
           catch(Exception ee)
           {
               out.println(ee);
           }
            %>
            <button style="margin-left:85%"><a href ="user_pass_reset.jsp">Change password</a></button>
        </div>
    </div>
  </body>
</html>