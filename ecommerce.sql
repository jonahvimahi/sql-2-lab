CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    email VARCHAR(50)
);

CREATE TABLE products(
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    price NUMERIC(8, 2)
);

CREATE TABLE cart(
    cart_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),
    product_id INT NOT NULL REFERENCES products(product_id),
    quantity NUMERIC(5)
);

INSERT INTO users(name,email)
VALUES ('jonah', 'jonah@gmail.com'), ('jake', 'jake@gmail.com'), ('zach', 'zach@gmail.com')

INSERT INTO products(price, name)
VALUES(14.50, 'chicken'), (.99, 'chocolate'), (3.99, 'milk'), (4.50, 'soda'), (9.99, 'toy');

INSERT INTO cart(user_id, product_id, quantity)
VALUES (1,1,3), (1,3,1), (2,3,3), (2,5,6), (3,3,1), (3,4,1)

SELECT * 
FROM cart c
JOIN users u
ON u.user_id = c.user_id
WHERE u.user_id = 1;

SELECT * 
FROM cart c
JOIN users u
ON c.user_id = u.user_id;

SELECT SUM(quantity * price)
FROM products p
JOIN cart c ON p.product_id = c.product_id
JOIN users u ON c.user_id = u.user_id
WHERE u.user_id = 1;

UPDATE cart
SET quantity = 50
WHERE user_id = 2
