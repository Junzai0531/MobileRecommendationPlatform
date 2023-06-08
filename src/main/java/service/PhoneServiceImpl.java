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
}
