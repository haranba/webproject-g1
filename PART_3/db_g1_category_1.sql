create table category
(
    catecory_ID   int          not null
        primary key,
    category_name varchar(255) not null
);

INSERT INTO db_g1.category (catecory_ID, category_name) VALUES (1, 'חלות');
INSERT INTO db_g1.category (catecory_ID, category_name) VALUES (2, 'פרחים');
INSERT INTO db_g1.category (catecory_ID, category_name) VALUES (3, 'מוצרים נלווים');