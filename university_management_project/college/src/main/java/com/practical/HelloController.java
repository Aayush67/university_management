
package com.practical;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.text.View;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class HelloController {
	
	List<universities> uname;
	HttpServletRequest request;
	@RequestMapping("/index")
	public ModelAndView welcome()
	{
		ModelAndView modelandview=new ModelAndView("index");
		
		return modelandview;
	}
	@RequestMapping("/forgotpwd")
	public ModelAndView forgotpwd()
	{
		ModelAndView modelandview=new ModelAndView("forgotpwd");
		return modelandview;
	}
	
	@RequestMapping(value="/passwordreset",method = RequestMethod.POST)
	public ModelAndView passwordreset(@RequestParam("username") String name,@RequestParam("npassword") String npassword,@RequestParam("cpassword") String cpassword)
	{
		Configuration con=new Configuration().configure().addAnnotatedClass(registration.class);
        ServiceRegistry reg=new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
        SessionFactory sf=con.buildSessionFactory(reg);
        Session s1=sf.openSession();
		name=name.trim();
		npassword=npassword.trim();
		cpassword=cpassword.trim();
		System.out.println(name+"	"+npassword+"	"+cpassword);
		if(npassword.equals(cpassword))
		{
				Transaction tf=s1.beginTransaction();
		        Query q=s1.createQuery("from registration where Name=:namevalue");
		        q.setParameter("namevalue",name);
		        List<universities> res1=q.list();
		        if(res1.size()>0)
		        {
		        	//"UPDATE Employee set salary = :salary "  + 
		              //      "WHERE id = :employee_id";
		        	//Transaction tf1=s1.beginTransaction();
		        	Query q1=s1.createQuery("update registration set Password = :pvalue where Name = :namevalue");
		  	        q1.setParameter("namevalue",name);
		  	        q1.setParameter("pvalue",npassword);
		  	        q1.executeUpdate();
		  	 
		  	        System.out.println("Hi");
		  	        ModelAndView modelandview=new ModelAndView("passwordreset");
		  	        modelandview.addObject("msg",name);
		  	        tf.commit();
		  	        return modelandview;
		        }
		        else
		        {
		        	ModelAndView modelandview=new ModelAndView("registration");
						return modelandview;
		        }
		}
		else
		{
			ModelAndView modelandview=new ModelAndView("forgotpwd");
			return modelandview;
		}
		//Not a registered user
			//ModelAndView modelandview=new ModelAndView("registration");
			//return modelandview;
		
		
	}
	
	@RequestMapping("/login")
	public ModelAndView login()
	{
		ModelAndView modelandview=new ModelAndView("login");
		return modelandview;
	}
	@RequestMapping(value="/loggedin", method = RequestMethod.POST)
	public ModelAndView loggedinpage(@RequestParam("username") String name,@RequestParam("password") String password) 
	{		
		Configuration con=new Configuration().configure().addAnnotatedClass(registration.class);
        ServiceRegistry reg=new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
        SessionFactory sf=con.buildSessionFactory(reg);
        Session s1=sf.openSession();
		name=name.trim();
		password=password.trim();
		if(name!="" && password!="")
		{	
			
	        Transaction tf=s1.beginTransaction();
	        Query q=s1.createQuery("from registration where Name=:namevalue");
	        q.setParameter("namevalue",name);
	        List<universities> res1=q.list();
	        if(res1.size()>0)
	        {
	        	//registered user
	        	//Checking for correct password
	        	Query q1=s1.createQuery("from registration where Name =:namevalue and Password=:pvalue");
	  	        q1.setParameter("namevalue",name);
	  	        q1.setParameter("pvalue",password);
	  	        List<universities> res2=q1.list();
	  	        if(res2.size()>0)
	  	        {
	  	        	ModelAndView modelandview=new ModelAndView("loggedin");
	  	        	registration st=(registration)q1.uniqueResult();
	  				//System.out.println(st.getCollege());
	  				modelandview.addObject("attrib1", st.getUniversity() +" welcomes "+ "you");
	  				modelandview.addObject("attrib2", st.getName());
	  				modelandview.addObject("attrib3", st.getCollege());
	  				return modelandview;
	  	        }
	  	        else
	  	        {
	  	        	//invalid id and password login
	  	        	ModelAndView modelandview=new ModelAndView("login");
		        	//System.out.println("No");
		        	return modelandview;		        	
	  	        }
	        	
	        	
	        }
	        else
	        {
	        	//go to registration
	        	ModelAndView modelandview=new ModelAndView("registration");
	        	//System.out.println("No");
	        	return modelandview;
	        	
	        }
		}
		return login();
	}
	
	
	@RequestMapping(value="/registration")
	public ModelAndView registration()
	{
		ModelAndView modelandview=new ModelAndView("registration");
		modelandview.addObject("welcomeMessage","Hi User welcome to the first spring mvc application");
		//System.out.println(name+password+college+university);
		
		/*
		 A string containing only the '/' character indicates the "default" servlet of
		  the application. In this case the servlet
		  path is the request URI minus the context path and the path info is null.
		 */
		/*students obj=new students();
        obj.setId("10352");;
        obj.setName("Kumarxc");
        Configuration con=new Configuration().configure().addAnnotatedClass(students.class);
        ServiceRegistry reg=new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
        SessionFactory sf=con.buildSessionFactory(reg);
        Session session=sf.openSession();
        Transaction tf=session.beginTransaction();
       // session.save(obj);
        session.save(obj);
      //  Session.
        tf.commit();
       // save(obj);*/
		
		
		/*Configuration con=new Configuration().configure().addAnnotatedClass(rajiv_gandhi.class);
        ServiceRegistry reg=new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
        SessionFactory sf=con.buildSessionFactory(reg);
        Session s1=sf.openSession();
        Transaction tf=s1.beginTransaction();
        String s="rajiv_gandhi";
		Query q=s1.createQuery("from "+ s);
		//q.setParameter("val",s);
		List<rajiv_gandhi> res=q.list();
		for(rajiv_gandhi u:res)
		{
			System.out.println(u);
			//System.out.println("a");
		}*/
		
		return modelandview;
	}
	
	/*@RequestMapping(value="/loggedin", method = RequestMethod.POST)
	public ModelAndView loggedinpage(@RequestParam("username") String name,@RequestParam("password") String password)
	{
		ModelAndView modelandview=new ModelAndView("registration");
		
		modelandview.addObject("name", "welcome "+ name +" with "+ password);
		
		return modelandview;
	}*/
	
	@RequestMapping(value="/registered", method = RequestMethod.POST)
	public ModelAndView loggedinpage(@RequestParam("username") String name,@RequestParam("password") String password,@RequestParam("college") String college,@RequestParam("university") String university)
	{
		
		Configuration con=new Configuration().configure().addAnnotatedClass(registration.class);
        ServiceRegistry reg=new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
        SessionFactory sf=con.buildSessionFactory(reg);
        Session s1=sf.openSession();
		name=name.trim();
		password=password.trim();
		college=college.trim();
		university=university.trim();
		if(college.equals("choose option") || university.equals("choose option"))
		{
			ModelAndView modelandview=new ModelAndView("registration");
			return modelandview;
		}
		if(name!="" && password!="" && college!="" && university!="")
		{	
				ModelAndView modelandview=new ModelAndView("login");
				
				//modelandview.addObject("name", "welcome "+ name +" with "+ password);
				
				registration obj=new registration();
		        obj.setCollege(college);
		        obj.setName(name);
		        obj.setPassword(password);
		        obj.setUniversity(university);
		        Transaction tf=s1.beginTransaction();
		       // session.save(obj);
		        s1.save(obj);
		      //  Session.
		        tf.commit();
		       // save(obj);*/
				
				return modelandview;
		}
		else
		{
			ModelAndView modelandview=new ModelAndView("registration");
			return modelandview;
		}
	}
	


}
