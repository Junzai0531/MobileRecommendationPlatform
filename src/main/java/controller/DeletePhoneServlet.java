package controller;

import service.PhoneService;
import service.PhoneServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeletePhoneServlet", urlPatterns = "/delphone")
public class DeletePhoneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");

        String id = request.getParameter("id");

        PhoneService phoneService = new PhoneServiceImpl();
        boolean workSuccess = phoneService.deletePhone(id);

        response.sendRedirect("/mrp/adm");
    }
}
