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
        Connection connection = DbConnection.getConnection();
        String sql = "select * from phones";

        try {
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

                System.out.println("from PhoneDaoImpl\n" + phone);

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
        Connection connection = DbConnection.getConnection();
        String sql = "select * from phones where id = " + idx;

        try {
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
}
