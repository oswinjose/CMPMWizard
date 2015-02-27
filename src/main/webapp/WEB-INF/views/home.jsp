<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
  <title>CMPM Reporting Wizard</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  function toggle(id){
	  var elem = jQuery('#'+id);
	  if(elem.hasClass('hidden')){
		  elem.removeClass('hidden');
	  }else{
		  elem.addClass('hidden');
	  }
  }
  </script>
  <style type="text/css">
  .hidden {
 	display: none;
  }
  </style>
  </head>
  <body>
  <div class="container">
    <h1>CMPM Reporting Wizard</h1>
    <p>Configure resource pool and generate CMPM Reports - Dashboard</p>
    <div class="row">
    <div class="col-sm-6" style="background-color:lavender;">
      <button type="button" class="btn btn-primary btn-lg btn-block" onclick="toggle('setup_form')">Create Account</button>
      <div id="setup_form" class="hidden">
        <form role="form">
        <div class="form-group">
	      <label for="fullname">Email:</label>
	      <input type="text" class="form-control" id="fullname" placeholder="Enter fullname">
	    </div>
	    <div class="form-group">
	      <label for="email">Email:</label>
	      <input type="email" class="form-control" id="email" placeholder="Enter email">
	    </div>
	    <div class="form-group">
	      <label for="pwd">Password:</label>
	      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
	    </div>
	    <div class="form-group">
	      <label for="re-pwd">Re-Password:</label>
	      <input type="password" class="form-control" id="re-pwd" placeholder="ReEnter password">
	    </div>
	    <button type="submit" class="btn btn-default">Submit</button>
	  	</form>
      </div>
    </div>
  	</div>
  	<div class="row">
  	<div class="col-sm-6" style="background-color:lavender;">
      <button type="button" class="btn btn-primary btn-lg btn-block" onclick="toggle('login_form')">Login</button>
      <div id="login_form" class="hidden">
        <form role="form">
	    <div class="form-group">
	      <label for="email">Email:</label>
	      <input type="email" class="form-control" id="email" placeholder="Enter email">
	    </div>
	    <div class="form-group">
	      <label for="pwd">Password:</label>
	      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
	    </div>
	    <button type="submit" class="btn btn-default">Submit</button>
	  	</form>
      </div>
    </div>
  	</div>
  </div>
  </body>
</html>
