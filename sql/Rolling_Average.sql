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
ORDER BY State, Dates;
