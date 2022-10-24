package com.example.threadedproject7webservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "loginServlet", value = "/loginServlet",
        initParams = {@WebInitParam(name = "dburl", value = "jdbc:mariadb://localhost:3306/travelexperts" ),
                @WebInitParam(name = "dbuser", value = "root" ),
                @WebInitParam(name = "dbpassword", value = "password" )
})
public class loginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);

        String userid = request.getParameter("userid");
        String dbuserid = getInitParameter("dbuser");
        String dbpassword = getInitParameter("dbpassword");
        String password = request.getParameter("password");
        String dburl = getServletContext().getInitParameter("dburl");



        if (userid == null || password == null || userid.equals("") || password.equals(""))
        {
            session.setAttribute("message", "UserId and Password cannot be empty");
            response.sendRedirect("login.jsp");
        }//if
        else
        {
            try {
                Connection conn = DriverManager.getConnection(
                        //dburl, "root","password");
                //dburl, dbuserid,dbpassword);
                "jdbc:mariadb://localhost:3306/travelexperts", "root","password");
                String sql = "select agtpassword from agents where agtuserid=?";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, userid);
                ResultSet rs = stmt.executeQuery();
                if (rs.next()){
                    if (password.equals(rs.getString(1)))
                    {
                        session.setAttribute("logged_in", true);
                        response.sendRedirect("secret.jsp");
                    }//if
                    else
                    {
                        session.setAttribute("message", "User Id or Password is invalid.");
                        response.sendRedirect("login");
                    }//else
                }//if
                else
                {
                    session.setAttribute("message", "User Id or Password is invalid.");
                    response.sendRedirect("login");
                }//else
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }//catch
        }//else
    }//doGet

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }//doPost
}//class
