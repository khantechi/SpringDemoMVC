<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title> Student Form </title>
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
    <h1 style="text-align:center;background-color:DodgerBlue;">Student Form </h1>
        <br><br>
<center>
<table>
<form:form action="processForm" modelAttribute="student">
  <tr>
    <th>Description</th>
    <th>Value</th>
  </tr>
  <tr><td>First Name :</td> <td><form:input path="firstName" /></td></tr>
    <tr><td>Last Name :</td> <td><form:input path="lastName" /></td></tr>
    <tr><td>Country : </td><td><form:select path="country"> <form:options items="${student.countryOptions}" /></form:select></td></tr>
    <tr><td>Favorite Language:</td><td>Java<form:radiobutton path="favoriteLanguage" value="Java"/>
                                       C#<form:radiobutton path="favoriteLanguage" value="C#"/>
                                       PHP<form:radiobutton path="favoriteLanguage" value="PHP"/>
                                       Ruby<form:radiobutton path="favoriteLanguage" value="Ruby"/></td></tr>

    <tr><td>Operating System:</td><td>Linux <form:checkbox path="operatingSystem" value="Linux" />
                                      Windows <form:checkbox path="operatingSystem" value="Windows" />
                                      Mac <form:checkbox path="operatingSystem" value="Mac" /></td></tr>
  <tr><td><input type="submit" value="submit"/></form:form></td></tr>
</table>
</center>
</body>
</html>