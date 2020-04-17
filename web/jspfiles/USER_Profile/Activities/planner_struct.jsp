<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
                    Statement smt = con.createStatement();
                    ResultSet rs = smt.executeQuery("select * from informal where month(Date) = '01' and Serial like "+serial);
                    while(rs.next())
                    {
                       out.println(rs.getString(1)+"-->"+rs.getString(2)+"<br>");  
                    }
                    ResultSet rs1 = smt.executeQuery("select * from formal_reminder where month(Date) = '01' and Serial like "+serial);
                    while(rs1.next())
                    {
                        out.println(rs1.getString(1)+"-->"+rs1.getString(2)+"<br>");  
                    }
                    ResultSet rs2 = smt.executeQuery("select * from formal_notes where month(Date) = '01' and Serial like "+serial);
                    while(rs2.next())
                            {
                                out.println(rs2.getString(1)+"-->"+rs2.getString(2)+"<br>");  
                            }
                            ResultSet rs3 = smt.executeQuery("select * from formal_appointment where month(Date) = '01' and Serial like "+serial);
                            while(rs3.next())
                            {
                                out.println(rs3.getString(1)+"-->"+rs3.getString(2)+"<br>");  
                            }
                            ResultSet rs4 = smt.executeQuery("select * from formal_to_do_list where month(Date) = '01' and Serial like "+serial);
                            while(rs4.next())
                            {
                                out.println(rs4.getString(1)+"-->"+rs4.getString(2)+"<br>");  
                            }
                            ResultSet rs5 = smt.executeQuery("select * from travel where month(Date) = '01' and Serial like "+serial);
                            while(rs5.next())
                            {
                                out.println(rs5.getString(1)+"-->"+rs5.getString(2)+"<br>");  
                            }
                            con.close();
                            }
        
                            catch(Exception ee)
                            {
                                out.println(ee);
                            }
                        %>