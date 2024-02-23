-- Comments in SQL Start with dash-dash --

Products Querying
1. INSERT INTO products (name, price, can_be_returned) VALUES ('chair', '44.00' , 'false');
2. INSERT INTO products (name, price, can_be_returned) VALUES ('stool', '25.99' , 'true');
3. INSERT INTO products (name, price, can_be_returned) VALUES ('table', '124.00' , 'false');
4. SELECT * FROM products;
5. SELECT name FROM products;
6. SELECT name, price FROM products;
7. INSERT INTO products (name, price, can_be_returned) VALUES ('bed', '999.00' , 'false');
8. SELECT * FROM products WHERE can_be_returned = 'true';
9. SELECT * FROM products WHERE price < '44.00';
10. SELECT * FROM products WHERE price BETWEEN '22.50' AND '99.99';
11. UPDATE products SET price = price - 20;
12. DELETE FROM products WHERE price < 25;
13. UPDATE products SET price = price + 20;
14. UPDATE products SET can_be_returned = 'true';


Google Play Store Querying
1. SELECT app_name FROM analytics WHERE id = '1880';
2. SELECT id, app_name FROM analytics WHERE last_updated = 'August 01, 2018';
3. SELECT category, count(*)  FROM analytics GROUP BY category;
4. SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;
5. SELECT app_name, reviews, rating FROM analytics WHERE rating >= '4.8' ORDER BY reviews desc LIMIT 1;
6. SELECT category, AVG(rating) AS average_rating FROM analytics GROUP BY category ORDER BY average_rating desc;
7. SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;
8. SELECT app_name, rating FROM analytics WHERE min_installs < 50 AND rating > 0 ORDER BY rating desc;
9. SELECT app_name, rating, reviews FROM analytics WHERE rating > 3 AND reviews > 10000;
10. SELECT app_name, reviews, price FROM analytics WHERE price >='.10' AND price <= '1.00' ORDER BY reviews desc LIMIT 10;
11. SELECT app_name, last_updated FROM analytics ORDER BY last_updated asc LIMIT 1;
12. SELECT app_name, price FROM analytics ORDER BY price desc LIMIT 1;
13. SELECT SUM(reviews) FROM analytics;
14. SELECT category, count(*) AS count FROM analytics GROUP BY category;
15. SELECT app_name, reviews, min_installs, (min_installs / reviews) AS proportion FROM analytics ORDER BY proportion desc LIMIT 1;