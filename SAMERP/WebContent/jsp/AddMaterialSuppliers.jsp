<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="utility.RequireData"%>
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
    <li><a href="index.html"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li class="submenu active"> <a href="#"><i class="icon icon-th-list"></i> <span>Settings</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="/SAMERP/jsp/AddMaterialSuppliers.jsp">Add Material Suppliers</a></li>
        
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
    <div id="breadcrumb"> <a href="index.html" class="tip-bottom" data-original-title="Go to Home"><i class="icon-home">
    </i> Home</a> <a href="#" class="current">Add Material Suppliers</a> </div>
  </div>
<!--End-breadcrumbs-->
<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span7">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Add Data</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="/SAMERP/addSupplyMaterial" method="post" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Suppliers-Business Name:</label>
              <div class="controls">
                <input type="text" name="suppbusinesname" class="span11" placeholder="Suppliers-Business Name" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Suppliers Name:</label>
              <div class="controls">
                <input type="text" name="suppname" class="span11" placeholder="Suppliers Name" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Suppliers Address</label>
              <div class="controls">
                <input type="text" name="address" class="span11" placeholder="Suppliers Address"  />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Suppliers Contact :</label>
              <div class="controls">
                <input type="text" name="contact" class="span11" placeholder="Suppliers Contact" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Opening Balance :</label>
              <div class="controls">
                <input type="number" name="openingbalance" class="span11" placeholder="Opening Balance" />
              </div>
            </div>
            <div class="form-actions">
            <button type="submit" name="insertsupply" class="btn btn-success" style="position:relative; right:130px;float:right;">OK</button>
              <a href="/SAMERP/index.jsp"><button type="button" class="btn btn-danger " style="position:relative; left:20px;float:right;">CANCEL</button></a>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="row-fluid">
  	<div class="span11">
  		<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5>Suppliers Material Data</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>S.No.</th>
                  <th>Supplier's Business Name</th>
                  <th>Supplier'Name</th>
                  <th>Address</th>
                  <th>Contact</th>
                  <th>Opening Balance</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
              <%RequireData rd=new RequireData();
              	List getMSPData=rd.getMaterialSupplyData();
              	if(getMSPData!=null){
              	Iterator itr=getMSPData.iterator();
              	int i=1;
              	while(itr.hasNext()){ Object mspId=itr.next();
              	%>
                <tr>
                  <td style="text-align: center"><%=i %><% i++; %></td>
                  <td style="text-align: center" value="<%=mspId%>"><%=itr.next() %></td>
                  <td style="text-align: center"><%=itr.next() %></td>
                  <td style="text-align: center"><%=itr.next() %></td>
                  <td style="text-align: center"><%=itr.next() %></td>
                  <td style="text-align: center"><%=itr.next() %></td>
                  <td style="text-align: center"><a href="#">Update</a>|<a href="/SAMERP/addSupplyMaterial?deleteId=<%=mspId%>">Delete</a></td>
                </tr>
                <%}} %>
              </tbody>
            </table>
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
