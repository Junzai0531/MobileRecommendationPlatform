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

    @Override
    public List<User> selectUser(String username) {
        List<User> select_user = new ArrayList<>();
        Connection connection = DbConnection.getConnection();
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
                user.setAge((resultSet.getInt("age")));
                user.setGender(resultSet.getInt("gender"));
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
}
