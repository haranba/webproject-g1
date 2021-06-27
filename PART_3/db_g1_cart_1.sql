create table cart
(
    customer_ID int      not null,
    order_date  datetime not null,
    product_ID  int      not null,
    quantity    int      not null,
    primary key (customer_ID, order_date, product_ID),
    constraint cart_customer_ID_order_date_fk
        foreign key (customer_ID) references customer (customer_ID),
    constraint cart_product_product_ID_fk
        foreign key (product_ID) references product (product_ID)
);

INSERT INTO db_g1.cart (customer_ID, order_date, product_ID, quantity) VALUES (1, '2020-06-28 01:17:22', 2, 1);
INSERT INTO db_g1.cart (customer_ID, order_date, product_ID, quantity) VALUES (1, '2020-06-28 01:17:22', 3, 1);
INSERT INTO db_g1.cart (customer_ID, order_date, product_ID, quantity) VALUES (1, '2020-06-28 01:17:22', 6, 1);
INSERT INTO db_g1.cart (customer_ID, order_date, product_ID, quantity) VALUES (2, '2015-10-08 08:45:32', 1, 1);
INSERT INTO db_g1.cart (customer_ID, order_date, product_ID, quantity) VALUES (2, '2015-10-08 08:45:32', 2, 2);
INSERT INTO db_g1.cart (customer_ID, order_date, product_ID, quantity) VALUES (3, '2019-09-26 11:57:43', 4, 1);
INSERT INTO db_g1.cart (customer_ID, order_date, product_ID, quantity) VALUES (3, '2019-09-26 11:57:43', 5, 1);
INSERT INTO db_g1.cart (customer_ID, order_date, product_ID, quantity) VALUES (4, '2020-07-06 21:37:13', 5, 1);
INSERT INTO db_g1.cart (customer_ID, order_date, product_ID, quantity) VALUES (5, '2018-01-10 17:32:11', 5, 1);
INSERT INTO db_g1.cart (customer_ID, order_date, product_ID, quantity) VALUES (5, '2018-01-10 17:32:11', 6, 1);
INSERT INTO db_g1.cart (customer_ID, order_date, product_ID, quantity) VALUES (5, '2018-01-10 17:32:11', 10, 2);