<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<center>
<form action="/college/loggedin" method="post">
<h3>Login Page</h3>
<form action="" method="post">
Username:<input type="text"  name="username" required>
<form:errors path = "username" cssClass = "error" />
<br><br>
Password:<input type="password" name="password" required>
<br><br>
<input type="submit" value="Login">
<br><br>
</form>
<a href='/college/forgotpwd'>Forgot password</a>
<br><br>
<a href='/college/index'>Back to welcome page</a>
</center>
</body>
</html>