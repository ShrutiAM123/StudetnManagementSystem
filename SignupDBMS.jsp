<%@include file="DBCON.jsp" %>
<html>

    <body>
           <%
           try
           {
               
               String sid =request.getParameter("sid");
               String sName =request.getParameter("sname");
               String sCity =request.getParameter("scity");
               String sGrade =request.getParameter("sgrade");
               String sPassword =request.getParameter("spassword");
//                   Integer sid = 1;
//               String sName = "Aditi";
//               String sCity ="Jabalpur";
//               Integer sGrade = 83;
//               Integer sPassword = 12345;
             
               
               
               
//               String getLastAccountQuery = "SELECT MAX(accno) FROM account";
//                Statement getLastAccountStmt = con.createStatement();
//                ResultSet rs = getLastAccountStmt.executeQuery(getLastAccountQuery);
//                
//                String lastAccountNumber = "C000"; 
//                int nextAccountNumber = 1;
//                
//                if (rs.next() && rs.getString(1) != null) {
//                    lastAccountNumber = rs.getString(1);
//                    
//                    nextAccountNumber = Integer.parseInt(lastAccountNumber.substring(1)) + 1;
//                }
                
               
//               String newAccountNumber = String.format("C%03d", nextAccountNumber);
               String accountinsertquery="insert into signup(sid,sName,sCity,sGrade,sPassword) value(?,?,?,?,?);";
               PreparedStatement pst1=con.prepareStatement(accountinsertquery);
               
               pst1.setInt(1,Integer.parseInt(sid));
               pst1.setString(2,sName);
               pst1.setString(3,sCity);
               pst1.setInt(4,Integer.parseInt(sGrade));
               pst1.setInt(5,Integer.parseInt(sPassword));
             
               
               pst1.executeUpdate();
               out.println("<br>Account Created........");
               
             
           }
           catch(Exception e)
           {
               out.println("not inserted...........Account not Created!!!!!!!"+e);
           }
            
           %>
       
    
    </body>
</html>