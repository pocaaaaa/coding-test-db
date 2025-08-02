-- 출처 : https://school.programmers.co.kr/learn/courses/30/lessons/164672?language=oracle

SELECT BOARD_ID
      , WRITER_ID
      , TITLE
      , PRICE
      , DECODE(STATUS, 'SALE', '판매중', 'RESERVED', '예약중', 'DONE', '거래완료') STATUS
FROM USED_GOODS_BOARD
WHERE TO_CHAR(CREATED_DATE, 'YYYYMMDD') = '20221005'
order by BOARD_ID DESC