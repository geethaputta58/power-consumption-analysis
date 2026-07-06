WITH rolling AS (
    SELECT
        Dates,
        State,
        Consumption,
        AVG(Consumption) OVER (
            PARTITION BY State
            ORDER BY Dates
            ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
        ) AS Rolling_Average
    FROM `power-consumption-analysis.electricity.power_consumption_clean`
)

SELECT
    Dates,
    State,
    Consumption,
    Rolling_Average,
    ROUND(
        ABS(Consumption - Rolling_Average) / Rolling_Average * 100,
        2
    ) AS Deviation_Percentage
FROM rolling
WHERE Rolling_Average IS NOT NULL
  AND Rolling_Average != 0
  AND ABS(Consumption - Rolling_Average) / Rolling_Average > 0.20
ORDER BY Dates, State;  
