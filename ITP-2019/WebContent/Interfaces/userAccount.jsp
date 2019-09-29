<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head> 
<%@page import="java.util.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.IOException" %>
<%@page import="javax.servlet.http.HttpSession" %>
<title>Account</title>

    <%@include file="Header.jsp" %>
    <%@include file="Navbar.jsp" %>
</head>
<body>
<%
		String uId = request.getParameter("userID");
		request.getSession(false).getAttribute("userID");
		Class.forName("com.mysql.jdbc.Driver");
		String username=null;
		String email=null;
		String password=null;
		String fName=null;
		String lname=null;	
		String contact=null;
		String createDate=null;
		String lastLogged=null;
		int cusID;
		String userImg="./img/avatar.png";
		String street=null;
		String city=null;
		String state=null;
		
		try{
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/itp_2019",
		            "root", "12345");
		Statement st = connection.createStatement();
		st.executeQuery("select * from user where userID="+uId);
		ResultSet rs = st.getResultSet();
				while(rs.next()){
					 username = rs.getString("username");
					 email = rs.getString("email");
					 fName = rs.getString("fName");
					 lname = rs.getString("lname");
					 contact = rs.getString("contact");
					 createDate = rs.getString("createDate");
					 lastLogged = rs.getString("lastUpdate");
					
					 if(fName == null){
						 fName = "Enter Your First Name";
					 }if(lname == null){
						 lname = "Enter Your Last Name";
					 }if(contact == null){
						 contact = "Enter Your Contact Number";
					 }
				}
		
		Statement st1 = connection.createStatement();
		st1.executeQuery("select * from customer where customerName='"+username+"' ");
		ResultSet rs1 = st1.getResultSet();
					while(rs1.next()){
						 street = rs1.getString("street");
						 city=rs1.getString("city");
						 state=rs1.getString("state");
						
						 System.out.print(createDate);
						 if(street == null){
							 street = "State";
						 }if(city == null){
							 city = "City";
						 }if(state == null){
							 state = "State";
						 }
						 
						 System.out.print(state);
					}
		}catch (Exception e) {
		            e.printStackTrace();
		        }
		
	
%>

<div class="pt-5 container">
    <div class="row my-2">
        <div class="col-lg-8 order-lg-2">
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a href="" data-target="#profile" data-toggle="tab" class="nav-link active">Profile</a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#messages" data-toggle="tab" class="nav-link">Notifications</a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#edit" data-toggle="tab" class="nav-link">Account Settings</a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#edit" data-toggle="tab" class="nav-link">My Cart</a>
                </li>
            </ul>
            <div class="tab-content py-4">
                <div class="tab-pane active" id="profile">
                    <h5 class="mb-3"><labal>Username : &nbsp;<%=username %> </labal></h5>
                    <div class="row">
                        <div class="col-md-6">
                             <h6 class="mt-2"><labal>Email : &nbsp; <%=email %> </labal></h6>
                             <h6 class="mt-2"><labal>Currency : </labal>SLR</h6>
				                        </div>
                        <div class="col-md-12">
                            <h5 class="mt-2"><span class="fa fa-clock-o ion-clock float-right"></span> Recent Activity</h5>
                            <table class="table table-sm table-hover table-striped">
                                <tbody>                                    
                                    <tr>
                                        <td>
                                            Last Logged In : <strong><%=lastLogged%></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Recent Purchases :   <strong>`Discussions`</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        <form role="form" action="deleteUser.jsp" method="post">
                                            Account Status : <strong>Active</strong>
                                            <inout type="hidden" name="uid" value="<%=uId%>">
                                           <button type="submit" name="deactivate">Deactivate Account</button>
                                         </form>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--/row-->
                </div>
                <div class="tab-pane" id="messages">
                    <div class="alert alert-info alert-dismissable">
                        <a class="panel-close close" data-dismiss="alert">×</a> This is an <strong>.alert</strong>. Use this to show important messages to the user.
                    </div>
                    <table class="table table-hover table-striped">
                        <tbody>                                    
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">3 hrs ago</span> Here is your a link to the latest summary report from the..
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">Yesterday</span> There has been a request on your account since that was..
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">9/10</span> Porttitor vitae ultrices quis, dapibus id dolor. Morbi venenatis lacinia rhoncus. 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">9/4</span> Vestibulum tincidunt ullamcorper eros eget luctus. 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <span class="float-right font-weight-bold">9/4</span> Maxamillion ais the fix for tibulum tincidunt ullamcorper eros. 
                                </td>
                            </tr>
                        </tbody> 
                    </table>
                </div>
                <div class="tab-pane" id="edit">
                    <form role="form" action="<%= request.getContextPath() %>/updateUser" method="post">
                    
                                <input class="form-control" type="hidden" name="uID" value="<%= session.getAttribute("uid") %>">
                            
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Username</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="username" value="<%=username %>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">First name</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="fName" value="<%=fName %>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Last name</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="lname" value="<%=lname %>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Email</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="email" name="email" value="<%=email %>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Contact Number</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="tel" name="contact" value="<%=contact %>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Address</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="street" value="<%=street%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-6">
                                <input class="form-control" type="text" name="city" value="<%=city %>">
                            </div>
                            <div class="col-lg-3">
                                <input class="form-control" type="text" name="state" value="<%=state%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Password</label>
                            <div class="col-lg-9">
                                <input type="button" class="btn-sm btn-primary" value="Reset Password"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
                                <input type="reset" class="btn btn-secondary" value="Cancel">
                                <input type="submit" name="submt" class="btn btn-primary" value="Save Changes">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-3 order-lg-1 text-center">
            <img src="<%=userImg%>" class="mx-auto img-fluid img-circle d-block rounded-circle" alt="avatar">
                       <label class="custom-file mb-5">
				                <input type="file" id="file" class="custom-file-input">
				                <span type="button" class="btn btn-primary">Update </span>
				            </label>
				         <label class="custom-file mt-5">
				         	<h6 class=""><labal>Member Since : &nbsp; <%=createDate %> </labal></h6>
           				</label>
        </div>
    </div>
</div>

<%@include file="Footer.jsp" %>