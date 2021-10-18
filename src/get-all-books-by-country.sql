SELECT 
  a.*,
  b.*
FROM
  authors a
INNER JOIN books b
  on a.author_id = b.author_id
WHERE
  a.nationality = 'China'
  OR
  a.nationality = 'Turkey';