-- 이름이 없는 동물의 아이디 (IS NULL part)
SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME IS NULL
ORDER BY 1;