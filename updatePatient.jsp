<%@ page import="hospital.PatientDAO" %>
<%@ page import="hospital.Patient" %>
<%
int id = Integer.parseInt(request.getParameter("id"));

PatientDAO dao = new PatientDAO();

Patient p = dao.getPatientById(id);
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Update Patient</title>

<link rel="stylesheet" href="css/style.css">

<style>

.container{

width:500px;
margin:40px auto;
background:white;
padding:25px;
border-radius:10px;
box-shadow:0px 0px 10px gray;

}

input,select{

width:100%;
padding:12px;
margin:10px 0;

}

button{

width:100%;
padding:12px;
background:#0d6efd;
color:white;
border:none;
font-size:18px;
cursor:pointer;

}

</style>

</head>

<body>

<div class="container">

<h2>Update Patient</h2>

<form action="UpdatePatientServlet" method="post">
<br><br>

<a href="index.jsp" class="btn-return">Return</a>
<input type="hidden" name="id" value="<%=p.getId()%>">

<input
type="text"
name="name"
value="<%=p.getName()%>"
required>

<input
type="number"
name="age"
value="<%=p.getAge()%>"
required>

<select name="gender">

<option <%=p.getGender().equals("Male")?"selected":""%>>Male</option>

<option <%=p.getGender().equals("Female")?"selected":""%>>Female</option>

<option <%=p.getGender().equals("Other")?"selected":""%>>Other</option>

</select>

<input
type="text"
name="disease"
value="<%=p.getDisease()%>"
required>

<input
type="text"
name="phone"
value="<%=p.getPhone()%>"
required>

<input
type="date"
name="admissionDate"
value="<%=p.getAdmissionDate()%>"
required>

<button>

Update Patient

</button>

</form>

</div>

</body>

</html>