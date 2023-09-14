-- 루시와 엘라 찾기 (String, Date part)
-- 1. IN 사용
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY 1;

-- -- 2. REGEXP_LIKE 사용
-- SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
-- FROM ANIMAL_INS
-- WHERE REGEXP_LIKE (NAME, '^(Lucy|Ella|Pickle|Rogan|Sabrina|Mitty)$')
-- ORDER BY 1;