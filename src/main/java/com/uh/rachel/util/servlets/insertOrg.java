package com.uh.rachel.util.servlets;

import com.uh.rachel.util.DataHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "Orgs")

public class insertOrg extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataHandler.insertOrgsRowByID(
                Integer.parseInt(request.getParameter("orgIdInput")),
                (request.getParameter("cityInput")),
                (request.getParameter("stateInput")),
                (request.getParameter("universityInput")),
                (request.getParameter("orgNameInput")),
                (request.getParameter("interest1Input")),
                (request.getParameter("interest2Input")),
                (request.getParameter("interest3Input")),
                (request.getParameter("interest4Input"))
        );
        response.sendRedirect("./studentOrg.jsp");
    }
}


