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

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String phone = req.getParameter("phone");
            String pass = req.getParameter("password");
            String check = req.getParameter("check");

            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhone(phone);
            us.setPassword(pass);

            HttpSession session = req.getSession();

            if (check != null) {
                UserDAOIMPL dao = new UserDAOIMPL(DBConnect.getConn());
                boolean f = dao.userRegister(us);

                if (f) {
                    session.setAttribute("SucessMsg", "User Registered Successfully!");
                } else {
                    session.setAttribute("FailedMsg", "Something Went Wrong On Server");
                }
            } else {
                session.setAttribute("FailedMsg", "Please Agree to Terms and Conditions");
            }

            resp.sendRedirect("Register.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
