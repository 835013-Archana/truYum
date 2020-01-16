<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>customer</title>
<link rel="icon" href="images\truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header> &nbsp;&nbsp truYum <img src="images\truyum-logo-light.png"> </header>
    <nav> <a href="ShowMenuItemListCustomer">Menu</a> <a id="cart" href="ShowCart">Cart</a> </nav>
    <h1>Menu Items</h1>
    <c:if test="${addCartStatus==true }">
        <h4 id="remove-cart">Item Added Into Cart Successfully</h4>
    </c:if>
    <table id="table2">
        <col width="190px" />
        <col width="90px" />
        <col width="90px" />
        <col width="130px" />
        <col width="60px" />

        <tr>
            <th align="left">Name</th>
            <th align="center">Free Delivery</th>
            <th align="right">Price</th>
            <th align="center">Category</th>
            <th align="center">Action</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${menuItem.getName()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="right"><f:formatNumber type="currency" currencySymbol="Rs. "
                        minFractionDigits="2" value="${menuItem.getPrice()}"></f:formatNumber></td>

                <td align="center">${menuItem.getCategory()}</td>


                <td align="center"><a href="AddToCart?menuItemId=${menuItem.getId()}">Add
                        to Cart</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer>Copyright &copy 2019 </footer>
</body>
</html>
