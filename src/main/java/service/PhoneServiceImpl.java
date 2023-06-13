package service;

import dao.PhoneDao;
import dao.PhoneDaoImpl;
import entity.Phone;

import java.util.List;

public class PhoneServiceImpl implements PhoneService{

    private PhoneDao phoneDao = new PhoneDaoImpl();

    @Override
    public List<Phone> findAllPhones() {
        return phoneDao.findPhone();
    }

    @Override
    public List<Phone> selectPhone(String id) {
        return phoneDao.selectPhone(id);
    }
    @Override
    public boolean insertPhone(String id, String phone_name, String phone_manufacturer, String chip, String storage, String price, String camera, String link, String picture_link) {
        return phoneDao.insertPhone(id, phone_name, phone_manufacturer, chip, storage, price, camera, link, picture_link);
    }

    @Override
    public boolean deletePhone(String id) {
        return phoneDao.deletePhone(id);
    }
}
