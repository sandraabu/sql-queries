/* Grouping net_profit by year and quarter */
	SELECT YEAR(date) AS year, QUARTER(date) AS quarter, SUM(profit) - SUM(loss) AS net_profit
	FROM accounting 
	GROUP BY year, quarter;