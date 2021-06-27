create table orders
(
    customer_ID int          not null,
    order_date  datetime     not null,
    products    varchar(255) null,
    total_price float        not null,
    primary key (customer_ID, order_date)
);

INSERT INTO db_g1.orders (customer_ID, order_date, products, total_price) VALUES (4, '2021-06-06 21:32:19', '(1,1) ,(2,2) ,(4,1) ,(5,1) ,(8,1) ,', 106);
INSERT INTO db_g1.orders (customer_ID, order_date, products, total_price) VALUES (4, '2021-06-06 21:37:08', '(7,1) ,(12,1) ,', 125);
INSERT INTO db_g1.orders (customer_ID, order_date, products, total_price) VALUES (6, '2021-06-23 20:28:15', '(2,1) ,(9,1) ,', 43);
INSERT INTO db_g1.orders (customer_ID, order_date, products, total_price) VALUES (6, '2021-06-23 20:29:27', '(5,1) ,(10,1) ,(3,2) ,', 77);
INSERT INTO db_g1.orders (customer_ID, order_date, products, total_price) VALUES (7, '2021-06-23 20:42:32', '(8,2) ,(7,5) ,(2,10) ,', 75);
INSERT INTO db_g1.orders (customer_ID, order_date, products, total_price) VALUES (7, '2021-06-25 12:46:37', '(7,1) ,', 12);
INSERT INTO db_g1.orders (customer_ID, order_date, products, total_price) VALUES (7, '2021-06-25 15:52:21', '(2,1) ,', 18);
INSERT INTO db_g1.orders (customer_ID, order_date, products, total_price) VALUES (7, '2021-06-25 15:56:01', '(6,1) ,(3,2) ,', 44);
INSERT INTO db_g1.orders (customer_ID, order_date, products, total_price) VALUES (14, '2021-06-25 16:03:11', '(4,3) ,(10,1) ,', 54);