package entity;

public class User {
    private int id;
    private String username;
    private String password;
    private String phone_number;
    private String email;
    private String age;
    private String gender;
    private int administrator;

    public User() {}

    public User(int id, String username, String password, String phone_number, String email, String age, String gender, int administrator) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.phone_number = phone_number;
        this.email = email;
        this.age = age;
        this.gender = gender;
        this.administrator = administrator;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAdministrator() {
        return administrator;
    }

    public void setAdministrator(int administrator) {
        this.administrator = administrator;
    }
}
