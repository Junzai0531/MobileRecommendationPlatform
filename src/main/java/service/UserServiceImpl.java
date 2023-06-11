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
}
