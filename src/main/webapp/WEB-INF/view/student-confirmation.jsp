<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title> Student Confirmation </title>
    <style>
    table, th, td {
      border: 1px solid black;
    }

    th, td {
      padding: 10px;
    }
    </style>
</head>
    <body>
<h1 style="text-align:center;background-color:DodgerBlue;">Student Confirmation Page</h1>
    <br><br>
<center>
<table>
  <tr>
    <th>Student Name</th>
    <th>Country </th>
    <th>Favorite Language </th>
    <th>Operating System </th>
  </tr>
  <tr>
    <td>${student.firstName} ${student.lastName}</td>
    <td>${student.country}</td>
    <td>${student.favoriteLanguage} </td>
    <td><c:forEach var="temp" items="${student.operatingSystem}" >${temp} </c:forEach></td>
  </tr>
</table>
</center>
</body>
</html>