<!DOCTYPE html>
<html>

<head>
    <title>Student Management System - Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #0074cc;
            color: #fff;
            padding: 20px;
            margin: 0;
        }

        h2 {
            margin: 10px 0;
        }

        .menu-table {
            width: 50%;
            border-collapse: collapse;
        }

        .menu-table td {
            padding: 10px;
            text-align: center;
        }

        .menu-table a {
            text-decoration: none;
            color: #0074cc;
            display: block;
            padding: 10px 20px;
            border: 1px solid #0074cc;
            margin: 5px;
            border-radius: 5px;
            background-color: #fff;
            transition: background-color 0.3s, color 0.3s;
        }

        .menu-table a:hover {
            background-color: #0074cc;
            color: #fff;
        }
    </style>
</head>

<body>
    <h1 align="center">Welcome  <%=session.getAttribute("Name")%> - Student Management System</h1>
    <h2 align="center">Last Login Time: <%=session.getAttribute("login_time")%></h2>
    <table align="center" class="menu-table">
        <tr>
            <td>
                <a href="SignupPage.jsp">New Student Account</a>
                <a href="ViewStudent.jsp">View Student</a>
                <a href="DeleteStudent.jsp">Delete Student</a>
                <a href="UpdateStudent$.jsp">Update Student Information</a>

            </td>

        </tr>
    </table>
</body>

</html>
