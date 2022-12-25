-- Which are the directors that have directed more movies?
SELECT
	director,
	count(series_or_movie)
FROM
	movies_and_series
WHERE
	series_or_movie = 'Movie'
	AND director IS NOT NULL
GROUP BY
	director
ORDER BY
	count DESC
LIMIT 10;
