-- 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기 (GROUP BY part)
SELECT MONTH(H.START_DATE) AS MONTH, H.CAR_ID AS CAR_ID, COUNT(*) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS H
WHERE DATE_FORMAT(H.START_DATE, '%Y-%m') BETWEEN '2022-08' AND '2022-10'
AND H.CAR_ID IN (SELECT HH.CAR_ID
                 FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS HH
                 WHERE DATE_FORMAT(HH.START_DATE, '%Y-%m') BETWEEN '2022-08' AND '2022-10'
                 GROUP BY HH.CAR_ID
                 HAVING COUNT(*) >= 5
                )
GROUP BY 1, 2
HAVING COUNT(*) != 0
ORDER BY 1, 2 DESC;