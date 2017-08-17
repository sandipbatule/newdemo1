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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/SAMERP/config/css/fullcalendar.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-style.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-media.css" />
<link href="/SAMERP/config/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="/SAMERP/config/css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Matrix Admin</a></h1>
</div>

<!--start-top-serch-->
<div id="search">

  <button type="submit" class="tip-bottom">LOGOUT</button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="/SAMERP/index.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Settings</span> <span class="label label-important">1</span></a>
      <ul>
        <li><a href="/SAMERP/jsp/admin/settings/addMaterialSuppliers.jsp">Add Material Suppliers</a></li>
        <li><a href="/SAMERP/jsp/admin/settings/addVehicles.jsp">Add Vehicles</a></li>
        
        
      </ul>
    <li> <a href="charts.html"><i class="icon icon-signal"></i> <span>Charts &amp; graphs</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Widgets</span></a> </li>
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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
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
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Dealer Details </h5>
        </div>
        <div class="widget-content nopadding" >
          <form action="/SAMERP/AddVehicles" method="post" class="form-horizontal" name="form1">
            
            <div class="control-group">
              <label class="control-label"><span style="color: red;">*</span>Vehicle Type :</label>
              <div class="controls">
                <input type="text" class="span3" placeholder="Vehicle Type" onkeyup="this.value=this.value.toUpperCase()" name="vehicle_type" id="vehicle_type" required  />
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
              <label class="control-label" style="margin-bottom: 15px;">Choose Facility : </label>
              <div class="controls">
                <label style="position: relative; float: left; " onclick="getRateText1()"><input type="radio" name="radios" id="service" /> <span> Service </span>  </label>
                <label style="position: relative; float: right; right: 750px; " onclick="getRateText()"><input type="radio" name="radios" id="transport"  /> <span> Transport </span> </label>
              </div>
            </div>
             
             <div class="control-group">
              <label class="control-label">Rate : </label>
              <div class="controls">
                <div class="input-append">
                  <input type="text" placeholder="0000" class="span2" id="rateText" disabled="disabled">
                  <span class="add-on"><i class="fa fa-inr" style="font-size: 1.5em;"></i></span> </div>
              </div>
            </div>
          
            <div class="form-actions" align="center">
              <button type="submit" id="submitbtn"  class="btn btn-success">Submit</button> &nbsp;&nbsp;&nbsp;&nbsp;
              <a href="" id="cancelbtn"  class="btn btn-danger">Exit</a>
            </div>
          </form>
          
        </div>
      </div>
     
    
	<div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
         <h5>Dealer List</h5>
            <span class="label label-important" name="dealerCount" id="dealerCount" style="height: 15px; width: 15px;"><p>	</p></span>
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
              %>            
                    	<tr class="gradeX">
  							<td> <%=i %></td>
	                      	<td id="<%=vehicleId%>"><%=vehicleType%></td>
	                        <td><%=vehicleNumber%></td>
	                        <td>  </td>
	                        <td> <a href="" onclick="confirm()" >Delete</a> / <a href="" >Update</a></td>
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

<script type="text/javascript">

function getRateText(){
	if(document.getElementById("transport").value=="on"){
		document.getElementById("rateText").disabled=false;
	} 
}

function getRateText1(){
	if(document.getElementById("service").value=="on"){
		document.getElementById("rateText").disabled=true;
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
