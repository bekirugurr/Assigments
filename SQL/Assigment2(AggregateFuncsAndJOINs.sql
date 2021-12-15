/* Quetion-1: How many tracks does each album have? 
Your solution should include Album id and its number of tracks sorted from highest to lowest.*/

SELECT AlbumId, COUNT(AlbumId) AS mount_trck_alb
FROM tracks
GROUP BY AlbumId
ORDER BY mount_trck_alb DESC;

/* Question-2: Find the album title of the tracks. 
Your solution should include track name and its album title. */

SELECT 
tracks.Name,
albums.Title
FROM tracks LEFT JOIN albums
ON tracks.AlbumId = albums.AlbumId;

/* Question-3: Find the minimum duration of the track in each album. 
Your solution should include album id, album title and duration of the 
track sorted from highest to lowest. */

SELECT
albums.AlbumId,
albums.Title, 
MIN(tracks.Milliseconds) AS duration
FROM albums INNER JOIN tracks 
ON tracks.AlbumId = albums.AlbumId
GROUP BY albums.Title
ORDER BY duration DESC;

/* Question-4: Find the total duration of each album. 
Your solution should include album id, album title and 
its total duration sorted from highest to lowest. */

SELECT 
albums.AlbumId,
albums.Title,
SUM(tracks.Milliseconds) AS total_duration
FROM albums INNER JOIN tracks
ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.Title
ORDER BY total_duration DESC;

/* Question-5: Based on the previous question, find the albums whose total duration 
is higher than 70 minutes. Your solution should include album title and total duration. 420000*/
-- 70 dakika 420000 milisaniye yapıyor 


SELECT 
albums.Title, 
SUM(tracks.Milliseconds) AS duration 
FROM albums INNER JOIN tracks
ON albums.AlbumId = tracks.AlbumId
WHERE Milliseconds > 420000   --Burada duration>420000 yazdım çalışmadı. Böyle yazınca çalıştı
GROUP BY albums.Title
ORDER BY duration DESC;