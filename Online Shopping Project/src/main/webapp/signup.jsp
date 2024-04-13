<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
        <input type="email" name="email" placeholder="Enter Email" required>
        <input type="number" name="mobileNumber" placeholder="Enter Mobile NUmberr" required>
    <select name="SecurityQuestion" required>
    <option value="What was your School Name">What was your School Name</option>
        <option value="What is your Favorite Food">What is your Favorite Food</option>
    <option value="Which is your First Mobile">Which is your First Mobile</option>
    </select>
    <input type="text" name="answer" placeholder="Enter answer" required>
    <input type="password" name="password" placeholder="Enter Password" required>
    <input type="submit" value="signup">
    </form>
      <h2><a href="">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg= request.getParameter("msg");
if("valid".equals(msg)){%>
<h1>Successfully Registered</h1>
<%} %>
<%if("invalid".equals(msg)) {%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>