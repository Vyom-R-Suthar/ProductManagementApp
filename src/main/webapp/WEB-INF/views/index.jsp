<!-- Jai Swaminarayan KESHAV , Swami-Shreeji -->
<html>
<head>
<%@ include file="./base.jsp"%>
</head>
<body>
	<div class="container">
		<h1 class="text-center mt-4">Welcome to Product App</h1>

		<table class="table mt-5">
			<thead class="thead-dark">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Product Name</th>
					<th scope="col">Product Description</th>
					<th scope="col">Price</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="p">
				<tr>
					<th scope="row">${p.id}</th>
					<td>${p.name}</td>
					<td>${p.description}</td>
					<td>&#x20B9; ${p.price}</td>
					<td><a style="margin-right:15px;" href="delete/${p.id}"><i class="fa-solid fa-trash" style="color: #db1f3b;"></i></a> 
						<a href="update/${p.id}"><i class="fa-solid fa-pen-nib fa-lg" style="color: #1361e7;"></i></a>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<div class="text-center mt-3">
			<a href="add-product" class="btn btn-outline-success">Add Product</a>
		</div>
	</div>
</body>
</html>
