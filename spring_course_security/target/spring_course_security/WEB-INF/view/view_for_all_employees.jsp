<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 29.01.2022
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <h3>Information for all employees</h3>
    <br><br>
    <security:authorize access="hasRole('HR')">
    <input type = "button" value="Salary"
           onclick="window.location.href='hr_info'">
    Only for HR
    </security:authorize>
    <br><br>

    <security:authorize access="hasRole('MANAGER')">
    <input type = "button" value="Performance"
           onclick="window.location.href='manager_info'">
    Only for Manager
    </security:authorize>

</head>
<body>

</body>
</html>
