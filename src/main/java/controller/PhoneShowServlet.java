package controller;

import entity.Phone;
import service.PhoneService;
import service.PhoneServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PhoneShowServlet", urlPatterns = "/show")
public class PhoneShowServlet extends HomeServlet{
    private PhoneService phoneService = new PhoneServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Phone> phones = phoneService.findAllPhones();
//        System.out.println("from FindAllPhonesServlet\n" + phones);

        request.getRequestDispatcher("/showPhone.jsp").forward(request, response);
    }
}
