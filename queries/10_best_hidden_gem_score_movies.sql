SELECT
	title,
	hidden_gem_score,
	series_or_movie
FROM
	movies_netflix_kaggle
WHERE
	series_or_movie = 'Movie'
	AND hidden_gem_score IS NOT NULL
ORDER BY
	hidden_gem_score DESC
LIMIT 10;
