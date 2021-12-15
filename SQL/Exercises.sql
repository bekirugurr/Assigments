SELECT GenreId, AVG(Milliseconds) AS avg_dur_of_mediatypes
FROM tracks
GROUP BY GenreId
ORDER BY avg_dur_of_mediatypes DESC;