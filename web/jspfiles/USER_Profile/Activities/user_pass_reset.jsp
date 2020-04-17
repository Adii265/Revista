<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../Base/structure.jsp" %>

        <div class = "container" style = "float:right">
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
                ResultSet rs = smt.executeQuery("select * from login_form where Password = '"+a+"' and Serial = '"+serial+"'");
                while(rs.next())
                {
                    pass = rs.getString(8);
                    if(pass.equals(rs.getString(8)))
                    {
                        Statement stm1 = con.createStatement();
                        int i = stm1.executeUpdate("update login_form set Password = '"+b+"' where Serial = '"+serial+"'");
                        response.sendRedirect("user_profile.jsp");
                        stm1.close();
                    }
                else
                {
                %>
                <script>alert("Enter the correct password!");</script>
                <%break;
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
    </div>
  </body>
</html>