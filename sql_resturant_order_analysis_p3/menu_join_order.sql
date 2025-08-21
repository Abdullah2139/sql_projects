-- 1. Combine these both tables

SELECT * FROM menu_items;
SELECT * FROM order_details;

SELECT *
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.ï»¿menu_item_id;
    
-- 2. What were the least and most ordered items? What category were they in?
SELECT item_name, category, COUNT(ï»¿order_details_id) AS num_purchase
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.ï»¿menu_item_id
GROUP BY item_name, category
ORDER BY num_purchase DESC;

-- 3. What are the top 5 orders that spent the most money?
SELECT order_id, SUM(price) AS total_spent
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.ï»¿menu_item_id
GROUP BY order_id
ORDER BY total_spent DESC
LIMIT 5;

-- 4. View the detail of highest spend order?
SELECT category, COUNT(item_id) AS num_items
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.ï»¿menu_item_id
WHERE order_id = 440
GROUP BY category
ORDER BY num_items DESC;

-- 5. View the detail of top 5 highest spend orders?
SELECT order_id, category, COUNT(item_id) AS num_items
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.ï»¿menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id, category;