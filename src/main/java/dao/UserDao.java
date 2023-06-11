package dao;

import entity.User;

import java.util.List;

public interface UserDao {
    List<User> selectUser(String username);
}
