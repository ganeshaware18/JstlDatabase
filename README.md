# JstlDatabase

Learn following tags n 

   <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
   
    <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3307/mydb" var="db" user="root" password="root123"></sql:setDataSource>
        <sql:query dataSource="${db}" var="rs">select * from customers</sql:query>
        <c:forEach items="${rs.rows}" var="row">

![image](https://user-images.githubusercontent.com/96858313/182012288-2defcc6e-530f-4933-9857-8b6303227f7a.png)
![image](https://user-images.githubusercontent.com/96858313/182012363-ef2b1839-5d0b-4bfb-a3cd-52d44db0f340.png)
