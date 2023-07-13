<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>CRUD APP</title>
</head>

<body>
    <h3> Updated User details</h3>
    ${user}
    <form action="adduser">
        <div>
            <label>ID:</label>
             <input type="number" name="id">
        </div>
        <div>
            <label>NAME:</label>
             <input type="text" name="name">
        </div>
        <input type="submit" >
       
    </form>
</body>
</html>



<!-- 
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=password

spring.jpa.show-sql=true
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.H2Dialect
#spring.jpa.hibernate.ddl-auto=update -->
