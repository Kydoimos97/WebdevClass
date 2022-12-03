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

insert into cart (userid, productid, quantity) values (3, 1, 5);
insert into cart (userid, productid, quantity) values (4, 2, 2);
insert into cart (userid, productid, quantity) values (1, 3, 5);
insert into cart (userid, productid, quantity) values (4, 4, 4);
insert into cart (userid, productid, quantity) values (2, 5, 4);
insert into cart (userid, productid, quantity) values (3, 6, 1);
insert into cart (userid, productid, quantity) values (4, 7, 3);
insert into cart (userid, productid, quantity) values (1, 8, 3);
insert into cart (userid, productid, quantity) values (2, 9, 5);
insert into cart (userid, productid, quantity) values (2, 10, 2);
insert into cart (userid, productid, quantity) values (3, 11, 3);
insert into cart (userid, productid, quantity) values (3, 12, 4);
insert into cart (userid, productid, quantity) values (4, 13, 2);
insert into cart (userid, productid, quantity) values (4, 14, 5);
insert into cart (userid, productid, quantity) values (4, 15, 3);
insert into cart (userid, productid, quantity) values (2, 16, 5);
insert into cart (userid, productid, quantity) values (2, 17, 2);
insert into cart (userid, productid, quantity) values (1, 18, 3);
insert into cart (userid, productid, quantity) values (3, 19, 3);
insert into cart (userid, productid, quantity) values (3, 20, 1);
insert into cart (userid, productid, quantity) values (3, 21, 3);
insert into cart (userid, productid, quantity) values (2, 22, 5);
insert into cart (userid, productid, quantity) values (2, 23, 3);
insert into cart (userid, productid, quantity) values (1, 24, 2);
insert into cart (userid, productid, quantity) values (4, 25, 5);
insert into cart (userid, productid, quantity) values (2, 26, 2);
insert into cart (userid, productid, quantity) values (1, 27, 3);
insert into cart (userid, productid, quantity) values (4, 28, 5);
insert into cart (userid, productid, quantity) values (2, 29, 2);
insert into cart (userid, productid, quantity) values (4, 30, 2);
insert into cart (userid, productid, quantity) values (2, 31, 2);
insert into cart (userid, productid, quantity) values (4, 32, 2);
insert into cart (userid, productid, quantity) values (1, 33, 4);
insert into cart (userid, productid, quantity) values (2, 34, 4);
insert into cart (userid, productid, quantity) values (1, 35, 3);
insert into cart (userid, productid, quantity) values (3, 36, 2);
insert into cart (userid, productid, quantity) values (1, 37, 4);
insert into cart (userid, productid, quantity) values (3, 38, 4);
insert into cart (userid, productid, quantity) values (3, 39, 5);
insert into cart (userid, productid, quantity) values (1, 40, 2);
insert into cart (userid, productid, quantity) values (3, 41, 3);
insert into cart (userid, productid, quantity) values (1, 42, 5);
insert into cart (userid, productid, quantity) values (2, 43, 1);
insert into cart (userid, productid, quantity) values (2, 44, 5);
insert into cart (userid, productid, quantity) values (2, 45, 5);
insert into cart (userid, productid, quantity) values (1, 46, 2);
insert into cart (userid, productid, quantity) values (2, 47, 5);
insert into cart (userid, productid, quantity) values (4, 48, 3);
insert into cart (userid, productid, quantity) values (3, 49, 5);
insert into cart (userid, productid, quantity) values (2, 50, 1);


