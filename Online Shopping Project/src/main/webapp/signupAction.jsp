<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobileNumber = request.getParameter("mobileNumber");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password = request.getParameter("password");
String address = "";
String city = "";
String state = "";
String country = "";

try {
    // Attempt to establish a database connection
    Connection con = ConnectionProvider.getCon();
    if (con != null) {
        PreparedStatement ps = con.prepareStatement("insert into users values (?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, mobileNumber);
        ps.setString(4, securityQuestion);
        ps.setString(5, answer);
        ps.setString(6, password);
        ps.setString(7, address);
        ps.setString(8, city);
        ps.setString(9, state);
        ps.setString(10, country);
        ps.executeUpdate();
        response.sendRedirect("signup.jsp?msg=valid");
    } else {
        // Log a message if connection is null
        throw new SQLException("Failed to establish database connection");
    }
} catch(SQLException e) {
    // Log SQL exceptions
    e.printStackTrace(); // or use a logging framework
    response.sendRedirect("signup.jsp?msg=invalid");
} catch(Exception e) {
    // Log other exceptions
    e.printStackTrace(); // or use a logging framework
    response.sendRedirect("signup.jsp?msg=invalid");
}
%>