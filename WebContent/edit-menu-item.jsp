<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/script.js"></script>
<title>edit-menu-item</title>
<link rel="icon" href="images\truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <c:set var="menuItem" value="${menuItem}"></c:set>
    <header> &nbsp;&nbsp truYum <img src="images\truyum-logo-light.png"> </header>
    <nav> <a href="ShowMenuItemListAdmin">Menu</a> </nav>
    <h1>Edit Menu Item</h1>

    <form name="menuItemForm" action="EditMenuItem" method="post" autocomplete="off"
        onsubmit="return validateMenuItemForm()">

        <table>
            <input type="hidden" name="id" value="${menuItem.getId()}" />
            <tr>
                <td><label for="title"><b>Name</b></label></td>
            </tr>
            <tr>
                <td><input type="text" name="name" value="${menuItem.getName()}" id="name"
                    placeholder="Sandwich" size="143" /></td>
            </tr>
        </table>
        <table id="table1">
            <tr>
                <td><label for="price"><b>Price(Rs.)</b></label></td>
                <td><label for="inStock"><b>Active</b></label></td>
                <td></td>
                <td><label for="dateOfLaunch"><b>Date of Launch</b></label></td>
                <td></td>
                <td><label for="category"><b>Category</b></label></td>
            </tr>
            <tr>
                <td><input type="text" name="price" value="${menuItem.getPrice()}" id="price"
                    placeholder="97" /></td>
                <c:choose>
                    <c:when test="${menuItem.isActive()==true}">
                        <td><input type="radio" name="active" value="Yes" checked="checked">Yes
                            <input type="radio" name="active" value="No">No</td>
                    </c:when>
                    <c:otherwise>
                        <td><input type="radio" name="active" value="Yes">Yes <input
                            type="radio" name="active" value="No" checked="checked">No</td>
                    </c:otherwise>
                </c:choose>
                <td></td>
                <td><f:formatDate value="${menuItem.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                        var="dateOfLaunch" /> <input type="text" value="${dateOfLaunch}"
                    id="launch" name="dateOfLaunch" placeholder="27/04/2022" /></td>
                <td></td>
                <td><select id="category" name="category" value="${menuItem.getCategory()}"
                    placeholder="Main Course">

                        <option value="Main Course">Main Course</option>
                        <option value="Starters">Starters</option>
                        <option value="Main Course">Main Course</option>
                        <option value="Desserts">Desserts</option>
                        <option value="Drinks">Drinks</option>
                </select></td>
            </tr>
            <tr>
                <c:choose>
                    <c:when test="${menuItem.isFreeDelivery()==true}">
                        <td><input type="checkbox" name="freeDelivery" value="yes"
                            checked="checked">Free Delivery</td>
                    </c:when>
                    <c:otherwise>
                        <td><input type="checkbox" name="freeDelivery" value="No"
                            checked="checked">Free Delivery</td>
                    </c:otherwise>

                </c:choose>
                <label for="del" />

            </tr>
            <tr>
                <td><input type="submit" id="button" value="Save" /></td>
            </tr>
        </table>
    </form>
    <footer>Copyright &copy 2019 </footer>
</body>
</html>
