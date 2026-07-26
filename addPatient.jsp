<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Patient</title>

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">

<style>

.form-container{

    width:500px;
    margin:40px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 15px lightgray;

}

.form-container h2{

    text-align:center;
    margin-bottom:20px;
    color:#0d6efd;

}

input,select{

    width:100%;
    padding:12px;
    margin:10px 0;
    border:1px solid gray;
    border-radius:5px;

}

button{

    width:100%;
    padding:12px;
    background:#0d6efd;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
    font-size:16px;

}

button:hover{

    background:#084298;

}

</style>

</head>

<body>


<div class="form-container">

<h2><i class="fa-solid fa-user-plus"></i> Add Patient</h2>

<form action="AddPatientServlet" method="post">
<br><br>

<a href="index.jsp" class="btn-return">Return</a>
<input type="text"
name="name"
placeholder="Patient Name"
required>

<input type="number"
name="age"
placeholder="Age"
required>

<select name="gender" required>

<option value="">Select Gender</option>

<option>Male</option>

<option>Female</option>

<option>Other</option>

</select>

<input type="text"
name="disease"
placeholder="Disease"
required>

<input type="text"
name="phone"
placeholder="Contact Number"
required>

<input type="date"
name="admissionDate"
required>

<button type="submit">

Add Patient

</button>

</form>

</div>

</body>
</html>