<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Reset Password</h1>
<form action="/college/passwordreset" method="post">
Enter Name:<input type="text" name="username" required><br><br>
Enter new Password: <input type="password" name="npassword" required><br><br>
Confirm Password: <input type="password" name="cpassword" required>
<br><br>
<input type="submit" value="change">
<br><br>
<a href='/college/index'>Back to welcome page</a>
</form>
</center>
</body>
</html>