--------------------------------------------------------------------------------------------
-- вывести информацию обо всех жителях заданного города, разговаривающие на заданном языке
--------------------------------------------------------------------------------------------

SELECT c.city, n.nationality, p.population, l.language
FROM nationality n
	JOIN population p ON n.id = p.nationality_id
	JOIN cities c ON c.id = p.city_id
	JOIN national_languages nl ON n.id = nl.nationality_id
	JOIN languages l ON l.id = nl.language_id
WHERE c.city = 'Москва' AND l.language = 'русский'
	
--------------------------------------------------------------------------------------------
-- вывести информацию обо всех городах, в которых проживают жители выбранной национальности
--------------------------------------------------------------------------------------------

SELECT c.city, c.year, c.area, n.nationality
FROM cities c
	JOIN population p ON c.id = p.city_id
	JOIN nationality n ON n.id = p.nationality_id
WHERE n.nationality = 'украинцы'
	
--------------------------------------------------------------------------------------------
-- вывести информацию о городе с заданным количеством населения и всех типах жителей
--------------------------------------------------------------------------------------------

SELECT c.city, c.year, c.area, n.nationality, p.population
FROM cities c
	JOIN population p ON c.id = p.city_id
	JOIN nationality n ON n.id = p.nationality_id
WHERE p.population > 100000

--------------------------------------------------------------------------------------------
-- вывести информацию о самой древней народности (национальности)
--------------------------------------------------------------------------------------------

SELECT n.nationality, n.incipience
FROM nationality n
WHERE n.incipience = (SELECT MIN(n.incipience) FROM nationality n)