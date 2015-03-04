<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false" %>
<html>
<%@include file="fragments/head.jsp" %>
  <body>
  <%@include file="fragments/header.jsp" %>
  <div class="container-fluid">
      <div id="login_form:form">
        <form:form role="form" method="POST" action="/cmpmwizard/handleLogin" modelAttribute="loginUser">
	    <div class="form:form-group">
	      <form:label path="id" for="id">ID:</form:label>
	      <form:input path="id" type="text" class="form-control" id="id" placeholder="Enter ID" />
	    </div>
	    <div class="form:form-group">
	      <form:label path="password" for="pwd">Password:</form:label>
	      <form:input path="password" type="password" class="form-control" id="pwd" placeholder="Enter password" />
	    </div>
	    <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
	  	</form:form>
	  	<a href="/cmpmwizard/setup" class="btn btn-default">Create Account</a>
      </div>
  </div>
  <%@include file="fragments/footer.jsp" %>
  </body>
</html>
