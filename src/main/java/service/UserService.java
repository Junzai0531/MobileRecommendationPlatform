package service;

import entity.User;

import java.util.List;

public interface UserService {
    List<User> selectUser(String username);
}
