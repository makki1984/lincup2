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

    private static boolean IsValidIndex(String[] arr, int index){
        return index < arr.length;
    }

    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
        request.getRequestDispatcher("register.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        membersTable member = new membersTable();
        String[] interests = request.getParameterValues("interests");

        member.setFirstName(request.getParameter("firstName"));
        member.setLastName(request.getParameter("lastName"));
        member.setDob(Date.valueOf(request.getParameter("dob")));
        member.setEmail(request.getParameter("email"));
        member.setPass(request.getParameter("pass"));
        member.setHighSchool(request.getParameter("highSchool"));
        member.setAfterGraduation(request.getParameter("afterGraduation"));
        member.setChurchName(request.getParameter("churchName"));
        member.setPhone(request.getParameter("phone"));
        member.setInterest1(interests[0]);

        if(IsValidIndex(interests, 1)){
            member.setInterest2(interests[1]);
        }

        if(IsValidIndex(interests, 2)){
            member.setInterest3(interests[2]);
        }

        if(IsValidIndex(interests, 3)){
            member.setInterest4(interests[3]);
        }

        member.setOrgid(Integer.parseInt(request.getParameter("orgId")));
        member.setAdminId(Integer.parseInt(request.getParameter("adminId")));
        member.setEventId(Integer.parseInt(request.getParameter("eventId")));

        long i = RegistrationModel.addMember(member);

        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}

