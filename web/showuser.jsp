<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
    <head>
        <style>
            table td{
                border: 1px solid;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>All users: </h1>
        
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3307/mydb" var="db" user="root" password="root123"></sql:setDataSource>
        <sql:query dataSource="${db}" var="rs">select * from customers</sql:query>
        <table>
            <tr>
                <th>
                   name 
                </th>
                <th>
                    address
                </th>
            </tr>
        <c:forEach items="${rs.rows}" var="row">
           <tr>
          <td>  
              <c:out value="${row.name}"></c:out>
              </td>
              <td>
              <c:out value="${row.address}"></c:out>
          </td>
           </tr>
        </c:forEach>
        </table>
        
    </body>
</html>
