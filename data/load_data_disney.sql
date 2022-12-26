CREATE TABLE disney_plus_movies_and_series(
   show_id      VARCHAR(5) NOT NULL PRIMARY KEY
  ,type         VARCHAR(7) NOT NULL
  ,title        VARCHAR(79) NOT NULL
  ,director     VARCHAR(51)
  ,actors         VARCHAR(112)
  ,country      VARCHAR(137)
  ,date_added   DATE 
  ,release_year INTEGER  NOT NULL
  ,rating       VARCHAR(8)
  ,duration     VARCHAR(10) NOT NULL
  ,listed_in    VARCHAR(49) NOT NULL
  ,description  VARCHAR(102) NOT NULL
);

COPY disney_plus_movies_and_series (show_id, type, title, director, actors, country, date_added, release_year, rating, duration, listed_in, description)
FROM '/tmp/data/disney_plus_titles.csv' CSV HEADER;
