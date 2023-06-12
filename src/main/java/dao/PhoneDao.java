package dao;

import entity.Phone;

import java.util.List;

public interface PhoneDao {
    List<Phone> findPhone();

    List<Phone> selectPhone(String id);
}
