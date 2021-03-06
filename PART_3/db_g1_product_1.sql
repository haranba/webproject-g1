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

INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (1, 'חלה קלאסית', 'חלה עם שומשום. פשטות זה שם המשחק', 18, 'klasit.jpeg', 1, 1);
INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (2, 'חלה מקומחת', 'חלה ללא תוספות, במעטה קמח', 18, 'kemah.jpeg', 1, 1);
INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (3, 'חלה לאמיצים', 'חלה עם תמרים, שבבי סוכר, ושקדים פרוסים. לאמיצים בלבד!', 20, 'amitzim.jpeg', 1, 1);
INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (4, 'חלה הצגה', 'חלה עם עגבניות צלויות ורוזמרין', 19, 'hatzaga.jpeg', 1, 0);
INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (5, 'זר פסטל', 'גיבסניות וליזיאנטוס בצבעים בהירים', 22, 'pastel.jpeg', 2, 0);
INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (6, 'זר צבעוני', 'לימניום וגרברות בצבעים נועזים', 24, 'tzivoni.jpg', 2, 0);
INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (7, 'גרנולה', 'גרנולה משיבולת שועל וגרעינים', 12, 'granola.jpeg', 3, 0);
INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (8, 'אגרטל קרמיקה', 'אגרטל מושלם לזר פרחים', 45, 'vaza.jpg', 3, 0);
INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (9, 'זר בוהו', 'זר בגוונים חמים. כי בוהו זה הכי שיק', 25, 'boho.jpeg', 2, 1);
INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (10, 'צלוחית קרמיקה', 'צלוחית בקוטר 20 ס"מ. מושלמת לקערת מוזלי', 35, 'boll.jpeg', 3, 0);
INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (11, 'חלה מתוקה', 'חלה עם בצל מקורמל, שבבי פקאן מסוכרים ועלי זוטה', 22, 'metuka.jpg', 1, 0);
INSERT INTO db_g1.product (product_ID, product_name, description, price, image_URL, category_ID, best_seller) VALUES (12, 'כיסוי לחלות', 'כיסוי מהמם לחלות', 55, 'kisuy.jpg', 3, 0);