
SELECT last_name, first_name, title, hire_date FROM employee
order by hire_date ASC
LIMIT 1;

-QUESTION TWO-

SELECT BILLING_COUNTRY, COUNT(INVOICE_ID) AS FACTURAS FROM INVOICE
GROUP BY BILLING_COUNTRY 
ORDER BY FACTURAS DESC
LIMIT 5;

-QUESTION THREE-

SELECT TOTAL, INVOICE_ID, INVOICE_DATE FROM INVOICE
ORDER BY TOTAL DESC
LIMIT 3;

-QUESTION FOUR-

SELECT BILLING_CITY, SUM(TOTAL) AS TOTAL_PER_CITY FROM INVOICE
GROUP BY BILLING_CITY
ORDER BY TOTAL_PER_CITY DESC;

-QUESTION FIVE-

SELECT C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, SUM(INVOICE.TOTAL) AS TOTAL_PER_CLIENTE
FROM CUSTOMER C
JOIN INVOICE 
ON C.CUSTOMER_ID = INVOICE.CUSTOMER_ID
GROUP BY C.CUSTOMER_ID
ORDER BY TOTAL_PER_CLIENTE DESC
LIMIT 1;

-QUESTION ONE PART TWO-

SELECT DISTINCT EMAIL, FIRST_NAME, LAST_NAME, GENRE.NAME FROM CUSTOMER
JOIN INVOICE ON 
CUSTOMER.CUSTOMER_ID = INVOICE.CUSTOMER_ID
JOIN INVOICE_LINE ON 
INVOICE.INVOICE_ID = INVOICE_LINE.INVOICE_ID
JOIN TRACK ON 
INVOICE_LINE.TRACK_ID = TRACK.TRACK_ID
JOIN GENRE ON 
TRACK.GENRE_ID = GENRE.GENRE_ID
WHERE GENRE.NAME = 'Rock'
ORDER BY EMAIL ASC;

-QUESTION TWO PART TWO-

SELECT ARTIST.NAME, COUNT(ARTIST.ARTIST_ID) TOTAL_TRACKS FROM ARTIST
JOIN ALBUM ON 
ARTIST.ARTIST_ID = ALBUM.ARTIST_ID
JOIN TRACK ON
ALBUM.ALBUM_ID = TRACK.ALBUM_ID
JOIN GENRE ON 
TRACK.GENRE_ID = GENRE.GENRE_ID
WHERE GENRE.NAME = 'Rock'
GROUP BY ARTIST.NAME
ORDER BY TOTAL_TRACKS DESC
LIMIT 10;

-QUESTION TWO PART TWO-
 
SELECT NAME, MILLISECONDS FROM TRACK
WHERE MILLISECONDS > (SELECT AVG(MILLISECONDS) FROM TRACK)
ORDER BY MILLISECONDS DESC;













