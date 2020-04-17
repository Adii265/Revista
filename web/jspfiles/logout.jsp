<%@ page import = "java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.removeAttribute("USER_EMAIL");
    session.removeAttribute("SERIAL");
    request.getSession(false).invalidate();
    response.sendRedirect("../html/index.html");
%>