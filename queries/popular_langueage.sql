-- Most popular language in movies and series 
SELECT
	count(title) AS titles_count,
	unnest(string_to_array(languages, ', ')) AS movie_series_language
FROM
	movies_and_series
WHERE
	languages IS NOT NULL
GROUP BY
	movie_series_language
ORDER BY
	titles_count DESC;
