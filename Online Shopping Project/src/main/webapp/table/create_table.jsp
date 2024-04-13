<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    String q1 = "create table users (name varchar(100), email varchar(100) primary key, mobilenumber bigint, securityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500), city varchar(100))";
    
    out.println("Executing query: " + q1); // Print the SQL query to the response output stream
    st.execute(q1);
    
    out.println("Table created successfully"); // Print a message to indicate that the table is created
    
    con.close();
} catch (Exception e) {
    out.println("Exception occurred: " + e.getMessage()); // Print the exception message to the response output stream
}
%>
