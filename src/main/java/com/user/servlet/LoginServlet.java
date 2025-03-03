package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOIMPL;
import com.DB.DBConnect;
import com.entity.User;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            UserDAOIMPL dao = new UserDAOIMPL(DBConnect.getConn());
            HttpSession session = req.getSession();

            String email = req.getParameter("email");
            String password = req.getParameter("password");

            if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
                User us = new User();  // Admin logged in
                us.setName("Admin ");
                session.setAttribute("userobj", us);
                resp.sendRedirect("admin/home.jsp");
            } else {
                User us = dao.login(email, password);
                if (us != null) {
                    session.setAttribute("userobj", us);
                    resp.sendRedirect("admin/home.jsp");  // Successful login
                } else {
                    session.setAttribute("failedmsg", "Email and Password Invalid");
                    resp.sendRedirect("Login.jsp");
                    // Failed login
                    
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    
}
}