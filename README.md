# Cities
В БД хранится информация о городах и их жителях.<br/>

<b>Для городов:</b><br/>
• Название.<br/>
• Год основания.<br/>
• Площадь.<br/>
• Количество населения для каждого типа жителей.<br/>

<b>Для типов жителей:</b><br/>
• Город проживания.<br/>
• Название.<br/>
• Язык общения.<br/>

<b>Реализовано:</b><br/>
• Организация соединения с базой данных в отдельном классе, метод которого возвращает соединение.<br/>
• Создна БД с необходимыми таблицами.<br/>
• Создан класс для выполнения запросов на извлечение информации из БД с использованием компилированных запросов.<br/>
• Создан класс на добавление информации.<br/>
• Создана JSP-страница с полями для формирования запроса.<br/>
• Результаты выполнения запроса передаются клиенту в виде JSP-страницы.<br/>

<b>Запросы к БД:</b><br/>
• Выводят информацию обо всех жителях заданного города, разговаривающих на заданном языке.<br/>
• Выводят информацию обо всех городах, в которых проживают жители выбранной национальности.<br/>
• Выводят информацию о городе с заданным количеством населения и всех национальностях, в нем проживающих.<br/>
• Выводят информацию о самом древнем типе жителей.<br/>
