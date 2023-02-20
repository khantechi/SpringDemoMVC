<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title> Customer Confirmation </title>
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
    <h1 style="text-align:center;background-color:DodgerBlue;">Customer Confirmation Page</h1>
        <br><br>
    <center>The Customer is confirmed
    <table>
      <tr>
        <th>Description</th>
        <th>Value</th>
      </tr>
      <tr><td>First Name :</td> <td>${customer.firstName}</td></tr>
        <tr><td>Last Name  :</td><td>${customer.lastName}</td></tr>
        <tr><td>Free Passes : </td><td>${customer.freePasses}</td></tr>
        <tr><td>PostalCode : </td><td>${customer.postalCode}</td></tr>
        <tr><td>CourseCode : </td><td>${customer.courseCode}</td></tr>
    </table>
    <br/>
    <form><input type="button" value="Go back!" onclick="history.back()"></form>
    </center>
</body>
</html>