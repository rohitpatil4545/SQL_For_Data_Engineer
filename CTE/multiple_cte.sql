WITH Sales AS (
    SELECT customer_id, SUM(amount) AS total_sales
    FROM orders
    GROUP BY customer_id
),
TopCustomers AS (
    SELECT *
    FROM Sales
    WHERE total_sales > 10000
)
SELECT * FROM TopCustomers;