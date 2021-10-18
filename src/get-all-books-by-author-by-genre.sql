SELECT
    a.*,
    b.*,
    g.*,
    bg.*
FROM
    authors a
INNER JOIN books b
    on a.author_id = b.author_id
INNER JOIN books_genres bg
    on b.book_id = bg.book_id
INNER JOIN genres g
    on bg.genre_id = g.genre_id
WHERE
    a.author_name = 'Leo Tolstoy'
AND (g.genre_name = 'autobiography' 
    OR g.genre_name = 'history');
