SELECT
    State,
    ROUND(AVG(Consumption), 2) AS Avg_Daily_Consumption
FROM `power-consumption-analysis.electricity.power_consumption_clean`
GROUP BY State
ORDER BY Avg_Daily_Consumption DESC;
