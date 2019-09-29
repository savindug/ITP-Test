<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.7/css/mdb.min.css" rel="stylesheet">
</head>
<body style="background-color:#212121;">
<h3 style= "text-align:left;font-family:Product Sans; color:#e0f7fa; margin-top:15px;">Inventory Management Menu</h3>
	<%@include file="Navbar.jsp" %>

	
	<p style= "margin-top:15px; text-align:center; font-size:20px; font-family:Product Sans; background-color:#D68F13; border:solid; color:">${NOTIFICATION}</p>
	

			<table id="makeEditable" class="table table-hover table table-bordered">
		  <thead>
		    <tr class="text-white red darken-4">
		      <th class="cyan darken-4" style="font-family:Product Sans;" scope="col">#ID</th>
		      <th style="font-family:Product Sans;" scope="col">Product Name</th>
		      <th style="font-family:Product Sans;" scope="col">Product Description</th>
		      <th style="font-family:Product Sans;" scope="col">Unit Price</th>
		      <th style="font-family:Product Sans;" scope="col">Quantity</th>
		      <th style="font-family:Product Sans;" scope="col">Stock worth</th>
		      <!--<th style="font-family:Product Sans;" scope="col">Supplier Id</th>-->
		      <th style="font-family:Product Sans; background-color:red;" scope="col"></th>
		    </tr>
		  </thead>
		  
<!-- using an foreach loop to display data from the database -->
  <c:forEach items="${list}" var="user">
  
			  <tbody>
			    <tr class="">
			      		<td class="cyan darken-4" style="font-family:Product Sans; color:white;">${"user".username}</td>
						<td style="font-family:Product Sans; color:white;">${"user".email}</td>
						<td style="font-family:Product Sans; color:white;">${"user".fName}</td>
						<td style="font-family:Product Sans; color:white;">${"user".lname}</td>
						<td style="font-family:Product Sans; color:white;">${"user".contact}</td>
						<td style="font-family:Product Sans; color:white;">${"user".createDate}</td>
						<!-- <td class="orange lighten-2" style="font-family:Product Sans;">${inventory.supplierId}</td>-->
						<td style= "background-color:#000000;">
						
					
						<!-- <a class="btn btn-dark-green btn-sm fas fa-edit" href = "${pageContext.request.contextPath}/InventoryController?action=EDIT&id=${inventory.id}"></a> |
						
						<a class="btn btn-danger btn-sm fas fa-trash-alt" href = "${pageContext.request.contextPath}/InventoryController?action=DELETE&id=${inventory.id}"></a> 
						 --></td>
			    </tr>
			  </tbody>
			  
  </c:forEach>
	</table>
		
		

		<!-- Full Height Modal Right -->
	<div class="modal fade bottom" id="fullHeightModalRight" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
	  aria-hidden="true">

  <!-- Add class .modal-full-height and then add class .modal-right (or other classes from list above) to set a position to the modal -->
  <div class="modal-dialog modal-full-height modal-bottom" role="document">



<!-- modal to get inventory info----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->>

    <div class="modal-content elegant-color-dark">
      <div class="modal-header">
        <h4 style="color:white;" class="modal-title w-100" id="myModalLabel">Add Inventory</h4>
    
      </div>
      <div class="modal-body">
        		<form method="post" action="uploadServlet" enctype="multipart/form-data">
			
								<div class="form-row">
    <!-- Default input -->
    <div class="form-group col-md-6">
      <label style="color:white;">Product Name</label>
      <input type="text" class="form-control" name = "productName" value = "${inventory.productName}" required>
    </div>
    <!-- Default input -->
    <div class="form-group col-md-6">
      <label style="color:white;" for="inputPassword4">Product Description</label>
      <input type="text" class="form-control" name = "productDescription" value = "${inventory.productDescription}" required>
    </div>
  </div>
  					<div class="form-row">
    <!-- Default input -->
    <div class="form-group col-md-6">
      <label style="color:white;" for="inputEmail4">Unit Price</label>
      <input type="text" class="form-control" name = "unitPrice" value = "${inventory.unitPrice}" required>
    </div>
    <!-- Default input -->
    <div class="form-group col-md-6">
      <label style="color:white;" for="inputPassword4">Quantity</label>
      <input type="text" class="form-control" name = "quantity" value = "${inventory.quantity}" required>
    </div>
  </div>
    <div class="form-row">
    <!-- Default input -->
    <div class="form-group col-md-6">
      <label style="color:white;" for="inputEmail4">Stock Worth</label>
      <input type="text" class="form-control" name = "stockWorth" value = "${inventory.stockWorth}" required>
    </div>
    <!-- Default input -->
    <div class="form-group col-md-6">
      <label style="color:white;" for="inputPassword4">Supplier</label>
      <input type="text" class="form-control" name = "quantity" value = "${inventory.supplierId}" disabled required>
    </div>
    
  </div>
				
					<!-- <input type="file" name="photo" size="50"/>-->
					
 				   
					
					<!-- 	<input type="submit" value="Save"> -->
				</div>
				<div class="form-group col-sm">
	<div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
  </div>
  <div class="custom-file">
    <input type="file" class="custom-file-input" name="photo">
    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
  </div>
</div>
</div>
			
	 <div class="modal-footer">
	<!--   <input type = "hidden" name = "id" value = "${inventory.id}"/>
     <button type="submit" class="btn btn-success btn-sm" value="save">Proceed and Add inventory</button>
      <button  type="button" class="btn btn btn-danger btn-sm" onclick="location.href='${pageContext.request.contextPath}/InventoryController?action=LIST';">Back to List</button>  
      <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>-->
      </div>
      			
				</form>	
				
      </div>
    
    </div>
    

  </div>
</div>



<%@include file="Footer.jsp" %>



<script>
$(document).ready(function(){
  $("#search").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#makeEditable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>