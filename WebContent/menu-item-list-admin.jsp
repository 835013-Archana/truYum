<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin</title>
<link rel="icon" href="images\truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header> &nbsp;&nbsp truYum <img src="images\truyum-logo-light.png"> </header>
    <nav> <a href="ShowMenuItemListAdmin">Menu</a> </nav>
    <h1>Menu Items</h1>
    <table id="table">
        <col width="400px" />
        <col width="160px" />
        <col width="180px" />
        <col width="170px" />
        <col width="170px" />
        <col width="200px" />
        <tr>
            <th align="left">Name</th>
            <th align="right">Price</th>
            <th align="center">Active</th>
            <th align="center">Date of Launch</th>
            <th align="center">Category</th>
            <th align="center">Free Delivery</th>
            <th align="center">Action</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${menuItem.getName()}</td>
                <td align="right"><f:formatNumber type="currency" currencySymbol="Rs. "
                        minFractionDigits="2" value="${menuItem.getPrice()}"></f:formatNumber></td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td align="center"><f:formatDate value="${menuItem.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy"></f:formatDate></td>
                <td align="center">${menuItem.getCategory()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td align="center"><a href="ShowEditMenuItem?menuItemId=${menuItem.getId()}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>

    <footer>Copyright &copy 2019 </footer>
</body>
</html>
