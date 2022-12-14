-- Which are the 15 TV series that have received the most awards?
SELECT
	title,
	sum(awards_received) as awards_received,
	series_or_movie
FROM
	movies_and_series
WHERE
	series_or_movie = 'Series'
	AND awards_received IS NOT NULL
GROUP BY
	title,
	awards_received,
	series_or_movie
ORDER BY
	awards_received DESC
LIMIT 15;
