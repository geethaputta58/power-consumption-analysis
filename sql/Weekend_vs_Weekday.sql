SELECT
    Is_Weekend,
    ROUND(AVG(Consumption), 2) AS Avg_Consumption
FROM `power-consumption-analysis.electricity.power_consumption_clean`
GROUP BY Is_Weekend;
