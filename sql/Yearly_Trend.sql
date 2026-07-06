SELECT
    Year,
    ROUND(AVG(`Total Consumption`), 2) AS Avg_Yearly_Consumption
FROM `power-consumption-analysis.electricity.power_consumption_clean`
GROUP BY Year
ORDER BY Year;
