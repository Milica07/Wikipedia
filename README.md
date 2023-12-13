
### Wikipedia

This task is focused on how data size affects the amount of time queries take to run and how valuable tools like SQL can be to data analysts.

```
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
  		Title
ORDER BY
  		views DESC;
```

This query returns a table that displays the total number of times each Wikipedia page with “Google” in the title has been viewed in each language. This dataset is a sample consisting of 10 billion rows from the Wikipedia public dataset. 
The query processes over 415 gigabytes of data when run—for 15 seconds! 


If the query is run again, the runtime will be almost instant (as long as the default caching settings were not changed). This is because BigQuery caches the query results to avoid extra work if the query needs to be rerun.


This way of data size measurements can be implemented in projects to better understand what tool is best suited to each data analysis project.

[BigQuery](https://console.cloud.google.com/bigquery?sq=993565623922:e8071ec0f395428897d2b6afaa0f148b)
