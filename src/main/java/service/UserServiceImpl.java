package service;

import dao.UserDao;
import dao.UserDaoImpl;
import entity.User;

import java.util.List;

public class UserServiceImpl implements UserService{
    private UserDao userDao = new UserDaoImpl();

    @Override
    public List<User> selectUser(String username) {
        return userDao.selectUser(username);
    }

    @Override
    public List<User> selectUserById(String id) {
        return userDao.selectUserById(id);
    }

    @Override
    public boolean insertUser(String username, String password, String phone_number, String email, String age, String gender, String administrator) {
        return userDao.insertUser(username, password, phone_number, email, age, gender, administrator);
    }

    @Override
    public List<User> findUser() {
        return userDao.findUser();
    }

    @Override
    public boolean deleteUser(String id) {
        return userDao.deleteUser(id);
    }

    @Override
    public boolean updateUser(String id, String username, String password, String phone_number, String email, String age, String gender, String administrator) {
        return userDao.updateUser(id, username, password, phone_number, email, age, gender, administrator);
    }
}
