package entity;

public class Phone {
    private int id;
    private String phone_name;
    private String phone_manufacturer;
    private String chip;
    private String storage;
    private String price;
    private String camera;
    private String link;
    private String picture_link;

    public Phone() {}

    public Phone(int id, String phone_name, String phone_manufacturer, String chip, String storage, String price, String camera, String link, String picture_link) {
        this.id = id;
        this.phone_name = phone_name;
        this.phone_manufacturer = phone_manufacturer;
        this.chip = chip;
        this.storage = storage;
        this.price = price;
        this.camera = camera;
        this.link = link;
        this.picture_link = picture_link;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPhone_name() {
        return phone_name;
    }

    public void setPhone_name(String phone_name) {
        this.phone_name = phone_name;
    }

    public String getPhone_manufacturer() {
        return phone_manufacturer;
    }

    public void setPhone_manufacturer(String phone_manufacturer) {
        this.phone_manufacturer = phone_manufacturer;
    }

    public String getChip() {
        return chip;
    }

    public void setChip(String chip) {
        this.chip = chip;
    }

    public String getStorage() {
        return storage;
    }

    public void setStorage(String storage) {
        this.storage = storage;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getCamera() {
        return camera;
    }

    public void setCamera(String camera) {
        this.camera = camera;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getPicture_link() {
        return picture_link;
    }

    public void setPicture_link(String picture_link) {
        this.picture_link = picture_link;
    }

    @Override
    public String toString() {
        return "Phone{" +
                "id=" + id +
                ", phone_name='" + phone_name + '\'' +
                ", phone_manufacturer='" + phone_manufacturer + '\'' +
                ", chip='" + chip + '\'' +
                ", storage='" + storage + '\'' +
                ", price='" + price + '\'' +
                ", camera='" + camera + '\'' +
                ", link='" + link + '\'' +
                ", picture_link='" + picture_link + '\'' +
                '}';
    }
}
