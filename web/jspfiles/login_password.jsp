<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name,pass,session_var,Serial,SERIAL,type;
    
    name = request.getParameter("email1");
    pass = request.getParameter("pwd");
    session.setAttribute("USER_EMAIL",name);
    int flag = 0;
    try
    {
         
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
         Statement smt = con.createStatement();
         ResultSet rs = smt.executeQuery("select * from login_form");
         while(rs.next())
         {
            if(name.equals(rs.getString(5)))
            {
                flag =1;
                if(pass.equals(rs.getString(8)))
                {Serial = (String)rs.getString(1);
                 //type = rs.getString(8);
                 Date createTime = new Date(session.getCreationTime());
                 session.setAttribute("SERIAL",Serial);
                }
                if(pass.equals(rs.getString(8)))
                {
                    response.sendRedirect("../jspfiles/USER_Profile/Activities/user_homepage.jsp");
                }
                else
                {
                %><script>
                    alert("Wrong password!");
                    
                </script><%
                }
                 /*if(type.equals("Informal"))
                 {
                     response.sendRedirect("../jspfiles/Informal/planner.jsp");
                 }
                 if(type.equals("Formal"))
                 {
                     response.sendRedirect("../jspfiles/Formal/formal_planner.jsp");
                 }
                 else
                 {
                     response.sendRedirect("../jspfiles/Travel/travel_planner.jsp");
                 }
                }*/
                
                  //response.sendRedirect("../html/index.html");   
                 
            
             }
                         
         }
         if(flag == 0)
            {
             %><script>
                    alert("User do not exists!");
                 </script>
                 <%
                     
            }

         
         con.close();
}
      
    catch(Exception e)
    {
        out.println(e);
    }
%>