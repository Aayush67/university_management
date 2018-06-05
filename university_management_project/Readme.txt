The project was to design University management system with basic login, registration and password reset feature.
Tools used: spring framework, hibernate for database and jsp for front end
IDE: Luna version Eclipse

Setup
First Maven project was created.
Then I started with adding all spring , hibernate dependency to pom.xml from mvn repository
Then for database hibernate.cfg.xml file was configured to connect the project with phpmyadmin database with database name university_management.
Also in spring framework we need to develop front controller for which a spring-dispatcher-servlet.xml was added which would scan all file in a package 
to find controller.
Then in web.xml DispatcherServlet class was added which would process all URL to perform some designed action.


Running the Project
The maven project is run in Tomcat 8.0 version server.
The project starts with index.jsp which has link for registration and login page.
On clicking those link corresponding action is performed that is defined in HelloController.java which is a controller with list of functions that maps with 
specific URL.


NOTE: The SQL script for database is uploaded in project which needs to be imported for configuring the database. In order to run the localhost/phpmyadmin 
server to view the database we should make sure that xampp is installed to the system.



