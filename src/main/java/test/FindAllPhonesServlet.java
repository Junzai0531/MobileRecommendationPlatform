package test;

import entity.Phone;
import service.PhoneService;
import service.PhoneServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/findphone")
public class FindAllPhonesServlet extends HttpServlet {

    private PhoneService phoneService = new PhoneServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Phone> phones = phoneService.findAllPhones();
//        System.out.println("from FindAllPhonesServlet\n" + phones);
    }
}
