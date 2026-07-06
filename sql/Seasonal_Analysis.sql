SELECT
    Season,
    ROUND(AVG(Consumption), 2) AS Avg_Consumption
FROM `power-consumption-analysis.electricity.power_consumption_clean`
GROUP BY Season
ORDER BY Avg_Consumption DESC;
