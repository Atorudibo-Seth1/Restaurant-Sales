-- Total Revenue
SELECT 
	ROUND(SUM(revenue), 2) AS Revenue
FROM pizza_tables_joined;

 -- Total number of pizzas sold
SELECT
	SUM(quantity) AS 'Total Pizzas Sold'
FROM pizza_tables_joined;

-- Total number of orders
SELECT 
	COUNT(DISTINCT order_id) AS 'Order Count'
FROM pizza_tables_joined;

-- What are the busiest order days
SELECT 
	DAYNAME(date) AS day_of_week,
    COUNT(DISTINCT order_id) AS order_count,
    ROUND(SUM(revenue), 2) AS revenue
FROM pizza_tables_joined
GROUP BY day_of_week
ORDER BY order_count DESC;

-- What time of day do most orders occur?
SELECT
	HOUR(time) AS hour_of_day,
	COUNT(DISTINCT order_id) AS order_count
FROM pizza_tables_joined
GROUP BY hour_of_day;

-- How did sales trend by month?
SELECT
	MONTHNAME(date) AS Month,
    MONTH(date) AS Monthnum,
	ROUND(SUM(revenue), 2) AS revenue
FROM pizza_tables_joined
GROUP BY Month, Monthnum
ORDER BY Monthnum;

-- Which pizza types are the best-selling (by quantity and revenue)?
SELECT 
	name, 
    size,
    SUM(quantity) AS `Total Quantity`
FROM pizza_tables_joined
GROUP BY name, size
ORDER BY `Total Quantity` DESC
LIMIT 10;

SELECT 
	name, 
    size,
    ROUND(SUM(revenue), 2) AS Revenue
FROM pizza_tables_joined
GROUP BY name, size
ORDER BY Revenue DESC
LIMIT 10;

-- Which sizes are most popular overall and within each category?
WITH size_popularity AS
	(SELECT 
		category,
		size,
		SUM(quantity) AS total_quantity
	FROM pizza_tables_joined
	GROUP BY category, size),
ranked_size AS
	(SELECT 
		category,
		size,
		total_quantity, 
		RANK() OVER(PARTITION BY category ORDER BY total_quantity DESC) AS rank_in_category
	FROM size_popularity)

SELECT 
	*
FROM ranked_size
WHERE rank_in_category = 1;


-- Which categories (e.g., Classic, Veggie) are most frequently ordered?
SELECT 
	category,
    COUNT(DISTINCT order_id) AS order_count
FROM pizza_tables_joined
GROUP BY category
ORDER BY order_count DESC;

-- Which pizza generates the highest revenue?
SELECT 
	name,
    ROUND(SUM(revenue), 2) AS Revenue
FROM pizza_tables_joined
GROUP BY name
ORDER BY Revenue DESC
LIMIT 10;

-- Which size contributes the most to revenue?
SELECT 
	size,
    ROUND(SUM(revenue), 2) AS Revenue
FROM pizza_tables_joined
GROUP BY size
ORDER BY Revenue DESC;

-- Which category brings in the most money?
SELECT 
	category,
    ROUND(SUM(revenue), 2) AS Revenue
FROM pizza_tables_joined
GROUP BY category
ORDER BY Revenue DESC;

-- What is the average number of pizzas per order?
SELECT 
	CEILING(SUM(quantity) / COUNT(DISTINCT order_id)) AS avg_order_size
FROM pizza_tables_joined;

-- What is the average revenue per order?
SELECT 
	ROUND(SUM(revenue) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM pizza_tables_joined