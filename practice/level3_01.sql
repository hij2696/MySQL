-- 오랜 기간 보호한 동물(2) (String, Date part)
SELECT I.ANIMAL_ID, I.NAME
FROM ANIMAL_INS AS I RIGHT JOIN ANIMAL_OUTS AS O
  ON I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY DATEDIFF(O.DATETIME, I.DATETIME) DESC
LIMIT 2;