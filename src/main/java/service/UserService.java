package service;

import entity.User;

import java.util.List;

public interface UserService {
    List<User> selectUser(String username);
    List<User> selectUserById(String id);
    boolean insertUser(String username, String password, String phone_number, String email, String age, String gender, String administrator);
    List<User> findUser();
    boolean deleteUser(String id);
    boolean updateUser(String id, String username, String password, String phone_number, String email, String age, String gender, String administrator);
}
