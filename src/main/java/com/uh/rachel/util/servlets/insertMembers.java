package com.uh.rachel.util.servlets;

import com.uh.rachel.util.DataHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Members")
public class insertMembers extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataHandler.insertMembersRowByID(
                Integer.parseInt(request.getParameter("memberIdInput")),
                (request.getParameter("firstNameInput")), (request.getParameter("lastNameInput")),
                (request.getParameter("dobInput")), (request.getParameter("emailInput")),
                (request.getParameter("passInput")), (request.getParameter("highSchoolInput")),
                (request.getParameter("afterGraduationInput")), (request.getParameter("churchNameInput")),
                (request.getParameter("interest1Input")), (request.getParameter("interest2Input")),
                (request.getParameter("interest3Input")), (request.getParameter("interest4Input")),
                (request.getParameter("phoneInput")),(Integer.parseInt(request.getParameter("orgIdInput"))),
                (Integer.parseInt(request.getParameter("adminIdInput"))), (Integer.parseInt(request.getParameter("eventIdInput")))
        );
        response.sendRedirect("./members.jsp");
    }

}
