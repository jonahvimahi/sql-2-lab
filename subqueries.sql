SELECT *
FROM invoice i
WHERE invoice_id IN(
SELECT invoice_id
  FROM invoice_line il
  WHERE il.unit_price > .99
);

SELECT *
FROM playlist_track pt
WHERE playlist_id IN(
SELECT playlist_id
  FROM playlist p
  WHERE p.name = 'Music'
);

