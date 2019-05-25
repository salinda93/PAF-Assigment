<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- ajax -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<!-- data tables -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

<body>
	<table id="display">
	
	
<script>
	
$(() => {
    var table = $(".display tbody");
 
    $.ajax({
        url: 'http://localhost:8080/SellNBye/customers/',
        method: "GET",
        xhrFields: {
            withCredentials: true
        },
        success: function (data) {
            table.empty();
            $.each(data, function (a, b) {
                table.append("<tr><td>"+b.id+"</td>" +
                    "<td>"+b.name+"</td>"+
                    "<td>" + b.address + "</td>" +
                    "<td>" + b.email + "</td>" +
                    "<td>" + b.phoneNo + "</td>" +
                    "<td>" + b.country + "</td>" +"</tr>");
            });
 
            $(".display").DataTable();
        }
    });
});

</script>

</table>
</body>
</html>