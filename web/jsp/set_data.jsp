<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Populate Info</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <form action="123" method="GET">
                <p><b>Добавить город:</b></p>
                <input type="text" placeholder="id" name="id"/>
                <input type="text" placeholder="Город" name="city"/>
				<input type="text" placeholder="год основания" name="year"/>
				<input type="text" placeholder="площадь, кв.м." name="area"/>
                <input type="submit" value="Добавить"/>
            </form>
            <form action="234" method="GET">
                <p><b>Добавить национальность:</b></p>
                <input type="text" placeholder="id" name="id"/>
				<input type="text" placeholder="национальность" name="nationality"/>
				<input type="text" placeholder="век образования" name="incipience"/>
                <input type="submit" value="Добавить"/>
            </form>
            <form>
                <p><b>Установить связь "национальность - город проживания":</b></p>
                <input type="text" placeholder="id националности" name="nationality_id"/>
				<input type="text" placeholder="id города" name="city_id"/>
				<input type="text" placeholder="количество населения" name="population"/>
                <input type="submit" value="Добавить"/>
            </form>
            <form>
                <p><b>Добавить язык:</b></p>
                <input type="text" placeholder="id" name="id"/>
				<input type="text" placeholder="язык" name="language"/>
                <input type="submit" value="Добавить"/>
            </form>
			<form>
                <p><b>Установить связь "национальность - язык":</b></p>
                <input type="text" placeholder="id националности" name="nationality_id"/>
				<input type="text" placeholder="id языка" name="language_id"/>
                <input type="submit" value="Добавить"/>
            </form>
        </div>
    </body>
</html>
