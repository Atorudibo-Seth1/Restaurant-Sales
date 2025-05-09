CREATE TABLE pizza_tables_joined AS 
    (SELECT 
        o.order_id,
        o.date,
        o.time,
        od.order_details_id,
        od.pizza_id,
        od.quantity,
        p.pizza_type_id,
        p.size,
        p.price,
        pt.name,
        pt.category,
        pt.ingredients,
        (p.price * od.quantity) AS revenue
    FROM
        orders o
            JOIN
        order_details od ON o.order_id = od.order_id
            JOIN
        pizzas p ON od.pizza_id = p.pizza_id
            JOIN
        pizza_types pt ON p.pizza_type_id = pt.pizza_type_id)