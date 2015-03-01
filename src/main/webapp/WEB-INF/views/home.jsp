<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<%@include file="fragments/head.jsp" %>
  <body>
  <%@include file="fragments/header.jsp" %>
  <div class="container-fluid">
      <div id="login_form">
        <form role="form">
	    <div class="form-group">
	      <label for="email">Email:</label>
	      <input type="email" class="form-control" id="email" placeholder="Enter email">
	    </div>
	    <div class="form-group">
	      <label for="pwd">Password:</label>
	      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
	    </div>
	    <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
	  	</form>
	  	<a href="/cmpmwizard/setup" class="btn btn-default">Create Account</a>
      </div>
  </div>
  <%@include file="fragments/footer.jsp" %>
  </body>
</html>
