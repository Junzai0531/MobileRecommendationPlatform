package service;

import entity.Phone;

import java.util.List;

public interface PhoneService {
    List<Phone> findAllPhones();

    List<Phone> selectPhone(String id);
}
