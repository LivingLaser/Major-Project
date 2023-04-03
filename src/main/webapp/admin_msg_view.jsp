<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin message view</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<body>
<p class="h2 text-center text-light bg-dark"><strong>ADMINISTRATOR PANEL</strong></p>
<br>
    <div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center">User Message</h1>
				<form>
					<div class="form-group">
						<label for="name"><h4><b>Name:</b></h4></label>
						<input type="text" class="form-control" id="name" placeholder="Enter your name" disabled>
					</div><br><br>
					<div class="form-group">
						<label for="email"><h4><b>Email:</b></h4></label>
						<input type="email" class="form-control" id="email" placeholder="Enter your email" disabled>
					</div><br><br>
					<div class="form-group">
						<label for="message"><h4><b>Message:</b></h4></label>
						<textarea class="form-control" id="message" rows="5" placeholder="Enter your message" disabled></textarea>
					</div><br><br><div class="text-center"><button onclick="window.print()" class="btn btn-secondary btn-lg">Print</button> </div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>