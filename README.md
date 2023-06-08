# MobileRecommendationPlatform
请在使用此代码前修改数据库URL及密码
在数据库中使用此代码创建数据库及表
```sql
create database Phone;
```

创建数据库表
```sql
CREATE TABLE phones (
    id INT PRIMARY KEY,
    phone_name VARCHAR(30),
    phone_manufacturer VARCHAR(30),
    chip VARCHAR(30),
    storage VARCHAR(30),
    price VARCHAR(30),
    camera VARCHAR(30),
    link VARCHAR(100)
    picture_link VARCHAR(500)
);
```

此为添加一个示例数据进入phones表中
```sql
INSERT INTO phones (id, phone_name, phone_manufacturer, chip, storage, price, camera, link, picture_link)
VALUES (1131, 
        'iPhone 13', 
        'Apple', 
        'A15 Bionic', 
        '128G 256G 512G', 
        '¥5399 ¥6299 ¥8299', 
        '1200w+1200w', 
        'https://www.apple.com.cn/shop/buy-iphone/iphone-13/MLDV3CH/A', 
        'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-13-finish-select-202207-6-1inch-starlight?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1656712888655');
```
