<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<center>
<h1>Registration</h1></center>
<body style="background-color: Cyan;">
<form action="registration">
<br><br>Enter Name :  <input type="text" name="name" placeholder="Enter Name" required autofocus/>
<br><br>Enter userId :  <input type="number" name="userId" placeholder="Enter number" required />
<br><br>Enter dob :  <input type="date" name="dob" placeholder="Enter dob" min="1950-01-01" max="2020-02-01" />
<br><br>Enter contact number :  <input type="number" name="contactnumber" placeholder="Enter contact number" required min="1111111111" max="9999999999"/>

<br><br>Enter gender :  <input type="radio" name="gender" value="M"required >male 
					<input type="radio" name="gender" value="F"required>female  

<br><br>Enter password :  <input type="password" name="password" placeholder="Enter password" required />
<br><br>Enter email :  <input type="email" name="email" placeholder="Enter email" required /> 
<br><br>
<button type="submit" >Submit</button>
<br><br>
<button type="reset" >reset</button>
<br><br>
</form>
</body>
</html>