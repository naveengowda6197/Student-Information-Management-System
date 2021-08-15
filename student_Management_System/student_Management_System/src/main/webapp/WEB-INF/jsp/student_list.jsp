<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>Student Management System</title>
  
</head>

<body>
    <div style="margin-left:30%;padding-top:7%">
        <h1>Student Management System</h1>
        
        <br>
        <button style="background-color:DodgerBlue;margin-bottom:16px;">
        <a href="addStudent">Add New Student</a></button>
        <table style="border:1px solid black;">
            <thead>
                <tr>
                    <th style="border:2px solid black;">ID</th>
                    <th style="border:2px solid black;">First Name</th>
                    <th style="border:2px solid black;">Last Name</th>
                    <th style="border:2px solid black;">Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${studentList}" var="student">
                    <tr>
                        <td style="border:1px solid black;"><c:out value="${student.id}"/></td>
                        <td style="border:1px solid black;"><c:out value="${student.firstname}"/></td>
                        <td style="border:1px solid black;"><c:out value="${student.lastname}"/></td>
                        <td style="border:1px solid black;">
                             <button style="color:blue;"><a href="editStudent/${student.id}" class="btn btn-warning">Update</a></button>
                             <button style="color:blue;"><a href="deleteStudent/${student.id}" class="btn btn-danger">Delete</a></button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>