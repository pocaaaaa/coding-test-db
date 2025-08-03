-- 출처 : https://school.programmers.co.kr/learn/courses/30/lessons/164671?language=oracle

SELECT '/home/grep/src/' || F.BOARD_ID || '/' || F.FILE_ID || F.FILE_NAME || F.FILE_EXT as FILE_PATH
FROM (
    SELECT BOARD_ID, ROW_NUMBER() OVER(ORDER BY VIEWS DESC) RN
    FROM USED_GOODS_BOARD
) X, USED_GOODS_FILE F
WHERE X.RN = 1
AND F.BOARD_ID = X.BOARD_ID
ORDER BY F.FILE_ID DESC