<%@ page import="java.util.ArrayList"%>
<%@ page import="hospital.Patient"%>

<%
ArrayList<Patient> patients =
(ArrayList<Patient>)request.getAttribute("patients");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Search Patient</title>

<style>

body{

font-family:Arial;
background:#f2f2f2;

}

.container{

width:90%;
margin:auto;

}

table{

width:100%;
border-collapse:collapse;
margin-top:20px;
background:white;

}

th{

background:#0d6efd;
color:white;
padding:12px;

}

td{

padding:10px;
border:1px solid #ddd;
text-align:center;

}

input{

padding:10px;
width:300px;

}

button{

padding:10px 20px;
background:#0d6efd;
color:white;
border:none;

}

</style>

</head>

<body>

<div class="container">

<h2>Search Patient</h2>

<form action="SearchPatientServlet" method="post">
<br><br>

<a href="index.jsp" class="btn-return">Return</a>
<input type="text"
name="name"
placeholder="Enter Patient Name"
required>

<button type="submit">

Search

</button>

</form>

<table>

<tr>

<th>ID</th>

<th>Name</th>

<th>Age</th>

<th>Gender</th>

<th>Disease</th>

<th>Phone</th>

<th>Admission Date</th>

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

</tr>

<%

}
}

%>

</table>

</div>

</body>

</html>