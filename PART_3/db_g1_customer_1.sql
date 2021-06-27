create table customer
(
    customer_ID   int auto_increment
        primary key,
    email         varchar(255) not null,
    phone_number  varchar(255) not null,
    customer_name varchar(255) not null,
    password      varchar(255) not null,
    address       varchar(255) not null
);

INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (1, 'daniella@gmail.com', '506547895', 'דניאלה סלע', 'dani123', 'צחק אבינו 3 באר שבע');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (2, 'galsha@gmail.com', '506354781', 'גל שקד', 'galsha111', 'אברהם אבינו 4 באר שבע');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (3, 'oshra@gmail.com', '524710234', 'אושרי פורטל', 'oshra333', 'יעקב אבינו 5 באר שבע');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (4, 'baraksha@gmail.com', '545962144', 'ברק הרן', 'baraksha1234', 'ארסני אבינו 5 באר שבע');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (5, 'nirka@gmail.com', '547896547', 'ניר קלימי', 'niros545', 'מצדה 100 באר שבע');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (6, 'liranma@gmail.com', '528796451', 'לירן מן', 'lirlir54', 'מצבע יואב 5 עומר');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (7, 'noamsa@gmail.com', '542136987', 'נועם סעדון', 'no22no210', 'מנחם בגין 12 להבים');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (8, 'tako@walla.com', '508964125', 'אמיר טוקר', 'toka789', 'שדרות רגר 45 באר שבע');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (9, 'eliko@gmail.com', '527945143', 'אלי כהן', 'likos35', 'המלאכה 2 מיתר');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (10, 'sharvit@gmail.com', '52689453', 'מורן שרביט', 'shRvitan5', 'ביאליק 6 באר שבע');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (11, 'oriri@gmail.com', '542132623', 'אורי ויס', '6kjseh67', 'הכורזים 1 מיתר');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (12, 'orti@gmail.com', '505454557', 'אורטל בוצין', 'sd5ag6', 'הורד 3 באר שבע');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (13, 'gal2@gmail.com', '509654311', 'גל קלימי', '123123', 'רחבת אלכסנדר 5 באר שבע');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (14, 'shimshon@gmail.com', '509878974', 'שמשון יובב', 'walla', 'ששון 6 אשדוד');
INSERT INTO db_g1.customer (customer_ID, email, phone_number, customer_name, password, address) VALUES (15, 'gggggg@gmail.com', '050-9878974', 'gggg', 'gggg', 'gggg');