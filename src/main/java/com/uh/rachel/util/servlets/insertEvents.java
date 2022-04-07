package com.uh.rachel.util.servlets;
import com.uh.rachel.util.DataHandler;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


    @WebServlet(name = "Options")

    public class insertEvents extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            DataHandler.insertEventsRowByID(Integer.parseInt(request.getParameter("eventIdInput")),(request.getParameter("eventNameInput")), (request.getParameter("eventTypeInput")), (request.getParameter("eventCityInput")), (request.getParameter("eventStateInput")), (request.getParameter("eventDateInput")), (request.getParameter("interest1Input")), (request.getParameter("interest2Input")), (request.getParameter("interest3Input")), (request.getParameter("interest4Input")));
            response.sendRedirect("./events.jsp");
        }
    }


