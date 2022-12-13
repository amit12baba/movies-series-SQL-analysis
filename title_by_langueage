SELECT
	count(title) AS titles_count,
	unnest(string_to_array(languages, ', ')) AS movie_language
FROM
	movies_netflix_kaggle
WHERE
	languages IS NOT NULL
GROUP BY
	movie_language
ORDER BY
	titles_count DESC;
