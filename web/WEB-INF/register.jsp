<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <body>
        <header>
            <h1>Shopping List</h1>
        </header>
        <main>
            <form method="post" action="ShoppingList">
                <label>Username:</label>
                <input type="text" name="username" value="">
                <input type="submit" value="Register name">
                <input type="hidden" name="action" value="register">
            </form>
        </main>
    </body>
</html>
