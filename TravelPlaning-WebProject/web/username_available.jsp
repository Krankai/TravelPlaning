<%-- 
    Document   : username_available
    Created on : Dec 2, 2016, 12:26:44 AM
    Author     : zovippro1996
--%>

<%@page import="Connect.DBConnect"%>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<% 
                    String sn=request.getParameter("ver");

                    Connection con = DBConnect.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs = st.executeQuery("select * from Users where username='"+sn+"';");  // this is for name
                    if(rs.next())
                    {    
                        out.println("<font color=red>");
                        out.println("Name already taken");
                        out.println("</font>");

                    }else {
                        out.println("<font color=green>");
                        out.println("Available");
                        out.println("</font>");

                    }
rs.close();
st.close();
con.close();
%> 

