<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="utility.RequireData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SAMERP PROJECT</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/SAMERP/config/css/bootstrap.min.css" />
<link rel="stylesheet" href="/SAMERP/config/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="/SAMERP/config/css/fullcalendar.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-style.css" />
<link rel="stylesheet" href="/SAMERP/config/css/uniform.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-media.css" />
<link href="/SAMERP/config/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="/SAMERP/config/css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
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
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="/SAMERP/index.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li class="submenu active open"> <a href="#"><i class="icon icon-th-list"></i> <span>Settings</span> <span class="label label-important">7</span></a>
      <ul>
        <li><a href="/SAMERP/jsp/admin/settings/addMaterialSuppliers.jsp">Add Material Supplier</a></li>
        <li><a href="/SAMERP/jsp/admin/settings/addEmployee.jsp">Add Employee</a></li>
        <li class="active"><a href="/SAMERP/jsp/admin/settings/addOrganization.jsp">Add Organization</a></li>
      </ul>
    </li>
    
    <li> <a href="charts.html"><i class="icon icon-signal"></i> <span>Charts &amp; graphs</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Widgets</span></a> </li>
    <li><a href="tables.html"><i class="icon icon-th"></i> <span>Tables</span></a></li>
    <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>Full width</span></a></li>
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
    <div id="breadcrumb"> <a href="index.html" class="tip-bottom" data-original-title="Go to Home"><i class="icon-home"></i> Home</a> <a href="#" class="current">Add Organization</a> </div>
  </div>
<!--End-breadcrumbs-->
<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span12">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Add Organization</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="/SAMERP/AddOrganization" method="post" class="form-horizontal" enctype="multipart/form-data">
            <div class="control-group">
              <label class="control-label"> Organization Name :</label>
              <div class="controls">
                <input type="text" name="organizationname" id="organizationname" class="span6" placeholder="Organization Name" onkeyup="this.value=this.value.toUpperCase()" required/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Address :</label>
              <div class="controls">
                <input type="text" name="address" class="span6" placeholder="Address" onkeyup="this.value=this.value.toUpperCase()" maxlength="10" required/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Contact No. :</label>
              <div class="controls">
                <input type="text" name="contactno1" class="span3" placeholder="Contact Number" onkeypress="return isNumber(event)" maxlength="10" required/> &nbsp; / &nbsp;
                <input type="text" name="contactno2" class="span3" placeholder="Contact Number" onkeypress="return isNumber(event)" maxlength="10" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Email :</label>
              <div class="controls">
                <input type="text" name="email" class="span6" placeholder="Email" />
              </div>
            </div>

            <div class="control-group">
              <label class="control-label">Upload Logo</label>
              <div class="controls">
                <input type="file" name="logo_upload" />
              </div>
            </div>
            
            <div class="form-actions" >
            <button type="submit" name="insertorganizer" class="btn btn-success"         style="position:relative; right:700px; float:right;">Submit</button>
              <a href="/SAMERP/index.jsp"><button type="button" class="btn btn-danger " style="position:relative; right:550px;   float:right;">Exit</button></a>
            </div>  
          </form>
        </div>
      </div>
    </div>
  </div>
  

  	</div>

</div>

<!--end-main-container-part-->

<!--Footer-part-->

<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
</div>

<!--end-Footer-part-->

<script>
function myFunction() {
    var x = document.getElementById("snackbar")
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && ( charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}

function setFocusToTextBox() {
	document.getElementById("organizationname").focus();
	myFunction();
}

</script>
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
