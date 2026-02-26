-- ================================================================================================
-- Checagem de Arquivos

SELECT 'orders'    AS tabela, COUNT(*) AS total FROM orders    UNION ALL
SELECT 'customers' AS tabela, COUNT(*) AS total FROM customers UNION ALL
SELECT 'items'     AS tabela, COUNT(*) AS total FROM items     UNION ALL
SELECT 'products'  AS tabela, COUNT(*) AS total FROM products  UNION ALL
SELECT 'reviews'   AS tabela, COUNT(*) AS total FROM reviews


-- ================================================================================================
-- ANÁLISE 1: Volume de pedidos por mês

SELECT 
    FORMAT(order_purchase_timestamp, 'yyyy-MM') AS mes,
    COUNT(*) AS total_pedidos
FROM orders
WHERE order_status = 'delivered'
    AND order_delivered_customer_date IS NOT NULL
GROUP BY FORMAT(order_purchase_timestamp, 'yyyy-MM')    
ORDER BY mes

-- ================================================================================================
-- ANÁLISE 2: Top 10 estados por volume de pedidos

SELECT TOP 10
    c.customer_state AS estado,
    COUNT(*) AS total_pedidos
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
    AND o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY total_pedidos DESC

-- ================================================================================================
-- ANÁLISE 3: Top 10 categorias por volume de vendas

SELECT TOP 10
    p.product_category_name AS categoria,
    COUNT(*) AS total_vendas
FROM items i
JOIN products p ON i.product_id = p.product_id
WHERE p.product_category_name IS NOT NULL
GROUP BY p.product_category_name
ORDER BY total_vendas DESC

-- ================================================================================================
-- ANÁLISE 4: Nota média por atraso na entrega

SELECT 
    CASE 
        WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date 
        THEN 'Com atraso'
        ELSE 'No prazo'
    END AS situacao,
    COUNT(*) AS total_pedidos,
    ROUND(AVG(CAST(r.review_score AS FLOAT)), 2) AS nota_media
FROM orders o
JOIN reviews r ON o.order_id = r.order_id
WHERE o.order_status = 'delivered'
    AND o.order_delivered_customer_date IS NOT NULL
GROUP BY 
    CASE 
        WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date 
        THEN 'Com atraso'
        ELSE 'No prazo'
    END
ORDER BY nota_media DESC

-- ================================================================================================
-- ANÁLISE 5: Tempo médio de entrega por estado

SELECT 
    c.customer_state AS estado,
    ROUND(AVG(DATEDIFF(day, o.order_purchase_timestamp, o.order_delivered_customer_date)), 1) AS dias_media
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
    AND o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY dias_media ASC