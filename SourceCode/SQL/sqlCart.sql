CREATE DATABASE IF NOT EXISTS UrbanStore;
USE UrbanStore;

DROP TABLE IF EXISTS cart;

CREATE TABLE `cart`
(
    userid    int(8) not null,
    productid int(8) not null,
    quantity  int(8) not null,
    primary key (userid, productid)
#     constraint cart_users_null_fk
#         foreign key (userid) references users (userId)


) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
