-- 출처 : https://school.programmers.co.kr/learn/courses/30/lessons/131113?language=oracle

SELECT ORDER_ID
      , PRODUCT_ID
      , NVL(TO_CHAR(OUT_DATE, 'YYYY-MM-DD'), '') OUT_DATE
      , CASE WHEN OUT_DATE IS NULL
            THEN '출고미정'
            WHEN OUT_DATE >= TO_DATE('20220502', 'YYYYMMDD')
            THEN '출고대기'
            ELSE '출고완료'
        END 출고여부
FROM FOOD_ORDER
ORDER BY ORDER_ID;