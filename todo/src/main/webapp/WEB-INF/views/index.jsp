<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" 
integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />
	

</head>
<body>
	
	<div class="container mt-3">
		<div class="col-md-12">
			<h1 class="text-center mb-3">Welcome to Todo List</h1>
			
			<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">Sr. No.</th>
			      <th scope="col">Topic</th>
			      <th scope="col">Description</th>
			      <th scope="col">DeadLine</th>
			    </tr>
			  </thead>
			  <tbody>
			    
			    <c:forEach items="${lists }" var="p">
			    	<tr>
				      <td scope="row">${p.id }</td>
				      <td>${p.topic }</td>
				      <td>${p.description }</td>
				      <td class="font-weight-bold" &#x20B9;> ${p.deadLine } </td>
					  <td>
					  	<a href="delete/${p.id}"><i class="fa-solid fa-trash-can text-danger" style="font-size: 30px;"></i></a>
					  	<a href="update/${p.id}"><i class="fa-solid fa-pen-nib text-primary" style="font-size: 30px;"></i></a>
					  </td>				      
			    	</tr>
			    </c:forEach>
			    
			  </tbody>
			</table>
			<div class="container text-center">
				<a href="add_list" class="btn btn-outline-success">Add Product</a>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	
</body>
</html>