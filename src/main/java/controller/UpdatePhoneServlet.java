package controller;

import entity.Phone;
import service.PhoneService;
import service.PhoneServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdatePhoneServlet", urlPatterns = "/updatephone")
public class UpdatePhoneServlet extends HttpServlet {

    String id = null;
    String phone_name_update = null;
    String phone_manufacturer_update = null;
    String chip_update = null;
    String storage_update = null;
    String price_update = null;
    String camera_update = null;
    String link_update = null;
    String picture_link_update = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        id = request.getParameter("id");

        request.getRequestDispatcher("/updatePhone.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");

        phone_name_update = request.getParameter("phone_name");
        phone_manufacturer_update = request.getParameter("phone_manufacturer");
        chip_update = request.getParameter("chip");
        storage_update = request.getParameter("storage");
        price_update = request.getParameter("price");
        camera_update = request.getParameter("camera");
        link_update = request.getParameter("link");
        picture_link_update = request.getParameter("picture_link");

//        System.out.println(id + phone_manufacturer_update + phone_manufacturer_update + chip_update + storage_update + price_update + camera_update + link_update + picture_link_update);

        PhoneService phoneService = new PhoneServiceImpl();
        phoneService.updatePhone(id, phone_name_update, phone_manufacturer_update, chip_update, storage_update, price_update, camera_update, link_update, picture_link_update);

        response.sendRedirect("/mrp/adm");
    }
}
