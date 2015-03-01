<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false" %>
<html>
<%@include file="fragments/head.jsp" %>
  <body>
    <%@include file="fragments/header.jsp" %>
  <div class="container-fluid">
    <h1>CMPM Reporting Wizard</h1>
    <p>Configure resource pool and generate CMPM Reports - Dashboard</p>
    <p>User Home Page</p>
    ${name}
      
  </div>
    <%@include file="fragments/footer.jsp" %>
  </body>
</html>
