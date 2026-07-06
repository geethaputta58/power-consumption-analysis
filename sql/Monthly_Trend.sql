SELECT
    Month,
    Month_Name,
    ROUND(AVG(Consumption), 2) AS Avg_Monthly_Consumption
FROM `power-consumption-analysis.electricity.power_consumption_clean`
GROUP BY Month, Month_Name
ORDER BY Month;
