-- 헤비 유저가 소유한 장소 (2021 Dev-Matching: 웹 백엔드 개발자(상반기))
SELECT *
FROM PLACES
WHERE HOST_ID IN (
    SELECT HOST_ID
    FROM PLACES
    GROUP BY HOST_ID
    HAVING COUNT(*) >= 2
)
ORDER BY ID;