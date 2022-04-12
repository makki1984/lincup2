package com.uh.rachel.util.servlets;
import com.uh.rachel.util.CheckLogin;
import com.uh.rachel.util.DataHandler;
import com.uh.rachel.util.tableClasses.membersTable;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "/login")

public class loginVal extends HttpServlet{

    public loginVal() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("pass");

        CheckLogin loginCheck = new CheckLogin();

        try {
            membersTable member = loginCheck.checkLogin(email, password);
            String destinationPage = "src/main/webapp/login.jsp";

            if (member != null){
                HttpSession session = request.getSession();
                session.setAttribute("member", member);
                destinationPage = "src/main/webapp/dash.jsp";
            } else {
                String message = "Incorrect email/password";
                request.setAttribute("message", message);
            }
            RequestDispatcher dispatcher = request.getRequestDispatcher(destinationPage);
            dispatcher.forward(request, response);
        } catch (SQLException | ClassNotFoundException exception){
            throw new ServletException(exception);
        }


    }
}