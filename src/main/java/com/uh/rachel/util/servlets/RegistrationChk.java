package com.uh.rachel.util.servlets;

import com.uh.rachel.util.RegistrationModel;
import com.uh.rachel.util.tableClasses.membersTable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "registration", urlPatterns = {"/registration"})

public class RegistrationChk extends HttpServlet{
    private static final long serialVersionUID = 1L;

    public RegistrationChk() {
        super();
    }

    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
        request.getRequestDispatcher("jsp/register.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        membersTable member = new membersTable();
        member.setFirstName(request.getParameter("firstName"));
        member.setLastName(request.getParameter("lastName"));
        member.setDob(Date.valueOf(request.getParameter("dob")));
        member.setEmail(request.getParameter("email"));
        member.setPass(request.getParameter("pass"));
        member.setHighSchool(request.getParameter("highSchool"));
        member.setAfterGraduation(request.getParameter("afterGraduation"));
        member.setChurchName(request.getParameter("churchName"));
        member.setPhone(request.getParameter("phone"));
        member.setOrgid(Integer.parseInt(request.getParameter("orgId")));
        member.setAdminId(Integer.parseInt(request.getParameter("adminId")));
        member.setEventId(Integer.parseInt(request.getParameter("eventId")));

        long i = RegistrationModel.addMember(member);

        request.getRequestDispatcher("jsp/registration.jsp").forward(request, response);
    }
}

