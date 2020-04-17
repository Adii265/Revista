<%@page import="java.util.Properties"%>
<%@page import = "java.sql.*" import ="javax.mail.*" import = "javax.servlet.http.*" import = "javax.servlet.*"%>
<%@page import = "javax.mail.internet.*" import ="javax.activation.*" contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Forget password</title>
    </head>
    <body>
        <br><br>
        <button style = "margin-left:85%"><a href = "../html/index.html">Home Page</a></button>
        <form method = "post" name = "forget" onsubmit = "return check()">
            <table>
                <tr>
                    <td> Enter email:</td>
                    <td><input type = "text" style = "align-items: center" name = "EMAIL"></td>
                </tr><br>
                <tr><td>Enter phone number:</td>
                    <td><input type = "text" style = "align-items: center" name = "PHONE"></td>
                </tr>
                <tr><td colspan = "2"><input type ="submit"></td></tr>
                    
                <%
                    try
                    {
                        String result;
                        String a = request.getParameter("EMAIL");
                        String b = request.getParameter("PHONE");
                        String from = "jasper.api123@gmail.com";
                        String host = "localhost";
                        Properties properties = System.getProperties();
                        properties.setProperty("mail.smtp.host", host);
                        properties.setProperty("mail.user", "jasper.api123@gmail.com");
                        properties.setProperty("mail.password", "JASPER_API");
                        properties.setProperty("mail.port", "467");
                        Session mailSession = Session.getDefaultInstance(properties);

                        int flag = 0;
                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");  
                        Statement stmt=con.createStatement();  
                        ResultSet rs=stmt.executeQuery("select * from login_form");  
                        while(rs.next())
                        {
                            if(a.equals(rs.getString(5)) && b.equals(rs.getString(6)))
                            {
                                flag = 1;
                               String to = rs.getString(5);
                               try
                               {
                                   MimeMessage message = new MimeMessage(mailSession);
                                   message.setFrom(new InternetAddress(from));
                                   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
                                   message.setSubject("Passowrd of your Revista account");
                                   message.setText("Password: "+rs.getString(9));
                                   Transport.send(message);
                                   result = "Sent message successfully....";
                                   
                               }
                               catch(MessagingException mex)
                               {
                                   mex.printStackTrace();
                                   result = "Error: unable to send message....";
                               }
                               out.println("<tr><td><b>"+result+"</b></td></tr>");
                               break;
                            }
                        }
                        if(flag == 0)
                        {
                            out.println("<tr><td><b>"+"Email or phone not found in the databse"+"</b></td></tr>");
                        }
                    }
                    catch(Exception e)
                    {
                        out.println(e);
                    }
                %>    
                
            </table>
        </form>
    </body>
</html>
<script>
    function check()
    {
                    var x = document.forget.EMAIL.value;
                    var y = document.forget.PHONE.value;
                    if(x == null || x == "")
                    {
                        alert("Enter Email first");
                        return false;
                    }
                    else if(y == null || y == "")
                    {
                        alert("Enter phone number!");
                        return false;
                    }
                    else
                    {
                        return true;
                    }
    }
</script>
