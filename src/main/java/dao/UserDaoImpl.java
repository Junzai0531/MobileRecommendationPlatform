package dao;

import entity.Phone;
import entity.User;
import utils.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao{

    Connection connection = DbConnection.getConnection();

    @Override
    public List<User> selectUser(String username) {
        List<User> select_user = new ArrayList<>();
        String sql = "select * from users where username = '" + username + "'";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setPhone_number(resultSet.getString("phone_number"));
                user.setEmail(resultSet.getString("email"));
                user.setAge((resultSet.getString("age")));
                user.setGender(resultSet.getString("gender"));
                user.setAdministrator(resultSet.getInt("administrator"));

                select_user.add(user);
            }

            resultSet.close();
            statement.close();
            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return select_user;
    }

    @Override
    public List<User> selectUserById(String id) {
        List<User> select_user = new ArrayList<>();
        String sql = "select * from users where id = '" + id + "'";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setPhone_number(resultSet.getString("phone_number"));
                user.setEmail(resultSet.getString("email"));
                user.setAge((resultSet.getString("age")));
                user.setGender(resultSet.getString("gender"));
                user.setAdministrator(resultSet.getInt("administrator"));

                select_user.add(user);
            }

            resultSet.close();
            statement.close();
            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return select_user;
    }

    @Override
    public boolean insertUser(String username, String password, String phone_number, String email, String age, String gender, String administrator) {
        try {
            String sql = "insert into users (username, password, phone_number, email, age, gender, administrator) values (?, ?, ?, ?, ?, ?, 0)";
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, username);
            statement.setString(2, password);
            statement.setString(3, phone_number);
            statement.setString(4, email);
            statement.setString(5, age);
            statement.setString(6, gender);

            statement.executeUpdate();

            statement.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return true;
    }

    public List<User> findUser() {
        List<User> users = new ArrayList<>();
        String sql = "select * from users";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setPhone_number(resultSet.getString("phone_number"));
                user.setEmail(resultSet.getString("email"));
                user.setAge(resultSet.getString("age"));
                user.setGender(resultSet.getString("gender"));
                user.setAdministrator(resultSet.getInt("administrator"));

                users.add(user);
            }

            resultSet.close();
            statement.close();
            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return users;
    }

    @Override
    public boolean deleteUser(String id) {
        try {
            String sql = "delete from users where id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, id);
            statement.executeUpdate();

            statement.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return true;
    }

    @Override
    public boolean updateUser(String id, String username, String password, String phone_number, String email, String age, String gender, String administrator) {
        try {
            String sql = "update users set username = ?, password = ?, phone_number = ?, email = ?, age = ?, gender = ?, administrator = ? where id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, username);
            statement.setString(2, password);
            statement.setString(3, phone_number);
            statement.setString(4, email);
            statement.setString(5, age);
            statement.setString(6, gender);
            statement.setString(7, administrator);

            statement.setString(8, id);

            statement.executeUpdate();

            statement.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return true;
    }
}
