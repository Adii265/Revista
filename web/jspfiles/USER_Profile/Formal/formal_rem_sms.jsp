
<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%>
<%@page import=" java.net.URLEncoder"%>
<%@page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        String emailname = (String)session.getAttribute("USER_EMAIL");
        String serial = (String)session.getAttribute("SERIAL");
        String e = "'"+emailname+"%'";
        try
        {
            String phone = "";
            String message="";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery("select * from login_form");
            while(rs.next())
            {
                phone = rs.getString(6);        
            }
            String authkey = "130txy7WyB5820xxx82d3";
            //Multiple mobiles numbers separated by comma
            String mobiles = phone;
            //Sender ID,While using route4 sender id should be 6 characters long.
            String senderId = "Team Revista";
            //Your message to send, Add URL encoding here
            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3year","root","");
            Statement smt1 = con1.createStatement();
            ResultSet rs1 = smt1.executeQuery("select * from formal_reminder");
            while(rs1.next())
            {
                message = rs1.getString(3);
            }
            con1.close();
            //define route
            String route="4";
            //Prepare Url
            URLConnection myURLConnection=null;
            URL myURL=null;
            BufferedReader reader=null;
            //encoding message
            String encoded_message=URLEncoder.encode(message);
            String mainUrl="http://malussms.com/api/sendhttp.php?";//Your sms gateway provider API
            //Prepare parameter string
            StringBuilder sbPostData= new StringBuilder(mainUrl);
            sbPostData.append("authkey="+authkey);
            sbPostData.append("&mobiles="+mobiles);
            sbPostData.append("&message="+encoded_message);
            sbPostData.append("&route="+route);
            sbPostData.append("&sender="+senderId);
            //final string
            mainUrl = sbPostData.toString();
            try
            {
            //prepare connection
            myURL = new URL(mainUrl);
            myURLConnection = myURL.openConnection();
            myURLConnection.connect();
            reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
            String success="Your message sent sucessfully";
            out.println(success);
            //finally close connection
            reader.close();
        }
        catch (IOException e1)
        {
            e1.printStackTrace();
        }
        con.close();
        }
        catch(Exception ee)
        {
            out.println(ee);
        }
%>
</body>
</html>