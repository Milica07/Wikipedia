/* This query returns a table that displays the total number of times each 
Wikipedia page with “Google” in the title has been viewed in each language. */
SELECT
  language,
  title,
  SUM(views) AS views
FROM
  `bigquery-samples.wikipedia_benchmark.Wiki10B`
WHERE
  title LIKE '%Google%'
GROUP BY
  language,
  title
ORDER BY
  views DESC;