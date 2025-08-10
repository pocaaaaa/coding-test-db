-- 출처 : https://school.programmers.co.kr/learn/courses/30/lessons/131123?language=oracle

SELECT R.FOOD_TYPE
      , R.REST_ID
      , REST_NAME
      , R.FAVORITES
FROM (
    SELECT REST_ID
          , REST_NAME
          , FOOD_TYPE
          , FAVORITES
          , ROW_NUMBER() OVER(PARTITION BY FOOD_TYPE ORDER BY FAVORITES DESC) RN 
    FROM REST_INFO
) R 
WHERE R.RN = 1 
ORDER BY R.FOOD_TYPE DESC