<!-- Jai Swaminarayan KESHAV , Swami-Shreeji -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@ include file="./base.jsp"%>
</head>
<body>
	<div class="container" style="width:40%;">
		<h1 class="text-center mt-4 mb-4">Update product detail</h1>
		<form method="post" action="${pageContext.request.contextPath}/handle-product">
			<input type="hidden" value="${product.id}" name="id"/>
			<div class="form-group">
				<label for="ProductName">Product Name</label> <input
					type="text" 
					class="form-control" 
					id="ProductName"
					aria-describedby="emailHelp" 
					name="name"
					placeholder="Enter product name"
					value="${product.name }">
			</div>
			
			<div class="form-group">
    			<label for="ProductDescription">Product Description</label>
    			<textarea 
    				class="form-control" 
    				id="ProductDescription" 
    				name="description"
    				rows="3">${product.description }
    			</textarea>
  			</div>
			
			<div class="form-group">
				<label for="ProductPrice">Product Price</label> <input
					type="text" 
					class="form-control" 
					id="ProductPrice"
					aria-describedby="emailHelp" 
					name="price"
					placeholder="Enter product price"
					value="${product.price}">
			</div>
			<div class="text-center mt-3">
				<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
				<button type="submit" class="btn btn-outline-warning">Update</button>
			</div>
		</form>
	</div>
</body>
</html>