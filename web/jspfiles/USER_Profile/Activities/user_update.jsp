<%@ include file="../Base/structure.jsp" %>
    <div class ="container">
        <form method ="post">
            <p align = "center">Enter the content!</p>
            <textarea class = "form-control" maxlength = "1000" name = "informal_text1" rows = "20" wrap = "soft" style = "max-width:80%;margin-left:10%">
            </textarea>                                                             <br>
            <input type ="submit" name ="Update" style = "margin-left:45%"> 
        <%    
            int x;
            String str = request.getParameter("informal_text1");
            String date = request.getParameter("Date");
            String str2 = request.getParameter("Data");
            
            try
            {
              	Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
                PreparedStatement pst = con.prepareStatement("update informal set Data = ? where Serial = ? and Date = ?");
                pst.setString(1,str2);
                pst.setString(2,serial);
                pst.setString(3,date);
                x = pst.executeUpdate();
                if(x == 1)
                {
                    response.sendRedirect("../Informal/output.jsp");
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
        </div>
  </body>
</html>