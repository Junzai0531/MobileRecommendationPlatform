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
);
```

此为添加一个示例数据进入phones表中
```sql
INSERT INTO phones (id, phone_name, phone_manufacturer, chip, storage, price, camera, link)
VALUES (1131, 'iPhone 13', 'Apple', 'A15 Bionic', '128G 256G 512G', '¥5399 ¥6299 ¥8299', '1200w+1200w', 'https://www.apple.com.cn/shop/buy-iphone/iphone-13/MLDV3CH/A');
```
