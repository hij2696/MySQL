-- 동명 동물 수 찾기 (GROUP BY part)
SELECT NAME, COUNT(NAME) AS COUNT
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME
HAVING COUNT > 1
ORDER BY NAME;