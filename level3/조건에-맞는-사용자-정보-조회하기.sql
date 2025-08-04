-- 출처 : https://school.programmers.co.kr/learn/courses/30/lessons/164670?language=oracle

SELECT U.USER_ID
      , U.NICKNAME
      , U.CITY || ' ' || U.STREET_ADDRESS1 || ' ' || U.STREET_ADDRESS2 AS 전체주소
      , SUBSTR(TLNO, 1, 3) || '-' || SUBSTR(TLNO, 4, 4) || '-' || SUBSTR(TLNO, 8) AS 전화번호
FROM (
    SELECT WRITER_ID
    FROM USED_GOODS_BOARD
    GROUP BY WRITER_ID
    HAVING COUNT(*) > 2
) B, USED_GOODS_USER U 
WHERE U.USER_ID = B.WRITER_ID
ORDER BY U.USER_ID DESC