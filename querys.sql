SELECT 
    DATE_TRUNC('month', order_date) AS month,
    
    SUM(CASE WHEN region = 'Norte' THEN total_sales ELSE 0 END) AS norte,
    SUM(CASE WHEN region = 'Centro' THEN total_sales ELSE 0 END) AS centro,
    SUM(CASE WHEN region = 'Sur' THEN total_sales ELSE 0 END) AS sur,
    
    SUM(total_sales) AS total

FROM sales
GROUP BY 1
ORDER BY 1;

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    
    SUM(CASE WHEN customer_id = 'C001' THEN total_sales ELSE 0 END) AS C001,
    SUM(CASE WHEN customer_id = 'C003' THEN total_sales ELSE 0 END) AS C003,
    SUM(CASE WHEN customer_id = 'C002' THEN total_sales ELSE 0 END) AS C002,
    
    SUM(total_sales) AS total

FROM sales 
GROUP BY 1
ORDER BY 1;

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    
    COUNT(CASE WHEN customer_id = 'C001' THEN total_sales ELSE 0 END) AS C001,
    SUM(CASE WHEN customer_id = 'C003' THEN total_sales ELSE 0 END) AS C003,
    SUM(CASE WHEN customer_id = 'C002' THEN total_sales ELSE 0 END) AS C002,
    
    SUM(total_sales) AS total

FROM sales 
GROUP BY 1
ORDER BY 1;

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    
    SUM(CASE WHEN product = 'Laptop' THEN total_sales ELSE 0 END) AS C001,
    SUM(CASE WHEN product = 'Silla' THEN total_sales ELSE 0 END) AS C003,
    SUM(CASE WHEN product = 'Monitor' THEN total_sales ELSE 0 END) AS C002,
    
    SUM(total_sales) AS total

FROM sales 
GROUP BY 1
ORDER BY 1;

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    
    COUNT(CASE WHEN product = 'Laptop' THEN total_sales ELSE 0 END) AS C001,
    SUM(CASE WHEN product = 'Silla' THEN total_sales ELSE 0 END) AS C003,
    SUM(CASE WHEN product = 'Monitor' THEN total_sales ELSE 0 END) AS C002,
    
    SUM(total_sales) AS total

FROM sales 
GROUP BY 1
ORDER BY 1;

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    AVG(total_sales) AS Prom_ventas
FROM sales

GROUP BY month

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    AVG(total_sales) AS Prom_ventas
FROM sales
WHERE product = 'Laptop'
GROUP BY month

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(total_sales) AS Prom_ventas
FROM sales
WHERE product = 'Laptop'
GROUP BY month

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    AVG(total_sales) AS Prom_ventas
FROM sales
WHERE product = 'Laptop'
GROUP BY month

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(total_sales) AS Prom_ventas
FROM sales
WHERE product = 'Laptop'
GROUP BY month

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(total_sales) AS Prom_ventas
FROM sales
WHERE product = 'Silla'
GROUP BY month

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(total_sales) AS Prom_ventas
FROM sales
WHERE product = 'Escritorio'
GROUP BY month

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(total_sales) AS Prom_ventas
FROM sales
WHERE product = 'Mouse'
GROUP BY month

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(total_sales) AS Prom_ventas
FROM sales
WHERE product = 'Teclado'
GROUP BY month

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(total_sales) AS Prom_ventas
FROM sales
WHERE product = 'Laptop'
GROUP BY month