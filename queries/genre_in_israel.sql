-- What is the most popular genre in Israel?
SELECT
	count(country_availability) AS Israel,
	genre
FROM (
	SELECT
		unnest(string_to_array(genre, ', ')) genre,
		unnest(string_to_array(country_availability, ',')) country_availability
	FROM
		movies_and_series) AS genre_by_country
WHERE
	country_availability = 'Israel'
	AND genre IS NOT NULL
GROUP BY
	genre,
	country_availability
ORDER BY
	israel DESC;
