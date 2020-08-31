/*Fetch data from mysql using java*/
<%-- 
    Document   : newjsp
    Created on : 29 Aug, 2020, 11:06:32 AM
    Author     : suvankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page language="java" import="java.sql.*, java.io.*"%>
        <%
            Connection conn = null;
            try{
                String driver = "com.mysql.jdbc.Driver";
                Class.forName(driver);
                out.println("connecting");
                String jdbcurl = "jdbc:mysql://localhost:3306/suvankar";
                String user = "root";
                String pass = "";
                conn = DriverManager.getConnection(jdbcurl,user,pass);
                
            
                Statement stmt = conn.createStatement();
                String sql;
                sql = "select name, phone, pass from users";
                ResultSet rs = stmt.executeQuery(sql);
                out.println("<table border='2'>");
                out.println("<tr>");
                out.println("<th>Name</th>");
                out.println("<th>Phone</th>");
                out.println("<th>Password</th>");
                out.println("</tr>");
                
                while(rs.next()){
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    String password = rs.getString("pass");
                    
                    out.println("<tr>");
                    out.println("<td>"+name);
                    out.println("<td>"+phone);
                    out.println("<td>"+password);
                                       
                }
                out.println("</table>");
                rs.close();
                stmt.close();
                conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }catch(Exception e){
                e.printStackTrace();
            }
            finally{
                try{
                    if(conn!=null)
                        conn.close();
                }catch(SQLException e){
                    e.printStackTrace();
                }
            }
            out.println("Good bye!!");
            %>
    </body>
</html>
