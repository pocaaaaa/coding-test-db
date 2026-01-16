-- 출처 : https://school.programmers.co.kr/learn/courses/30/lessons/164672?language=oracle

SELECT BOARD_ID
      , WRITER_ID
      , TITLE
      , PRICE
      , DECODE(STATUS, 'SALE', '판매중', 'RESERVED', '예약중', 'DONE', '거래완료') STATUS
FROM USED_GOODS_BOARD
WHERE TO_CHAR(CREATED_DATE, 'YYYYMMDD') = '20221005'
order by BOARD_ID DESC;

SELECT 
      BOARD_ID
      , WRITER_ID
      , TITLE
      , PRICE
      , CASE 
            WHEN STATUS = 'SALE' THEN '판매중'
            WHEN STATUS = 'RESERVED' THEN '예약중'
            WHEN STATUS = 'DONE' THEN '거래완료'
      END STATUS
FROM USED_GOODS_BOARD
WHERE CREATED_DATE >= TO_DATE('20221005', 'YYYYMMDD')
AND CREATED_DATE < TO_DATE('20221006', 'YYYYMMDD')
ORDER BY BOARD_ID DESC;