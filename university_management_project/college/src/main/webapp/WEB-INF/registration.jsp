<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<script>
$(function(){
		$('#university').change(function(){
		
			  $('#college').html(''); 
			 /*  $("#college").append("<option>Aayush</option>"); */
			  var value=$('#university').find(":selected").val();
			  if (value==='adesh_university') 
			  	{
				  $("#college").append("<option>Adesh1</option>");
				  $("#college").append("<option>Adesh2</option>");
				  $("#college").append("<option>Adesh3</option>");
				  $("#college").append("<option>Adesh4</option>");
				  $("#college").append("<option>Adesh5</option>");
				}
				else if(value==='rajiv_gandhi') 
				{
					$("#college").append("<option>Rajiv1</option>");
					$("#college").append("<option>Rajiv2</option>");
					$("#college").append("<option>Rajiv3</option>");
					$("#college").append("<option>Rajiv4</option>");
					$("#college").append("<option>Rajiv5</option>");
				} 
				else if(value==='aliah_university') 
				{
					$("#college").append("<option>Aliah1</option>");
					$("#college").append("<option>Aliah2</option>");
					$("#college").append("<option>Aliah3</option>");
					$("#college").append("<option>Aliah4</option>");
					$("#college").append("<option>Aliah5</option>");
				}
				else if(value==='rajasthan_university') 
				{
					$("#college").append("<option>rajasthan1</option>");
					$("#college").append("<option>rajasthan2</option>");
					$("#college").append("<option>rajasthan3</option>");
					$("#college").append("<option>rajasthan4</option>");
					$("#college").append("<option>rajasthan5</option>");
				}
				else if(value==='delhi_university') 
				{
					$("#college").append("<option>Hindu</option>");
					$("#college").append("<option>Indraprastha</option>");
					$("#college").append("<option>Ramjas</option>");
					$("#college").append("<option>Hansraj</option>");
					$("#college").append("<option>delhi5</option>");
				}
				else
					{
					$("#college").append("<option>choose option</option>");
					}
			   <%-- <%
			   	  String value=request.getParameter("university");
			   	  
			   	  System.out.println(value);
			   	  Configuration con3=new Configuration().configure().addAnnotatedClass(universities.class);
				  ServiceRegistry reg3=new ServiceRegistryBuilder().applySettings(con3.getProperties()).buildServiceRegistry();
				  SessionFactory sf3=con3.buildSessionFactory(reg3);
				  Session s3=sf3.openSession();
				  Transaction tf3=s3.beginTransaction();
 				  
			  %>  --%>
			  
			  /* $("#college").append("<option value>"+value+"</option>"); */
		});
})
</script> 
</head>
<body>
<center>
<h3>Welcome to University management system by Aayush</h3>
<form action="/college/registered" method="post">
Username:<input type="text"  name="username" required>
<br><br>
Password:<input type="password" name="password" required>
<br><br>
Select University: <select id = "university" name="university" size="1" required>

<%@ page import="org.hibernate.cfg.Configuration,org.hibernate.service.ServiceRegistry,org.hibernate.service.ServiceRegistryBuilder" %>
<%@ page import="org.hibernate.Query,java.util.List,org.hibernate.Transaction,com.practical.registration,com.practical.universities,javax.servlet.http.HttpServletRequest,org.hibernate.Session,org.hibernate.SessionFactory" %>
<% 
Configuration con=new Configuration().configure().addAnnotatedClass(universities.class);
ServiceRegistry reg=new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
SessionFactory sf=con.buildSessionFactory(reg);
Session s1=sf.openSession();
Transaction tf=s1.beginTransaction();

Query q=s1.createQuery("from universities");
List<universities> res=q.list();
out.write("<option selected='selected'> choose option</option>"); 
for(universities u:res)
{
	out.write("<option>" + u + "</option>");
}

%>

	<!-- <option selected="selected">adesh_university</option>
	<option>aliah_university</option>
	<option>rajiv_gandhi</option> -->
</select>
<br><br>
Select College: <select id = "college" name="college" size="1" required>
 <option selected="selected">choose option</option>
<%--  <%
        String colour = request.getParameter("university");
        System.out.println(colour);
        System.out.println(colour);
  %> --%>
</select>
<br><br>
<input type="submit" value="Register">
<br><br>
<a href='/college/index'>Back to welcome page</a>
</form>
</center>
</body>
</html>