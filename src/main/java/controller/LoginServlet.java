package controller;

import entity.User;
import service.UserService;
import service.UserServiceImpl;
import utils.DbConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    public static Statement statement = null;
    public static ResultSet resultSet = null;
    public static PrintWriter writer = null;

    private String username_input = null;
    private String password_input = null;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        username_input = request.getParameter("username");
        password_input = request.getParameter("password");

        Connection connection = DbConnection.getConnection();

        try {
            statement = connection.createStatement();

            boolean AorU = selectUser(username_input);

            if (AorU == true) {
                response.sendRedirect("/mrp/home");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    private boolean selectUser(String username) {
        UserService userService = new UserServiceImpl();
        List<User> users = userService.selectUser(username);

        boolean aoru = false;

        for (User user: users) {
            String username_database = user.getUsername();
            String password_database = user.getPassword();
            int administrator = user.getAdministrator();

            if (username_database.equals(username_input) && password_database.equals(password_input) && administrator == 0) {
                aoru = true;
                break;
            } else {
                aoru = false;
                break;
            }
        }
        return aoru;
    }

}
