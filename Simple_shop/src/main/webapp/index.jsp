<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="sws.model.produs" %>
<%@ page import="sws.dao.ProdusDao" %>

<%
    
ProdusDao pd = new ProdusDao();

List<produs> produse = pd.getProduse();
System.out.println("First Name : " + produse.get(2).getName());


%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to simple web shop!</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container">
  <a class="navbar-brand" href="#">SimpleWebShop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Cart</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Settings
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#">Log in</a>
      </li>
    </ul>
    
  </div>
  </div>
</nav>

<div class="continer"> 
<div class="card-header my-3">All products</div>
<div class="row">

<%
if (!produse.isEmpty())
{
	for(produs p:produse)
	{%>
		<div class="col-md-3">
		<div class="card w-100" style="width: 18rem;">
		  <div class="card-body">
		    <h5 class="card-title"><%= p.getName() %></h5>
		    <h5 class="price">Price: $<%=p.getPrice() %></h5>
		    <h5 class="category">Category: <%=p.getCategory() %></h5>
		    <div class="mt-3 d-flex justify-content-between">
		    <a href="add-to-cart?nume=<%p.getName(); %>" class="btn btn-primary">Add to cart</a>
		    </div>
		    
		  </div>
		</div>
		</div>
	<%}
		
}
%>


</div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>


</body>
</html>