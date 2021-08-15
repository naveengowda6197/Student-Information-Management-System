<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Student Info.</title>
</head>
<body>
<div  style="margin-left:30%;padding-top:7%">
    <h1>Student Management System</h1>
    <br>
     
    <h2>Update Student Details</h2>
    <form:form action="/student/addStudent" method="post" modelAttribute="studentForm">
        <input type="hidden" name="id" value="${studentForm.id}">
        <input type="text" name="firstname"  value="${studentForm.firstname}" required  style="height:35px;width:44%;">
        <br>
        <input type="text" name="lastname"  value="${studentForm.lastname}" required  style="height:35px;width:44%;margin-top:18px;">
        <br>
        <button type="submit"  style="height:35px;width:44%;margin-top:18px;">Save Student</button>
    </form:form>
</div>
</body>
</html>