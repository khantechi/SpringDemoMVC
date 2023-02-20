<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title> Customer Registration Form </title>
    <style>
        .error {color:red}
        table, th, td {
              border: 1px solid black;
            }
            th, td {
              padding: 10px;
            }
    </style>
</head>
    <body>
    <h1 style="text-align:center;background-color:DodgerBlue;">Customer Registration Form</h1>
        <br><br>

<center>
<table>
<form:form action="processForm" modelAttribute="customer">
  <tr>
    <th>Description</th>
    <th>Value</th>
  </tr>
  <tr><i>Fill out the form. Asterisk  (*) means required.</i></tr>
  <tr><td>First Name :</td> <td><form:input path="firstName" /></td></tr>
    <tr><td>Last Name (*) :</td><td><form:input path="lastName" /><form:errors path="lastName" cssClass="error" /></td></tr>
    <tr><td>Free Passes : </td><td><form:input path="freePasses" /><form:errors path="freePasses" cssClass="error" /></td></tr>
    <tr><td>PostalCode : </td><td><form:input path="postalCode" /><form:errors path="postalCode" cssClass="error" /></td></tr>
    <tr><td>CourseCode : </td><td><form:input path="courseCode" /><form:errors path="courseCode" cssClass="error" /></td></tr>
    <tr><td><input type="submit" value="submit"/></td><td><input type="reset" value="reset"/>
        <form><input type="button" value="Go back!" onclick="history.back()"></form>
    </td></form:form></tr>
</table>
</center>
</body>
</html>