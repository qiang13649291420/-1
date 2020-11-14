-- 设置客户端连接服务器的编码为UTF-8
SET NAMES UTF8;
-- 丢弃数据库，如果存在cake
DROP DATABASE IF EXISTS CAKE;
-- 创建新的数据库cake
CREATA DATABASE CAKE charset=utf8;
-- 进入数据库cake
USE CAKE;
-- 创建保存用户信息的表
CREATA RABLE user(
  uid INT PRIMARY KEY Auto_increment,
  uname VARCHAR(16),
  upwd VARCHAR(32),
  sex BOOL DEFAULT 1,
  birthday DATE,
  phone VARCHAR(11),
  city VARCHAR(11)
);
-- 插入数据
INSERT INTO user_table VALUES(NULL,'','','','','','','','');
-- 创建保存蛋糕信息的表
CREATA RABLE cakes(
  cid INT PRIMARY KEY Auto_increment,
  cname VARCHAR(32),
  pic VARCHAR(128),
  price DECIMAL(4,1),
  size TINYINT,
  shape VARCHAR(32),
  kinds VARCHAR(32),
  PD VARCHAR(32)
);
-- 插入数据
INSERT INTO cakes VALUES(NULL,'蝶恋花景','picture/001.jpg','58.5','8寸','圆形','鲜奶','2020-11-07');
INSERT INTO cakes VALUES(NULL,'清风徐来','picture/002.jpg','67.8','10寸','圆形','慕斯','2020-11-07');
INSERT INTO cakes VALUES(NULL,'心之恋情','picture/003.jpg','48.8','6寸','半圆形','草莓','2020-11-07');
INSERT INTO cakes VALUES(NULL,'甜蜜如心','picture/004.jpg','73.2','8寸','圆形','巧克力','2020-11-07');
INSERT INTO cakes VALUES(NULL,'情有独钟','picture/007.jpg','45.8','4寸','三角形','牛奶','2020-11-07');
INSERT INTO cakes VALUES(NULL,'飞鸟恋人','picture/008.jpg','66.6','6寸','半圆形','抹茶','2020-11-07');
INSERT INTO cakes VALUES(NULL,'玫瑰芝士','picture/','','','','','','');
INSERT INTO cakes VALUES(NULL,'','','','','','','','');
INSERT INTO cakes VALUES(NULL,'','','','','','','','');
INSERT INTO cakes VALUES(NULL,'','','','','','','','');
INSERT INTO cakes VALUES(NULL,'','','','','','','','');
INSERT INTO cakes VALUES(NULL,'','','','','','','','');
-- 创建订单表
CREATA RABLE orders(
  form_id INT PRIMARY KEY Auto_increment,
  form_date DATE,
  form_time TIME,
  form_site VARCHAR(64),
  form_name VARCHAR(32),
  form_phone VARCHAR(11)
);
-- 插入数据
INSERT INTO orders VALUES(NULL,'','','','','','');