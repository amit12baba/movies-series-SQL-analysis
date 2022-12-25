-- best 10 hidden gem score in movies
SELECT
	title,
	hidden_gem_score,
	series_or_movie
FROM
	movies_and_series
WHERE
	series_or_movie = 'Movie'
	AND hidden_gem_score IS NOT NULL
ORDER BY
	hidden_gem_score DESC
LIMIT 10;
