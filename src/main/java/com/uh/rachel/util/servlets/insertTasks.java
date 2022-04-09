package com.uh.rachel.util.servlets;
import com.uh.rachel.util.DataHandler;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "Tasks")

public class insertTasks extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataHandler.insertTasksRowByID(
                Integer.parseInt(request.getParameter("taskIdInput")),
                (request.getParameter("taskNameInput")), (request.getParameter("taskDateInput")),
                (request.getParameter("taskDescriptionInput")), (Integer.parseInt(request.getParameter("MemberIdInput"))),
                (Integer.parseInt(request.getParameter("EventIdInput"))), (request.getParameter("taskStatusInput"))
        );
        response.sendRedirect("./tasks.jsp");
    }
}
