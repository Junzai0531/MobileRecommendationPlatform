package dao;

import entity.Phone;

import java.util.List;

public interface PhoneDao {
    List<Phone> findPhone();
    List<Phone> selectPhone(String id);
    boolean insertPhone(String id, String phone_name, String phone_manufacturer, String chip, String storage, String price, String camera, String link, String picture_link);
    boolean deletePhone(String id);
    boolean updatePhone(String id, String phone_name, String phone_manufacturer, String chip, String storage, String price, String camera, String link, String picture_link);
}
