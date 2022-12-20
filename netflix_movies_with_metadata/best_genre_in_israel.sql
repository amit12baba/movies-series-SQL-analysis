SELECT
	count(country_availability) AS Israel,
	genre
FROM (
	SELECT
		unnest(string_to_array(genre, ', ')) genre,
		unnest(string_to_array(country_availability, ',')) country_availability
	FROM
		movies_netflix_kaggle) AS genre_by_country
WHERE
	country_availability = 'Israel'
	AND genre IS NOT NULL
GROUP BY
	genre,
	country_availability
ORDER BY
	israel DESC;
