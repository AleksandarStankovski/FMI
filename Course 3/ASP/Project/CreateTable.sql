CREATE TABLE shop_info
(
shop_id varchar(255) NOT NULL PRIMARY KEY,
shop_name varchar(255),
country varchar(255),
city varchar(255),
address varchar(255),
phone varchar(255),
email varchar(255),
site varchar(255)
);

CREATE TABLE supplement
(
supplement_id int PRIMARY KEY,
available_in_shop varchar(255) NOT NULL REFERENCES shop_info(shop_id),
type varchar(255),
purpose varchar(255),
supplement_brand varchar(255),
supplement_name varchar(255),
supplement_price decimal(10,2),
currency varchar(255),
supplement_rating int,
taste varchar(255),
packing decimal(10,3),
measurement_unit varchar(255),
servings int
);

CREATE TABLE boxing_gloves
(
boxing_gloves_id int PRIMARY KEY,
available_in_shop varchar(255) NOT NULL REFERENCES shop_info(shop_id),
boxing_gloves_model varchar(255),
boxing_gloves_price decimal(10,2),
currency varchar(255),
boxing_gloves_size varchar(255),
boxing_gloves_rating int,
boxing_gloves_material varchar(255),
origin varchar(255)
);

CREATE TABLE sport_shoes
(
sport_shoes_id int PRIMARY KEY,
available_in_shop varchar(255) NOT NULL REFERENCES shop_info(shop_id),
shoes_model varchar(255),
shoes_price decimal(10,2),
currency varchar(255),
shoes_size int,
shoes_color varchar(255),
shoes_brand varchar(255)
);