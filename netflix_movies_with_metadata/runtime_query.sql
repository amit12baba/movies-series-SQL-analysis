SELECT
	count(title),
	runtime, sum(translate(boxoffice, '$,', '')::integer) as boxoffice_in_dollars
FROM
	movies_netflix_kaggle
GROUP BY
	runtime
