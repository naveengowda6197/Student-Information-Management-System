<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Add New Student</title>
    
</head>
<body>
    <div  style="margin-left:30%;padding-top:7%">
    <h1>Student Management System</h1>
    <br>
      <button style="background-color:DodgerBlue;height:35px;width:44%;"><a href="list" class="btn btn-danger">Home</a></button>
    <h2>Please Enter details to Add Student</h2>

        <form:form action="addStudent" method="post" modelAttribute="studentForm">
            <input type="text" name="firstname" placeholder="Enter First Name" style="height:35px;width:44%;" required="true">
            <br>
            <input type="text" name="lastname" placeholder="Enter First Name" style="height:35px;width:44%;margin-top:18px;" required>
            <br>
            <button type="submit" style="height:35px;width:44%;margin-top:18px;">Save Student</button>
        </form:form>
    </div>
</body>
</html>