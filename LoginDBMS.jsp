<%@include file="DBCON.jsp"%>
<%@page import="java.util.Date"%>
<html>
    <h1> Welcome <%=session.getAttribute("login_id")%> customer Login Page....</h1>
     
    <body>
        <%
            
           
            
             
            String role=request.getParameter("role");
            Integer loginid = Integer.parseInt(request.getParameter("sId"));
            Integer password=Integer.parseInt(request.getParameter("Loginpassword"));
            
            
            
            session.setAttribute("login_id",loginid );
            session.setAttribute("login_time",new Date());
           
           
            
            
            
            try
            {
               
            String query = "select * from signup where sid='"+loginid+"'";
            Statement stmt0 = con.createStatement();
            ResultSet rs0 = stmt0.executeQuery(query);
            String Name="";
           
            while(rs0.next())
            {
                Name = rs0.getString(2);
                
                
            }
            session.setAttribute("Name", Name);
            
            
            
               String viewaccountquery ="select * from signup";
                Statement stmt = con.createStatement();
                ResultSet rs1= stmt.executeQuery(viewaccountquery);
                
       
                
                while(rs1.next()){
                        
//                    out.println(" "+rs1.getString(9));
//                    out.println(" "+rs1.getString(10));
//                    out.println("<br>");
                   if(loginid==rs1.getInt(1) && password==rs1.getInt(5) && role.equalsIgnoreCase(rs1.getString(6))){
                    if(loginid==1)
                    {
                        response.sendRedirect("AdminLogin.jsp");
                    }
                    else
                    {
                       response.sendRedirect("Info.jsp");
                    }
                   }

                 else
                 {
                     RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
                     dis.include(request, response);
                     out.println("<br>Login Failed...");
                 }
                 
            }
            }
            
            catch(Exception e)
            {
                out.println("no"+e);
            }
            
        %>
    </body>
    
</html>
