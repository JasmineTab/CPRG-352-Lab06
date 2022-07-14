<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <header>
            <h1>Shopping List</h1>
            <p>Hello, ${username} <a href="ShoppingList?action=logout">Logout</a></p>
        </header>
        <main>
            <h2>List</h2>
            <form method="post" action="ShoppingList">
                <label>Add item:</label>
                <input type="text" name="item_name" value="">
                <input type="submit" value="Add">
                <input type="hidden" name="action" value="add">
            </form>
            <c:if test="${not empty itemColl}">
                <form method="post" action="ShoppingList">
                    <br>
                    <c:forEach var="itemColl" items="${itemColl}">
                        <input type="radio" name="itemSel" value="${itemColl}">${itemColl}
                        <br>
                    </c:forEach>
                    <input type="submit" value="Delete">
                    <input type="hidden" name="action" value="delete">
                </form>
            </c:if>
        </main>
    </body>
</html>
