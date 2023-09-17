<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@include file="DBCON.jsp"%>
<%--<%@include file="ViewCustomer.jsp"%>--%>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .container {
            width: 100%;
            margin: 0 auto;
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .error {
            color: red;
            font-weight: bold;
        }

        .center-button {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>

<body>
<%
try {
    
     String customerprofilequery="select * from signup where accno='"+session.getAttribute("login_id")+"'";
     Statement smt=con.createStatement();
          
          ResultSet rs1= smt.executeQuery(customerprofilequery);
          
           
    if (!rs1.next()) {
        %>
        <p class="error">No student data found.</p>
        <%
    } else {
        %>
        < <div class="container">
            <table>
                <tr>
                    <th>Student ID</th>
                    <th>Student Name</th>
                    <th>City</th>
                    <th>Grade</th>
                    <th>Password</th>
                    <th>Role</th>
                   
                    
                </tr>
                <%
                do {
                    %>
                    <tr>
                        <td><%= rs1.getInt(1) %></td>
                        <td><%= rs1.getString(2) %></td>
                        <td><%= rs1.getString(3) %></td>
                        <td><%= rs1.getInt(4) %></td>
                        <td><%= rs1.getInt(5) %></td>
                        <td><%= rs1.getString(6) %></td>
                      
                       
                    </tr>
                    <%
                } while (rs1.next());
                %>
            </table>
        </div>
        <%
    }
    
} catch (Exception e) {
    %>
    <p class="error">Data not found: <%= e.getMessage() %></p>
    <%
}
%>

</body>
</html>
