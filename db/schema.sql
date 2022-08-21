-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- CREATE TABLE
CREATE TABLE category (
    id INTEGER NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(30),

    PRIMARY KEY (id)
);

CREATE TABLE product (
    id INTEGER NOT NULL AUTO_INCREMENT,
    product_name VARCHAR (30) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INTEGER NOT NULL,
    category_id INTEGER,
    
    PRIMARY KEY (id),
    FOREIGN KEY (category_id)
    REFERENCES category (id)

    
);

CREATE TABLE tag (
    id INTEGER NOT NULL AUTO_INCREMENT,
    tag_name
    PRIMARY KEY (id)
):

CREATE TABLE productTag (
    id NOT NULL AUTO_INCREMENT,
    product_id,
    tag_id,
    PRIMARY KEY (id),
    FOREIGN KEY (product_id)
    REFERENCES product(id),
    FOREIGN KEY (tag_id)
    REFERENCES tag(id)
);

