<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
   <title>Login Form</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <div class="center">
      <h1>Login</h1>
      <form action="JSPJDBC.jsp" method="post">
        <div class="txt_field">
          <input type="text" required name="name">
          <span></span>
          <label>Username...</label>
        </div>
        <div class="txt_field">
          <input type="password" name="password" required>
          <span></span>
          <label>Password...</label>
        </div>
        
        <input type="submit" value="Login">
        <div class="signup_link">
          Not a member? <a href="#">Signup</a>
        </div>
      <center> <div class="pass">Forgot Password?</div></center>
      </form>
    </div>

  </body>
</html>
