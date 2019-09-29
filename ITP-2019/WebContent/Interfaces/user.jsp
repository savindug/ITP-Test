<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head> 
<title>SignUp !</title>

    <%@include file="Header.jsp" %>
</head>
<body style="background-color:#2e2e2e;overflow-x:hidden;">

<div class="row d-flex justify-content-center">

          <div class="col-md-4 d-flex justify-content-center">
            <div class="card-container manual-flip">
               <div class="card">
                   <div id="signin" class="front">
                       <div class="cover text-center">
                       	<div  class="alert alert-warning" role="alert">
							  WELCOME TO CITISON
							</div>
                           <img src="./img/Image.png"/>
                       </div>
                       <div class="content" style="background-color:black;
                       color:goldenrod;">
                           <div class="main">
                              <form action="<%= request.getContextPath() %>/register" method="post">
		                              <div id="status" class="alert alert-warning" role="alert">
									  	
									  </div>
						    	 <input type="text" id="username" name="username" placeholder="User Name" class="form-control my-3" required>		
						          <input type="email" id="email" name="email" placeholder="Email" class="form-control my-3" required>
						          <input type="password" id="password" name="password" placeholder="Password" class="form-control my-3" required>
						          <input type="password" id="c_password" name="c_password" placeholder="Confirm Password" class="form-control my-3" required>
				    			
				    			<button type="submit" class="btn btn-info mt-3 " name="submit">Sign Up</button>
		
				  				</form>
                           </div>
                           <div class="footer">
                               <button class="btn btn-simple" onclick="rotateCard(this)">
                               <p class="text-white">Already A Member ? <a href="#login">Login Here</a></p>
                               </button>
                           </div>
                       </div>
                   </div> <!-- end front panel -->
                   <!-- backward of card -->
                    <div id="login" class="back">
						<div class="cover text-center">
							<div class="alert alert-warning" role="alert">
							  WELCOME TO CITISON
							</div>
                           <img src="./img/Image.png"/>
                       </div>
                       <div class="content" style="background-color:black;
                       color:goldenrod;">
                           <div class="main">
                                  <form action="<%=request.getContextPath()%>/login" method="post" class="display-block">
                                  <div id="status" class="alert alert-warning" role="alert">
									  	
									  </div>
		                           
				                       <input type="text" id="username" name="username" placeholder="User Name or Email" class="form-control my-3">
				                       <input type="password" id="password" name="password" placeholder="password" class="form-control my-3">
				                 
				                      <label> <span class="text text-info"><h6><input type="checkbox"> Keep Me Logged In</h6></span></label>
				                     
				                       <h6><a href="forgotPassword.jsp" class="text text-info m-auto">Forgot Password??</a></h6>
				                     
				                       <button type="submit" class="btn btn-info mt-3" name="submit" onclick="validateForm()">Log In</button>
				                      
				                      <div class="g-signin2" data-width="300" data-height="200" data-longtitle="true"></div>
		                       </form>
                                  
                           </div>
                       <div class="footer">
                           <button class="btn btn-simple" onclick="rotateCard(this)">
                            <p class="text-white">Still Not A Member ?<a href="#signup"> SignUp Here</a> </p>
                           </button>
                        </div>
                       </div>

                   </div> <!-- end back panel -->
               </div> <!-- end card -->
           </div> <!-- end card-container -->
       </div> <!-- end col -->

</div>



<%@include file="Footer.jsp" %>

