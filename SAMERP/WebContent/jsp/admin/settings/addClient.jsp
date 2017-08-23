<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="dao.General.GenericDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.*"%>
<%@ page import="utility.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SAMERP PROJECT</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/SAMERP/config/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="/SAMERP/config/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="/SAMERP/config/css/fullcalendar.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-style.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-media.css" />
<link href="/SAMERP/config/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link rel="stylesheet" href="/SAMERP/config/css/jquery.gritter.css" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800'
	rel='stylesheet' type='text/css'>
	
	<style>
#snackbar {
    visibility: hidden;
    min-width: 250px;
    margin-left: -125px;
    background-color: #333;
    color: #fff;
    text-align: center;
    border-radius: 2px;
    padding: 16px;
    position: fixed;
    z-index: 1;
    left: 50%;
    bottom: 30px;
    font-size: 15px;
    border-radius:50px 50px;
}

#snackbar.show {
    visibility: visible;
    -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
    animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@-webkit-keyframes fadein {
    from {bottom: 0; opacity: 0;} 
    to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
    from {bottom: 0; opacity: 0;}
    to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
    from {bottom: 30px; opacity: 1;} 
    to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
    from {bottom: 30px; opacity: 1;}
    to {bottom: 0; opacity: 0;}
}
</style>
</head>



<body onload=" setFocusToTextBox()">

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Matrix Admin</a></h1>
</div>

<!--start-top-serch-->
<div id="search">

<% if(request.getAttribute("status")!=null){ %>
<div id="snackbar"><%=request.getAttribute("status")%></div>
<%} %>

  <button type="submit" class="tip-bottom">LOGOUT</button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="fa fa-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="/SAMERP/index.jsp"><i class="fa fa-home"></i> <span>Dashboard</span></a> </li>
    <li class="submenu"> <a href="#"><i class="fa fa-th-list"></i> <span>Settings</span> <span class="label label-important">4</span></a>
      <ul>
        <li><a href="/SAMERP/jsp/admin/settings/addMaterialSuppliers.jsp">Add Material Suppliers</a></li>
        <li><a href="/SAMERP/jsp/admin/settings/addVehicles.jsp">Add Vehicles</a></li>
         <li><a href="/SAMERP/jsp/admin/settings/addClient.jsp">Add Clients</a></li>
        <li><a href="/SAMERP/jsp/admin/settings/addAccountDetails.jsp">Add Account Details</a></li>
        
      </ul>
    <li> <a href="charts.html"><i class="fa fa-signal"></i> <span>Charts &amp; graphs</span></a> </li>
    <li> <a href="widgets.html"><i class="fa fa-inbox"></i> <span>Widgets</span></a> </li>
    <li><a href="tables.html"><i class="icon icon-th"></i> <span>Tables</span></a></li>
    <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>Full width</span></a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Forms</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="form-common.html">Basic Form</a></li>
        <li><a href="form-validation.html">Form with Validation</a></li>
        <li><a href="form-wizard.html">Form with Wizard</a></li>
      </ul>
    </li>
    <li><a href="buttons.html"><i class="icon icon-tint"></i> <span>Buttons &amp; icons</span></a></li>
    <li><a href="interface.html"><i class="icon icon-pencil"></i> <span>Eelements</span></a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>Addons</span> <span class="label label-important">5</span></a>
      <ul>
        <li><a href="index2.html">Dashboard2</a></li>
        <li><a href="gallery.html">Gallery</a></li>
        <li><a href="calendar.html">Calendar</a></li>
        <li><a href="invoice.html">Invoice</a></li>
        <li><a href="chat.html">Chat option</a></li>
      </ul>
    </li>
  </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->

  <div id="content-header">
    <div id="breadcrumb"> <a href="/SAMERP/index.jsp" title="Go to Home" class="tip-bottom"><i class="fa fa-home"></i> Home</a> <a href="#" class="current">Add Client</a> </div>
  	<h1>Add Client Form</h1>
  </div>	
		<div class="container-fluid">
			<hr>
			  <%
          		 RequireData rq = new RequireData();
             %>
			<div class="row-fluid">
				<div class="span15">
					<div class="widget-box">
						<div class="widget-title">
							<span class="icon"> <i class="icon-align-justify"></i>
							</span>
							<h5>Add Client</h5>
						</div>
						<div class="widget-content nopadding">
							<form action="/SAMERP/AddClient" method="Post"
								class="form-horizontal" onsubmit="return validateForm()">
								<div class="control-group">
									<label class="control-label">Client Orgnization Name:</label>
									<div class="controls">
										<input type="text" id="coname" name="coname" class="span6" onkeyup="this.value=this.value.toUpperCase()"
											placeholder="Client Orgnization Name" pattern="[a-z A-Z]*" required />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Name:</label>
									<div class="controls">
										<input type="text" name="cname" class="span6" onkeyup="this.value=this.value.toUpperCase()"
											placeholder="Client Name" pattern="[a-z A-Z]*" required />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Contact No1:</label>
									<div class="controls">
										<input type="text" name="contactno1" id="validateno1" class="span6" 
											placeholder="Client ContactNo1 " onkeyup="this.value=this.value.toUpperCase()" pattern="[0-9]*" required />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Client Contact No2:</label>
									<div class="controls">
										<input type="text" name="contactno2" id="validateno2"class="span6"
											placeholder="Client ContactNo2 " onkeyup="this.value=this.value.toUpperCase()" pattern="[0-9]*" required />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Client EmailId:</label>
									<div class="controls">
										<input type="email" class="span6"  name="email" 
											placeholder="Client Email Id" required />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Address:</label>
									<div class="controls">
										<textarea type="text" class="span6" name="address" onkeyup="this.value=this.value.toUpperCase()"
											placeholder="Client Address" pattern="[a-z A-Z]*" maxlength="200" required ></textarea>

									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Balance Amount:</label>
									<div class="controls">

										<input type="text" name="bamount"
											placeholder="Client Balance Amount" class="span6" onkeyup="this.value=this.value.toUpperCase()"
											pattern="[0-9]*" required />
									</div>
								</div>
								<div class="form-actions" style="padding-left: 350px">
									<button type="submit" name="insert" class="btn btn-success">Submit</button>
									<button type="submit"  class="btn btn-danger">Cancel</button>
								</div>
							</form>
						</div>
					</div>



	<div class="widget-box">
		<div class="widget-title"> <span class="icon"><i class="fa fa-th"></i></span>
         <h5>Client Details </h5>
         <%
	         List rowCountList = rq.getClientRowCount();
	         String rowCount = rowCountList.get(0).toString();
         %>
            <span class="label label-important" name="clientCount" id="clientCount" style="height: 15px; width: 15px;"><p><%=rowCount %></p></span>
          </div>
		<div class="widget-content nopadding">
		 <form name="form2" id="dealerTable" method="post">
			<table class="table table-bordered data-table">
				<thead>
					<th>client_id</th>
					<th>client_orgnization_name</th>
					<th>client_name</th>
					<th>client_contactno1</th>
					<th>client_contactno2</th>
					<th>client_email</th>
					<th>client_address</th>
					<th>client_balance_amount</th>
					<th>Action</th>
				</thead>
				<%
					int id = 0,count=1;
					RequireData rd = new RequireData();
					List l = rd.getClientDetails();
					if (l != null) {
						Iterator itr = l.iterator();
				%>
				<tbody>
					<%
						while (itr.hasNext()) 
						{
							String id1 = itr.next().toString();
								
					%>
					<tr class="gradeX">
						<td id="<%=id1%>"><%=count%></td>
						<td><%=itr.next()%>
						<td><%=itr.next()%>
						<td><%=itr.next()%>
						<td><%=itr.next()%>
						<td><%=itr.next()%>
						<td><%=itr.next()%>
						<td><%=itr.next()%>
						<td><a href="#myModal" data-toggle="modal" onclick='searchName(<%=id1%>)'>Update</a> / <a href="/SAMERP/AddClient?delete=<%=id1%>">Delete</a></td>
					</tr>
					<%
					count++;
						}
						}
					%>
				</tbody>
			</table>
			</form>
		</div>
	</div>
	</div>
	
				</div>
			</div>
		</div>
	
	
	<!-- Modal -->
<div id="myModal" class="modal hide fade" role="dialog" style="width: 55%; margin-left: -28%;">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Update Client Details</h4>
      </div>
      <div class="modal-body">
      
     					<form action='/SAMERP/AddClient' name="form2" method="Post"
								class="form-horizontal" >
								<div class="control-group">
									<label class="control-label">Client Orgnization Name:</label>
									<div class="controls">
									    <input type="hidden" id="Updateid" name="Updateid"/>
										<input type="text" name="coname" id="Updateconame" class="span4"
											placeholder="Client Orgnization Name" onkeyup="this.value=this.value.toUpperCase()" required />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Name:</label>
									<div class="controls">
										<div class="input-append">
										<input type="text" name="cname" id="Updatecname"  class="span4"
											placeholder="Client Name" onkeyup="this.value=this.value.toUpperCase()"required />
											</div>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Contact No1:</label>
									<div class="controls">
										<input type="text" name="contactno1" id="Updatecontactno1" class="span4"
											placeholder="Client ContactNo1 " onkeyup="this.value=this.value.toUpperCase()"required />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Client Contact No2:</label>
									<div class="controls">
										<input type="text" name="contactno2" id="Updatecontactno2"  class="span4"
											placeholder="Client ContactNo2 " onkeyup="this.value=this.value.toUpperCase()" required />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Client EmailId:</label>
									<div class="controls">
										<input type="email" class="span4" name="email" id="Updateemail" 
											placeholder="Enter Client Email Id"  required />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Address:</label>
									<div class="controls">
										<textarea type="text" class="span4" name="address" id="Updateaddress" 
											placeholder="Client Address" requonkeyup="this.value=this.value.toUpperCase()" required ></textarea>

									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Balance Amount:</label>
									<div class="controls">

										<input type="text" name="bamount" id="Updatebamount" 
											placeholder="Client Balance Amount" class="span4" onkeyup="this.value=this.value.toUpperCase()"
											required />
									</div>
								</div>
								<div class="form-actions" style="padding-left: 450px">
									<button type="submit" name="save" class="btn btn-success" >Update</button>
									<button type="button" class="btn btn-danger" data-dismiss="modal" >Close</button>
								</div>
							</form>
      </div>
      
    </div>

  </div>
  </div>
 <!--  modal end -->
<script type="text/javascript">

function searchName(id1) {
	
	var xhttp;
	xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			
			var demoStr = this.responseText.split(",");
			"WebContent/jsp/admin/settings/addClient.jsp"
			document.getElementById("Updateid").value = demoStr[0];
			document.getElementById("Updateconame").value = demoStr[1];
			document.getElementById("Updatecname").value = demoStr[2];
			document.getElementById("Updatecontactno1").value = demoStr[3];
			document.getElementById("Updatecontactno2").value = demoStr[4];
			document.getElementById("Updateemail").value = demoStr[5];
			document.getElementById("Updateaddress").value = demoStr[6];
			document.getElementById("Updatebamount").value = demoStr[7];
			
			
			}
		};
	xhttp.open("POST","/SAMERP/AddClient?updateid="+id1, true);
	xhttp.send();
	
	
}

function myFunction() {
    var x = document.getElementById("snackbar")
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}

function showModal(){
	var someVarName = localStorage.getItem("someVarName");
	if(someVarName>0)
		{
			$('#myModal').modal('show');
		}
	localStorage.setItem('someVarName', null);
}

function setFocusToTextBox()
{
	document.getElementById("coname").focus();
	showModal();   	
	 myFunction();
}


</script>

	<!--end-Footer-part-->

	<script src="/SAMERP/config/js/excanvas.min.js"></script>
	<script src="/SAMERP/config/js/jquery.min.js"></script>
	<script src="/SAMERP/config/js/jquery.ui.custom.js"></script>
	<script src="/SAMERP/config/js/bootstrap.min.js"></script>
	<script src="/SAMERP/config/js/jquery.flot.min.js"></script>
	<script src="/SAMERP/config/js/jquery.flot.resize.min.js"></script>
	<script src="/SAMERP/config/js/jquery.peity.min.js"></script>
	<script src="/SAMERP/config/js/fullcalendar.min.js"></script>
	<script src="/SAMERP/config/js/matrix.js"></script>
	<script src="/SAMERP/config/js/matrix.dashboard.js"></script>
	<script src="/SAMERP/config/js/jquery.gritter.min.js"></script>
	<script src="/SAMERP/config//SAMERP/config/js/matrix.interface.js"></script>
	<script src="/SAMERP/config/js/matrix.chat.js"></script>
	<script src="/SAMERP/config/js/jquery.validate.js"></script>
	<script src="/SAMERP/config/js/matrix.form_validation.js"></script>
	<script src="/SAMERP/config/js/jquery.wizard.js"></script>
	<script src="/SAMERP/config/js/jquery.uniform.js"></script>
	<script src="/SAMERP/config/js/select2.min.js"></script>
	<script src="/SAMERP/config/js/matrix.popover.js"></script>
	<script src="/SAMERP/config/js/jquery.dataTables.min.js"></script>
	<script src="/SAMERP/config/js/matrix.tables.js"></script>
</body>
</html>