USE resturant_order_db;

-- 1. View the menu item table.
SELECT *
FROM menu_items;

-- 2. Find the number of items in the table.
SELECT COUNT(*)
FROM menu_items;

-- 3. What are the least and most expensive items in the menu.
SELECT MAX(price), MIN(price)
FROM menu_items;

SELECT *
FROM menu_items
ORDER BY price; -- DESC

-- 4. How are the italian dishes are in the menu?
SELECT COUNT(*)
FROM menu_items
WHERE category = 'Italian';

-- 5. What are least and most expensive italian dishes in the menu?
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price; -- DESC

-- 6. How many dishes are in each category?
SELECT category, COUNT(item_name) AS num_dishes
FROM menu_items
GROUP BY category;

-- 7. What is average dish price within each category?
SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category;