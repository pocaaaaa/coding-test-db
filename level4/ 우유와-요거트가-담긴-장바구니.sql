-- 출처 : https://school.programmers.co.kr/learn/courses/30/lessons/62284?language=oracle

SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME in ('Milk', 'Yogurt')
GROUP BY CART_ID
HAVING COUNT(DISTINCT NAME) > 1
ORDER BY CART_ID;