<%@ include file="../Base/structure.jsp" %>

         
        <div class="content" >
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
    </div>
    </div
</body>
</html>