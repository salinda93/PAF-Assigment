<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- ADD BOOSTRAP css-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- ADD BOOSTRAP js-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<!-- ajax -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<!-- Submit form data to api -->
	<div class="container">
	<br>
		<form id="idform">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="name">Name</label> <input type="text"
						class="form-control" name="name" id="name" placeholder="Name">
				</div>
				<div class="form-group col-md-6">
					<label for="email">Email</label> <input type="email"
						class="form-control" name="email" id="email" placeholder="Email">
				</div>
			</div>
			<div class="form-group">
				<label for="address">Address</label> <input type="text"
					class="form-control" name="address" id="address" placeholder="1234 Main St">
			</div>

			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="country">Country</label> <input type="text"
						class="form-control" name="country" id="country">
				</div>
				<div class="form-group">
					<label for="inputAddress2">Phone Number </label> <input type="text"
						class="form-control" name="phoneNo" id="phoneNo" placeholder="Phone Number">
				</div>
			</div>
			<input class="btn btn-primary" type="submit" value="Add Customer" id="save_data"/>
		</form>

		<!-- submit function -->

		<script>
			/*$(document).ready(function() {
				$("#save_data").click(function() {
					alert("succeess");
					$.ajax({
						url : "localhost:8080/SellNBye/customers/",
						type : "post",
						data : {
							name : $('#name').val(),
							address : $('#address').val(),
							email : $('#email').val(),
							phoneNo : $('#phoneNo').val(),
							country : $('#country').val(),
							success : function(data) {
								alert(data);
							}
						}
					});
				});
			});*/
			
			$("#idform").submit(function(e) {

			    e.preventDefault(); // avoid to execute the actual submit of the form.

			    var form = $(this);
			    var url = form.attr('localhost:8080/SellNBye/customers/');

			    $.ajax({
			           type: "POST",
			           url: url,
			           data: form.serialize(), // serializes the form's elements.
			           success: function(data)
			           {
			               alert(data); // show response from the php script.
			           }
			         });


			});
			
		</script>
	</div>
</body>
</html>