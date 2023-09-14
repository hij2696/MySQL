-- 성분으로 구분한 아이스크림 총 주문량 (GROUP BY part)
SELECT B.INGREDIENT_TYPE AS INGREDIENT_TYPE, SUM(A.TOTAL_ORDER) AS TOTAL_ORDER
FROM FIRST_HALF AS A INNER JOIN ICECREAM_INFO AS B
ON A.FLAVOR = B.FLAVOR
GROUP BY B.INGREDIENT_TYPE
ORDER BY 2;