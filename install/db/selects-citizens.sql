----------------------------------------------------
-- все национальности, разговаривающие на украинском и армянском языках
----------------------------------------------------

SELECT n.nationality
FROM nationality n
	JOIN national_languages nl ON n.id = nl.nationality_id
	JOIN languages l ON l.id = nl.language_id
	WHERE l.language = 'украинский' OR l.language = 'армянский'