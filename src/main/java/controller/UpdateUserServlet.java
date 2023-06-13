package controller;

import service.UserService;
import service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateUserServlet", urlPatterns = "/updateuser")
public class UpdateUserServlet extends HttpServlet {
    String id = null;
    String username = null;
    String password = null;
    String phone_number = null;
    String email = null;
    String age = null;
    String gender = null;
    String administrator = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        id = request.getParameter("id");

        request.getRequestDispatcher("/updateUser.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");

        username = request.getParameter("username");
        password = request.getParameter("password");
        phone_number = request.getParameter("phone_number");
        email = request.getParameter("email");
        age = request.getParameter("age");
        gender = request.getParameter("gender");
        administrator = request.getParameter("administrator");

        UserService userService = new UserServiceImpl();
        userService.updateUser(id, username, password, phone_number, email, age, gender, administrator);

        response.sendRedirect("/mrp/admuser");
    }
}
