-- 진료과별 총 예약 횟수 출력하기 (GROUP BY part)
SELECT MCDP_CD AS '진료과 코드', COUNT(APNT_YMD) AS '5월예약건수'
FROM APPOINTMENT
WHERE APNT_YMD LIKE ('2022-05%')
GROUP BY MCDP_CD
ORDER BY 2, 1;