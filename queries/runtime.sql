-- The count of movies and series by runtime and which runtime brought in the most money
SELECT
	count(title),
	runtime, sum(translate(boxoffice, '$,', '')::integer) as boxoffice_in_dollars
FROM
	movies_and_series
GROUP BY
	runtime
