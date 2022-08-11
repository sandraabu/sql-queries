/* selecting last 7 days. */
	SELECT name, event_date
	FROM Events, 
	(SELECT MAX(event_date) as max
	FROM Events) AS max
	WHERE DATEDIFF(max, event_date) <= 7 AND event_date <> max
	ORDER BY event_date DESC;