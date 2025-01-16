<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Add Employee</title>

		<link rel="stylesheet" href="addemp.css">

	</head>

	<body>


		
			<form action="addemp" method="post">

				<h1>Add Employee Detail</h1>

				<div class="form_fild">

					<label for="eid">Id:</label>
					<input type="number" id="e_id" name="id" required>

					<label for="ename">Name:</label>
					<input type="text" id="e_name" name="name" required>

					<label for="efname">Father's_Name:</label>
					<input type="text" id="e_fname" name="father_name" required>

					<label for="eemail">Email:</label>
					<input type="email" id="e_email" name="email" required>

					<label for="eaddress">Address:</label>
					<input type="text" id="e_address" name="address" required>

					<label for="ebirth">Date of Birth:</label>
					<input type="date" id="e_birth" name="birth" required>

					<label for="eadhar">Adhar_No:</label>
					<input type="number" id="e_adhar" name="adhar" required>

					<label for="ephone">Phone:</label>
					<input type="number" id="e_phone" name="phone" required>

					<label for="ePosition">Position:</label>
					<input type="text" id="e_Position" name="Position" required>

					<label for="eeducation">Education:</label>
					<input type="text" id="e_education" name="education" required>

					<label for="esalary">Salary:</label>
					<input type="number" id="e_salary" name="salary" required>

					<label for="ePassword">password:</label>
					<input type="password" id="e_pass" name="password" required>


					<label>
				 Select User:</label>
				  <select name="user" id="select">	
					<option>User</option>
					<option>admin</option>
					<option>Employee</option>

					</select>

					<input type="submit" value="Add Detail" id="submit">

				</div>

			</form>
	

	</body>

	</html>