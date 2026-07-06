SELECT
    State,
    ROUND(SUM(Consumption), 2) AS Total_Consumption
FROM `power-consumption-analysis.electricity.power_consumption_clean`
GROUP BY State
ORDER BY Total_Consumption DESC;
