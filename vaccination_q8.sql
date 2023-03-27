UPDATE country_vaccination_stats AS v1
SET daily_vaccinations = (
  SELECT median_daily_vaccinations
  FROM (
    SELECT country, MEDIAN(daily_vaccinations) AS median_daily_vaccinations
    FROM country_vaccination_stats
    WHERE daily_vaccinations IS NOT NULL
    GROUP BY country
  ) AS v2
  WHERE v1.country = v2.country
)
WHERE daily_vaccinations IS NULL;