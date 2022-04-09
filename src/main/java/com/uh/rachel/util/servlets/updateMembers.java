package com.uh.rachel.util.servlets;
import com.uh.rachel.util.DataHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "Members")
public class updateMembers extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataHandler.updateMembersRowByID(
                (Integer.parseInt(request.getParameter("memberIdInput")!=""?request.getParameter("memberIdInput"):"0")),
                (request.getParameter("firstNameInput")!=""?request.getParameter("firstNameInput"):"0"),
                (request.getParameter("lastNameInput")!=""?request.getParameter("lastNameInput"):"0"),
                (request.getParameter("dobInput")!=""?request.getParameter("dobInput"):"0"),
                (request.getParameter("emailInput")!=""?request.getParameter("emailInput"):"0"),
                (request.getParameter("passInput")!=""?request.getParameter("passInput"):"0"),
                (request.getParameter("highSchoolInput")!=""?request.getParameter("highSchoolInput"):"0"),
                (request.getParameter("afterGraduationInput")!=""?request.getParameter("afterGraduationInput"):"0"),
                (request.getParameter("churchNameInput")!=""?request.getParameter("churchNameInput"):"0"),
                (request.getParameter("interest1Input")!=""?request.getParameter("interest1Input"):"0"),
                (request.getParameter("interest2Input")!=""?request.getParameter("interest2Input"):"0"),
                (request.getParameter("interest3Input")!=""?request.getParameter("interest3Input"):"0"),
                (request.getParameter("interest4Input")!=""?request.getParameter("interest4Input"):"0"),
                (request.getParameter("phoneInput")!=""?request.getParameter("phoneInput"):"0"),
                (Integer.parseInt(request.getParameter("orgIdInput")!=""?request.getParameter("orgIdInput"):"0")),
                (Integer.parseInt(request.getParameter("adminIdInput")!=""?request.getParameter("adminIdInput"):"0")),
                (Integer.parseInt(request.getParameter("eventIdInput")!=""?request.getParameter("eventIdInput"):"0"))
        );
        response.sendRedirect("./members.jsp");
    }
}
