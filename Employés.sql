select distinct C.Email, C.FirstName, C.LastName, G.Name
from Invoice I
INNER JOIN Customer C ON C.CustomerId= I.CustomerId
INNER JOIN InvoiceLine L ON I.InvoiceId = L.InvoiceId
INNER JOIN Track T ON L.TrackId = T.TrackId
INNER JOIN Genre G ON T.GenreId = G.GenreId
WHERE G.Name = 'Rock'
----------
select Top 10 A.ArtistId, A.Name, G.Name, count (T.TrackId) as TOTALTrackCount
from Artist A
INNER JOIN Album Al ON A.ArtistId = Al.ArtistId
INNER JOIN Track T ON Al.AlbumId = T.AlbumId
INNER JOIN Genre G ON T.GenreId = G.GenreId
where G.Name = 'Rock'
GROUP BY A.ArtistId, A.Name , G.Name
order by TOTALTrackCount Desc;


-----------
select Name, Milliseconds 
from Track T
WHERE T.Milliseconds > (SELECT AVG(Milliseconds) FROM Track)



SELECT Name
FROM Track
WHERE Milliseconds > (SELECT AVG(Milliseconds) FROM Track);