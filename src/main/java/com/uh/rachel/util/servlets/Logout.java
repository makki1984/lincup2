package com.uh.rachel.util.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Logout", value = "/Logout")
public class Logout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String defaultPath = request.getContextPath();

        // remove the member object from the session
        HttpSession httpSession = request.getSession();
        httpSession.removeAttribute("member");

        response.sendRedirect(defaultPath);
    }
}
