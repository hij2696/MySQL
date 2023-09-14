-- 가격이 제일 비싼 식품의 정보 출력하기 (SUM, MAX, MIN part)
-- 1. subquery 사용
SELECT *
FROM FOOD_PRODUCT
WHERE PRICE = (
    SELECT MAX(PRICE) FROM FOOD_PRODUCT);

-- 2. limit 사용
-- SELECT *
-- FROM FOOD_PRODUCT
-- ORDER BY PRICE DESC
-- LIMIT 1;