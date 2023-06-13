package dao;

import entity.Phone;
import utils.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PhoneDaoImpl implements PhoneDao{

    public List<Phone> findPhone() {
        List<Phone> phones = new ArrayList<>();
        String sql = "select * from phones";

        try {
            Connection connection = DbConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Phone phone = new Phone();
                phone.setId(resultSet.getInt("id"));
                phone.setPhone_name(resultSet.getString("phone_name"));
                phone.setPhone_manufacturer(resultSet.getString("phone_manufacturer"));
                phone.setChip(resultSet.getString("chip"));
                phone.setStorage(resultSet.getString("storage"));
                phone.setPrice(resultSet.getString("price"));
                phone.setCamera(resultSet.getString("camera"));
                phone.setLink(resultSet.getString("link"));
                phone.setPicture_link(resultSet.getString("picture_link"));

//                System.out.println("from PhoneDaoImpl\n" + phone);

                phones.add(phone);
            }

            resultSet.close();
            statement.close();
            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return phones;
    }

    @Override
    public List<Phone> selectPhone(String idx) {
        List<Phone> select_phone = new ArrayList<>();
        String sql = "select * from phones where id = " + idx;

        try {
            Connection connection = DbConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Phone phone = new Phone();
                phone.setId(resultSet.getInt("id"));
                phone.setPhone_name(resultSet.getString("phone_name"));
                phone.setPhone_manufacturer(resultSet.getString("phone_manufacturer"));
                phone.setChip(resultSet.getString("chip"));
                phone.setStorage(resultSet.getString("storage"));
                phone.setPrice(resultSet.getString("price"));
                phone.setCamera(resultSet.getString("camera"));
                phone.setLink(resultSet.getString("link"));
                phone.setPicture_link(resultSet.getString("picture_link"));

//                System.out.println("from PhoneDaoImpl\n" + phone);

                select_phone.add(phone);
            }

            resultSet.close();
            statement.close();
            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return select_phone;
    }

    @Override
    public boolean insertPhone(String id, String phone_name, String phone_manufacturer, String chip, String storage, String price, String camera, String link, String picture_link) {
        try {
            Connection connection = DbConnection.getConnection();
            String sql = "insert into phones (id, phone_name, phone_manufacturer, chip, storage, price, camera, link, picture_link) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, id);
            statement.setString(2, phone_name);
            statement.setString(3, phone_manufacturer);
            statement.setString(4, chip);
            statement.setString(5, storage);
            statement.setString(6, price);
            statement.setString(7, camera);
            statement.setString(8, link);
            statement.setString(9, picture_link);

            statement.executeUpdate();

            statement.close();
            connection.close();
            return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean deletePhone(String id) {
        try {
            Connection connection = DbConnection.getConnection();
            String sql = "delete from phones where id = ?";
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
    public boolean updatePhone(String id, String phone_name, String phone_manufacturer, String chip, String storage, String price, String camera, String link, String picture_link) {
        try {
            Connection connection = DbConnection.getConnection();
            String sql = "update phones set phone_name = ?, phone_manufacturer = ?, chip = ?, storage = ?, price = ?, camera = ?, link = ?, picture_link = ? where id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);

//            statement.setString(1, id);
            statement.setString(1, phone_name);
            statement.setString(2, phone_manufacturer);
            statement.setString(3, chip);
            statement.setString(4, storage);
            statement.setString(5, price);
            statement.setString(6, camera);
            statement.setString(7, link);
            statement.setString(8, picture_link);

            statement.setString(9, id);

            statement.executeUpdate();

            statement.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return true;
    }
}
