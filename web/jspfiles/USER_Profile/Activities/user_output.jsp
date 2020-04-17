<%@ include file="../Base/structure.jsp" %>

    <div class ="container" style ="float:right">
        <div class="table" style="text-align:center ; margin-left:10%" >
            <table class="table-bordered"; >
		<tr>
                    <th width = "20%" style =" text-align:center; text-style:bold; font-family:serif "  >DATE</th>
                    <th width = "75%" style ="text-align:center; text-style:bold ;font-family:serif">ENTRIES</th>
                    <td width = "4%">&nbsp</td>
                    <td width ="4%">&nbsp</td>
		</tr>
		<%    
                    
                    
                    
                    try
                    {
                    	Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from informal where Serial like "+serial);
			int i=1;
			 while(rs.next())
                        {
                            %>
                                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><a href="user_update.jsp?Date=<%=rs.getString(1)%>"><span class="glyphicon glyphicon-pencil">&nbsp</span></a></td>
                    <td><a href="user_del.jsp?Date=<%=rs.getString(1)%>" ><span class="glyphicon glyphicon-remove-sign" >&nbsp</span></a></td>
                </tr>
                            <%
                        }
                    }
                    catch(Exception ee)
                    {
                        out.println(ee.toString());
                    }
		%>
                      	     
		  
            </table>
	</div>        
    </div>
   </div>
</body>
</html>