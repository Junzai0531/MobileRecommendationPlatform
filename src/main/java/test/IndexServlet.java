package test;

import utils.DbConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(value = "/index")
public class IndexServlet extends HttpServlet {

    public static Statement statement = null;
    public static ResultSet resultSet = null;
    public static PrintWriter writer = null;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        Connection connection = DbConnection.getConnection();
        writer = response.getWriter();

        try {
            statement = connection.createStatement();

            selectPhone();

            // 关闭连接
            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    public void selectPhone() {
        String sql = "select * from phones";

        try {
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String phone_name = resultSet.getString("phone_name");

                writer.println("id:" + id + "\nphone_name:"  + phone_name);

//                System.out.println("id:" + id + "\nphone_name:"  + phone_name);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void updatePhone() {
        String sql = "update ";
    }
}
