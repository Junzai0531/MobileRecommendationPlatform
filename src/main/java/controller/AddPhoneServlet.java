package controller;

import service.PhoneService;
import service.PhoneServiceImpl;
import utils.DbConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

@WebServlet(name = "AddPhoneServlet", urlPatterns = "/addphone")
public class AddPhoneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        request.getRequestDispatcher("/addPhone.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");

        String id = request.getParameter("id");
        String phone_name = request.getParameter("phone_name");
        String phone_manufacturer = request.getParameter("phone_manufacturer");
        String chip = request.getParameter("chip");
        String storage = request.getParameter("storage");
        String price = request.getParameter("price");
        String camera = request.getParameter("camera");
        String link = request.getParameter("link");
        String picture_link = request.getParameter("picture_link");

        PhoneService phoneService = new PhoneServiceImpl();
        boolean workSuccess = phoneService.insertPhone(id, phone_name, phone_manufacturer, chip, storage, price, camera, link, picture_link);

        response.sendRedirect("/mrp/adm");
    }
}
