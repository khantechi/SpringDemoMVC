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
    The Customer is confirmed : ${customer.firstName} ${customer.lastName} ${customer.freePasses} ${customer.postalCode} ${customer.courseCode}
</body>
</html>