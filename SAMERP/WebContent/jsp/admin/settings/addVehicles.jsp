<%@page import="utility.RequireData"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>SAMERP PROJECT</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/SAMERP/config/css/bootstrap.min.css" />
<link rel="stylesheet" href="/SAMERP/config/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="/SAMERP/config/css/fullcalendar.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-style.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-media.css" />
<link href="/SAMERP/config/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="/SAMERP/config/css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

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
<body onload="setFocusToTextBox()">

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
    <li class="submenu"> <a href="#"><i class="fa fa-th-list"></i> <span>Settings</span> <span class="label label-important">1</span></a>
      <ul>
        <li><a href="/SAMERP/jsp/admin/settings/addMaterialSuppliers.jsp">Add Material Suppliers</a></li>
        <li><a href="/SAMERP/jsp/admin/settings/addVehicles.jsp">Add Vehicles</a></li>
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
    <div id="breadcrumb"> <a href="/SAMERP/index.jsp" title="Go to Home" class="tip-bottom"><i class="fa fa-home"></i> Home</a> <a href="#" class="current">Add Vehicles</a> </div>
  	<h1>Add New Vehicle</h1>
  </div>
<!--End-breadcrumbs-->


<!--Action boxes-->
  <div class="container-fluid"> 
    <hr>
    <%
          	 RequireData rd = new RequireData();
    %>
    <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="fa fa-align-justify"></i> </span>
          <h5>Dealer Details </h5>
        </div>
        <div class="widget-content nopadding" >
          <form action="/SAMERP/AddVehicles" method="post" class="form-horizontal" name="form1">
            
            <div class="control-group">
              <label class="control-label"><span style="color: red;">*</span>Vehicle Type :</label>
              <div class="controls">
<!--                 <input type="text" class="span3" placeholder="Vehicle Type" onkeyup="this.value=this.value.toUpperCase()" name="vehicle_type" id="vehicle_type" required  /> -->
                <select class="span3" name="vehicle_type" id="vehicle_type" onchange="getRateText()" required >
                	<option value=""> Select </option>
                	<option value="JCB">JCB</option>
                	<option value="POCLAIN">POCLAIN</option>
                	<option value="TRUCK">TRUCK</option>
                </select>
              </div>
            </div>
            
            <div class="control-group">
              <label class="control-label"><span style="color: red;">*</span>Vehicle Number :</label>
              <div class="controls">
                <input type="text" class="span1" placeholder="XX" style="width: 35px;" onkeyup="this.value=this.value.toUpperCase()" name="vehicleno1"  pattern="[A-Za-z]+" maxlength="2" required />  &ndash; 
                <input type="text" class="span1" placeholder="XX" style="width: 35px;" name="vehicleno2"  pattern="[0-9]+" maxlength="2" required />  &ndash; 
                <input type="text" class="span1" placeholder="XX" style="width: 35px;" onkeyup="this.value=this.value.toUpperCase()" name="vehicleno3"  pattern="[A-Za-z]+" maxlength="2" required />  &ndash;
                <input type="text" class="span2" placeholder="XXXX" style="width: 70px;" name="vehicleno4" pattern="[0-9]+" maxlength="4" required />
              </div>
            </div>
            
             
             <div class="control-group">
              <label class="control-label"><span id="required1" style="color: red;"></span>Rate : </label>
              <div class="controls">
                <div class="input-append">
                  <input type="text" placeholder="0000" required class="span2" style="width: 230px;" id="rateText" name="rateText" disabled="disabled">
                  <span class="add-on"><i class="fa fa-inr" style="font-size: 1.5em;"></i></span> </div>
              </div>
            </div>
          
            <div class="form-actions" align="center">
              <button type="submit" id="submitbtn" name="submit" class="btn btn-success">Submit</button> &nbsp;&nbsp;&nbsp;&nbsp;
              <a href="" id="cancelbtn"  class="btn btn-danger">Exit</a>
            </div>
          </form>
          
        </div>
      </div>
     
    
	<div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="fa fa-th"></i></span>
         <h5>Dealer List</h5>
         <%
	         List rowCountList = rd.getVehicleRowCount();
	         String rowCount = rowCountList.get(0).toString();
         %>
            <span class="label label-important" name="dealerCount" id="dealerCount" style="height: 15px; width: 15px;"><p><%=rowCount %></p></span>
          </div>
          <div class="widget-content nopadding">
           <form name="form2" id="dealerTable" method="post">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>Sr. No.</th>
                  <th>Vehicle Type</th>
                  <th>Vehicle Number</th>
                  <th>Rate</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
              
              <%
              
             List vehicleDetailsData =rd.getVehiclesData();
             int i=1;
             
             if(vehicleDetailsData!=null)
             {
                Iterator itr = vehicleDetailsData.iterator();	 
            	 
                while(itr.hasNext())
                {
                	String vehicleId = itr.next().toString();
                	String vehicleType = itr.next().toString();
                	String vehicleNumber = itr.next().toString();
                	String vehicleRate = itr.next().toString();
              %>            
                    	<tr class="gradeX">
  							<td> <%=i %></td>
	                      	<td id="<%=vehicleId%>"><%=vehicleType%></td>
	                        <td><%=vehicleNumber%></td>
	                        <td> <%=vehicleRate%> </td>
	                        <td> <a href="/SAMERP/AddVehicles?deleteid=<%=vehicleId%>" >Delete</a> / <a href="#update" data-toggle="modal"  onclick="searchName(<%=vehicleId%>)">Update</a></td>
                     	</tr>
             <%
                     	i++;
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

<!--end-main-container-part-->


<div class="modal hide fade" id="update" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			<h4 class="modal-title">Update Dealer Details</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" action="/SAMERP/AddVehicles" method="post" name="updateVehicle">
					<div class="form-group">
						<div class="widget-content nopadding">
          
				            <div class="control-group">
				              <label class="control-label"><span style="color: red;">*</span>Vehicle Type :</label>
				              <div class="controls">
				              		<input type="hidden" name="Updatevehicle_id" id="Updatevehicle_id" />
				<!--                 <input type="text" class="span3" placeholder="Vehicle Type" onkeyup="this.value=this.value.toUpperCase()" name="vehicle_type" id="vehicle_type" required  /> -->
				                <select class="span3" name="Updatevehicle_type" id="Updatevehicle_type" onchange="getRateText1()" required >
				                	<option value=""> Select </option>
				                	<option value="JCB">JCB</option>
				                	<option value="POCLAIN">POCLAIN</option>
				                	<option value="TRUCK">TRUCK</option>		
				                </select>
				              </div>
				            </div>
				            
				            <div class="control-group">
				              <label class="control-label"><span style="color: red;">*</span>Vehicle Number :</label>
				              <div class="controls">
				                <input type="text" class="span1" placeholder="XX" style="width: 35px;" onkeyup="this.value=this.value.toUpperCase()" name="Updatevehicleno1" id="Updatevehicleno1"  pattern="[A-Za-z]+" maxlength="2" required />  &ndash; 
				                <input type="text" class="span1" placeholder="XX" style="width: 35px;" name="Updatevehicleno2" id="Updatevehicleno2"  pattern="[0-9]+" maxlength="2" required />  &ndash; 
				                <input type="text" class="span1" placeholder="XX" style="width: 35px;" onkeyup="this.value=this.value.toUpperCase()" name="Updatevehicleno3" id="Updatevehicleno3"  pattern="[A-Za-z]+" maxlength="2" required />  &ndash;
				                <input type="text" class="span2" placeholder="XXXX" style="width: 70px;" name="Updatevehicleno4" id="Updatevehicleno4" pattern="[0-9]+" maxlength="4" required />
				              </div>
				            </div>
				            
				             
				             <div class="control-group">
				              <label class="control-label"><span id="required2" style="color: red;"></span>Rate : </label>
				              <div class="controls">
				                <div class="input-append">
				                <input type="hidden" name="oldRate" id="oldRate"/>
				                  <input type="text" placeholder="0000" required class="span2" style="width: 230px;" id="UpdateRateText" name="UpdaterateText" disabled="disabled">
				                  <span class="add-on"><i class="fa fa-inr" style="font-size: 1.5em;"></i></span> </div>
				              </div>
				            </div>
			            
				            <div class="modal-footer">
									<input type="submit" id="submitbtn" name="submitbtn" class="btn btn-primary" value="Update" />
									<input type="button" id="cancelbtn" class="btn btn-danger" data-dismiss="modal" value="Cancel"/>
							</div>
						</div>
					</div>
				</form>
			</div>
				
			</div>
		</div>
	</div>

            


<script type="text/javascript">


function searchName(id) {
	
	var xhttp;
	xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			
			var demoStr = this.responseText.split(",");
			
			document.getElementById("Updatevehicle_id").value = demoStr[0];
			document.getElementById("Updatevehicle_type").value = demoStr[1];
			
			var vehicleNumber = demoStr[2].split("-");
			
			document.getElementById("Updatevehicleno1").value = vehicleNumber[0];
			document.getElementById("Updatevehicleno2").value = vehicleNumber[1];
			document.getElementById("Updatevehicleno3").value = vehicleNumber[2];
			document.getElementById("Updatevehicleno4").value = vehicleNumber[3];
	
			
			document.getElementById("UpdateRateText").value = demoStr[3];
			document.getElementById("oldRate").value = document.getElementById("UpdateRateText").value;
			getRateText1();
			}
		};
	xhttp.open("POST","/SAMERP/AddVehicles?updateid="+id, true);
	xhttp.send();
	
	
}

function getSr(id){
    $('form2')
	var someVarName = id;
	localStorage.setItem("someVarName", someVarName);
	var f=document.getElementById("dealerTable");
    f.action='/SAMERP/jsp/admin/settings/addVehicles.jsp?vehicleRowId='+id;
    f.method="post";
    f.submit();  
}

function showModal(){
	var someVarName = localStorage.getItem("someVarName");
	 
	if(someVarName>0)
	{
		$('#update').modal('show');
		
		
	}
	localStorage.setItem('someVarName', null);
}

function setFocusToTextBox() {
	document.getElementById("vehicle_type").focus();
	showModal();
	myFunction();
}

function myFunction() {
    var x = document.getElementById("snackbar")
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}

function getRateText(){
	if(document.getElementById("vehicle_type").value=="TRUCK"){
		document.getElementById("rateText").disabled=true;
		document.getElementById("required1").innerHTML="";
	} 
	else{
		document.getElementById("rateText").disabled=false;
		document.getElementById("required1").innerHTML="*";
	}
}

function getRateText1(){
	if(document.getElementById("Updatevehicle_type").value=="TRUCK"){
		document.getElementById("UpdateRateText").disabled=true;
		document.getElementById("required2").innerHTML="";
	} 
	else{
		document.getElementById("UpdateRateText").disabled=false;
		document.getElementById("required2").innerHTML="*";
	}
}

</script>

<!--Footer-part-->

<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
</div>

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
