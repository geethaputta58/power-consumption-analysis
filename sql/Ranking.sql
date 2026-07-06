SELECT
    State,
    ROUND(SUM(Consumption), 2) AS Total_Consumption,
    RANK() OVER (ORDER BY SUM(Consumption) DESC) AS State_Rank
FROM `power-consumption-analysis.electricity.power_consumption_clean`
GROUP BY State
ORDER BY State_Rank;
