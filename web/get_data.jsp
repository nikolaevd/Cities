<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Get Data</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <form action="FirstQueryHandler" method="POST">
                <p><b>Вывести информацию о жителях заданного города,
                        говорящих на заданном языке:</b></p>
                <input type="text" placeholder="Город" name="city"/>
                <input type="text" placeholder="язык" name="language"/>
                <input type="submit" value="Запрос"/>
            </form>
            <form action="SecondQueryHandler" method="POST">
                <p><b>Вывести информайию обо всех городах, в которых проживают
                        жители заданной национальности:</b></p>
                <input type="text" placeholder="национальность" name="nationality"/>
                <input type="submit" value="Запрос"/>
            </form>
            <form action="ThirdQueryHandler" method="POST">
                <p><b>Вывести информацию о городах с количеством наеления 
                        не менее заданного:</b></p>
                <input type="text" placeholder="количество населения" name="population"/>
                <input type="submit" value="Запрос"/>
            </form>
            <form action="FourthQueryHandler" method="POST">
                <p><b>Вывести информацию о самой древней народности,
                        проживающей на территории заданного города:</b></p>
                <input type="text" placeholder="Город" name="city"/>
                <input type="submit" value="Запрос"/>
            </form>
        </div>
    </body>
</html>

