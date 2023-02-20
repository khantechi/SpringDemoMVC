<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title> Customer Registration Form </title>
    <style>
        .error {color:red}
    </style>
</head>
    <body>
    <i>Fill out the form. Asterisk  (*) means required.</i>
    <br><br>
    <form:form action="processForm" modelAttribute="customer">
    First Name : <form:input path="firstName" />
    Last Name (*) : <form:input path="lastName" />
                <form:errors path="lastName" cssClass="error" />
    Free Passes : <form:input path="freePasses" />
                <form:errors path="freePasses" cssClass="error" />
    <br><br>
     PostalCode : <form:input path="postalCode" />
                    <form:errors path="postalCode" cssClass="error" />
        <br><br>
        <br><br>
             CourseCode : <form:input path="courseCode" />
                            <form:errors path="courseCode" cssClass="error" />
                <br><br>
    <input type="submit" value="submit"/>
    </form:form>
</body>
</html>