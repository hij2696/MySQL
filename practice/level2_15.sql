-- 이름에 el이 들어가는 동물 찾기 (String, Date part)
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME LIKE '%EL%' AND ANIMAL_TYPE = 'Dog'
ORDER BY 2;