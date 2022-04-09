package com.uh.rachel.util.servlets;
import com.uh.rachel.util.DataHandler;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "Tasks")

public class updateTasks extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataHandler.updateTasksRowByID(
                Integer.parseInt(request.getParameter("taskIdInput")!=""?request.getParameter("taskIdInput"):"0"),
                (request.getParameter("taskNameInput")!=""?request.getParameter("taskNameInput"):"0"),
                (request.getParameter("taskDateInput")!=""?request.getParameter("taskDateInput"):"0"),
                (request.getParameter("taskDescriptionInput")!=""?request.getParameter("taskDescriptionInput"):"0"),
                (Integer.parseInt(request.getParameter("MemberIdInput")!=""?request.getParameter("MemberIdInput"):"0")),
                (Integer.parseInt(request.getParameter("EventIdInput")!=""?request.getParameter("EventIdInput"):"0")),
                (request.getParameter("taskStatusInput")!=""?request.getParameter("taskStatusInput"):"0")
        );
        response.sendRedirect("./tasks.jsp");
    }
}
