<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false" %>
<html>
<%@include file="fragments/head.jsp" %>
  <body>
    <%@include file="fragments/header.jsp" %>
  <div class="container-fluid">
      <div id="setup_form">
        <form:form role="form" method="POST" action="/cmpmwizard/handleSetup" modelAttribute="user">
        <div class="form-group">
	      <form:label path="id" for="id">Employee Id:</form:label>
	      <form:input path="id" type="text" class="form-control" id="id" placeholder="Employee Id" />
	    </div>
        <div class="form-group">
	      <form:label path="fullName" for="fullname">Full Name:</form:label>
	      <form:input path="fullName" type="text" class="form-control" id="fullname" placeholder="Enter fullname" />
	    </div>
	    <div class="form-group">
	      <form:label path="email" for="email">Email:</form:label>
	      <form:input path="email" type="email" class="form-control" id="email" placeholder="Enter email" />
	    </div>
	    <div class="form-group">
	      <form:label path="password" for="pwd">Password:</form:label>
	      <form:input path="password" type="password" class="form-control" id="pwd" placeholder="Enter password" />
	    </div>
	    <div class="form-group">
	      <form:label path="repassword" for="re-pwd">Re-Password:</form:label>
	      <form:input path="repassword" type="password" class="form-control" id="re-pwd" placeholder="ReEnter password" />
	    </div>
	    <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
	  	</form:form>
	  	<a class="btn btn-default" href="/cmpmwizard/login">Login</a>
      </div>
      
  </div>
    <%@include file="fragments/footer.jsp" %>
  </body>
</html>
