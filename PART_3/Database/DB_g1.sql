create table category
(
    catecory_ID    int
        primary key,
    category_name varchar(255) not null
);

INSERT INTO `DB_g1`.category (catecory_ID, category_name) VALUES (1, 'חלות');
INSERT INTO `DB_g1`.category (catecory_ID, category_name) VALUES (2, 'פרחים');
INSERT INTO `DB_g1`.category (catecory_ID, category_name) VALUES (3, 'מוצרים נלווים');



create table product
(
    product_ID   int auto_increment
        primary key,
    product_name varchar(255) not null,
    description  varchar(255) not null,
    price        float        not null,
    image_URL    varchar(255) null,
    category_ID  int          not null,
    best_seller  tinyint(1)   not null,
    constraint product_category_ID_fk
        foreign key (category_ID) references category (catecory_ID)
);

INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (1, 'חלה קלאסית', 'חלה עם שומשום. פשטות זה שם המשחק', 18, 'klasit.jpeg', 1, 1);
INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (2, 'חלה מקומחת', 'חלה ללא תוספות, במעטה קמח', 18, 'kemah.jpeg', 1, 1);
INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (3, 'חלה לאמיצים', 'חלה עם תמרים, שבבי סוכר, ושקדים פרוסים. לאמיצים בלבד!', 20, 'amitzim.jpeg', 1, 1);
INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (4, 'חלה הצגה', 'חלה עם עגבניות צלויות ורוזמרין', 19, 'hatzaga.jpeg', 1, 0);
INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (5, 'זר פסטל', 'גיבסניות וליזיאנטוס בצבעים בהירים', 22, 'pastel.jpeg', 2, 0);
INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (6, 'זר צבעוני', 'לימניום וגרברות בצבעים נועזים', 24, 'tzivoni.jpg', 2, 0);
INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (7, 'גרנולה', 'גרנולה משיבולת שועל וגרעינים', 12, 'granola.jpeg', 3, 0);
INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (8, 'אגרטל קרמיקה', 'אגרטל מושלם לזר פרחים', 45, 'vaza.jpg', 3, 0);
INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (9, 'זר בוהו', 'זר בגוונים חמים. כי בוהו זה הכי שיק', 25, 'boho.jpeg', 2, 1);
INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (10, 'צלוחית קרמיקה', 'צלוחית בקוטר 20 ס"מ. מושלמת לקערת מוזלי', 35, 'boll.jpeg', 3, 0);
INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (11, 'חלה מתוקה', 'חלה עם בצל מקורמל, שבבי פקאן מסוכרים ועלי זוטה', 22, 'metuka.jpg', 1, 0);
INSERT INTO `DB_g1`.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (12, 'כיסוי לחלות', 'כיסוי מהמם לחלות', 55, 'kisuy.jpg', 3, 0);


create table customer
(
    customer_ID int auto_increment
        primary key,
    email        varchar(255) not null,
    phone_number int not null,
    customer_name   varchar(255) not null,
    password     varchar(255) not null,
    address      varchar (255) not null
);

INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (1, 'daniella@gmail.com',0506547895,  'דניאלה סלע', 'dani123','צחק אבינו 3 באר שבע');
INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (2, 'galsha@gmail.com',0506354781,  'גל שקד', 'galsha111','אברהם אבינו 4 באר שבע');
INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (3, 'oshra@gmail.com',0524710234,  'אושרי פורטל', 'oshra333','יעקב אבינו 5 באר שבע');
INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (4, 'baraksha@gmail.com', 0545962144, 'ברק הרן', 'baraksha1234','ארסני אבינו 5 באר שבע');
INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (5, 'nirka@gmail.com', 0547896547, 'ניר קלימי', 'niros545','מצדה 100 באר שבע');
INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (6, 'liranma@gmail.com',0528796451,  'לירן מן', 'lirlir54','מצבע יואב 5 עומר');
INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (7, 'noamsa@gmail.com',0542136987,  'נועם סעדון', 'no22no210','מנחם בגין 12 להבים');
INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (8, 'tako@walla.com',0508964125,  'אמיר טוקר', 'toka789','שדרות רגר 45 באר שבע');
INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (9, 'eliko@gmail.com',0527945143,  'אלי כהן', 'likos35','המלאכה 2 מיתר');
INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (10, 'sharvit@gmail.com',052689453,  'מורן שרביט', 'shRvitan5','ביאליק 6 באר שבע');
INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (11, 'oriri@gmail.com',0542132623,  'אורי ויס', '6kjseh67','הכורזים 1 מיתר');
INSERT INTO `DB_g1`.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (12, 'orti@gmail.com',0505454557,  'אורטל בוצין', 'sd5ag6','הורד 3 באר שבע');


create table orders
(
    customer_ID  int          not null,
    order_date datetime     not null,
    products     varchar(255) null,
    total_price  float not null,
    primary key (customer_ID, order_date)
);

INSERT INTO `DB_g1`.orders (customer_ID, order_date, products, total_price) VALUES (4, '2021-06-06 21:32:19', '(1,1) ,(2,2) ,(4,1) ,(5,1) ,(8,1) ,', 106);
INSERT INTO `DB_g1`.orders (customer_ID, order_date, products, total_price) VALUES (4, '2021-06-06 21:37:08', '(7,1) ,(12,1) ,', 125);


create table cart
(
    customer_ID int      not null,
    order_date  datetime not null,
    product_ID  int      not null,
    quantity    int      not null,
    primary key (customer_ID, order_date, product_ID),
    constraint cart_product_product_ID_fk
        foreign key (product_ID) references product (product_ID),
    constraint cart_customer_ID_order_date_fk
        foreign key (customer_ID) references customer (customer_ID)
);

INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (1, '2020-06-28 01:17:22', 2, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (1, '2020-06-28 01:17:22', 3, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (1, '2020-06-28 01:17:22', 6, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (2, '2015-10-08 08:45:32', 1, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (2, '2015-10-08 08:45:32', 2, 2);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (3, '2019-09-26 11:57:43', 4, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (3, '2019-09-26 11:57:43', 5, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (4, '2020-07-06 21:37:13', 5, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (5, '2018-01-10 17:32:11', 5, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (5, '2018-01-10 17:32:11', 6, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (5, '2018-01-10 17:32:11', 10, 2);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (6, '2020-11-28 23:28:24', 1, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (6, '2020-11-28 23:28:24', 2, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (6, '2020-11-28 23:28:24', 3, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (6, '2020-11-28 23:28:24', 9, 1);
INSERT INTO `DB_g1`.cart (customer_ID, order_date, product_ID, quantity) VALUES (6, '2020-11-28 23:28:24', 10, 2);