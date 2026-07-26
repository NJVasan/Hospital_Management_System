<%@ page import="java.util.ArrayList" %>
<%@ page import="hospital.Patient" %>

<%
ArrayList<Patient> patients =
(ArrayList<Patient>)request.getAttribute("patients");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Patients</title>

<link rel="stylesheet" href="css/style.css">

<style>

body{
    font-family:Arial;
    background:#f5f5f5;
}

.container{

width:95%;
margin:30px auto;

}

h2{

text-align:center;
margin-bottom:20px;
color:#0d6efd;

}

table{

width:100%;
border-collapse:collapse;
background:white;
box-shadow:0px 0px 10px gray;

}

th{

background:#0d6efd;
color:white;
padding:12px;

}

td{

padding:10px;
text-align:center;
border:1px solid #ddd;

}

tr:nth-child(even){

background:#f9f9f9;

}

.btn{

padding:8px 12px;
text-decoration:none;
border-radius:5px;
color:white;

}

.update{

background:green;

}

.delete{

background:red;

}

</style>

</head>

<body>

<div class="container">

<h2>Hospital Patient List</h2>

<table>
<br><br>

<a href="index.jsp" class="btn-return">Return</a>
<tr>

<th>ID</th>

<th>Name</th>

<th>Age</th>

<th>Gender</th>

<th>Disease</th>

<th>Phone</th>

<th>Admission Date</th>

<th>Update</th>

<th>Delete</th>

</tr>

<%
if(patients!=null){

for(Patient p:patients){
%>

<tr>

<td><%=p.getId()%></td>

<td><%=p.getName()%></td>

<td><%=p.getAge()%></td>

<td><%=p.getGender()%></td>

<td><%=p.getDisease()%></td>

<td><%=p.getPhone()%></td>

<td><%=p.getAdmissionDate()%></td>

<td>

<a class="btn update"
href="updatePatient.jsp?id=<%=p.getId()%>">

Update

</a>

</td>

<td>

<a class="btn delete"
href="DeletePatientServlet?id=<%=p.getId()%>"
onclick="return confirm('Delete this patient?');">

Delete

</a>

</td>

</tr>

<%
}
}
%>

</table>

</div>

</body>

</html>