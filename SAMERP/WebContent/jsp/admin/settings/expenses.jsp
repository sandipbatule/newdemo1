<%@page import="utility.SysDate"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="utility.RequireData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<html lang="en">
<head>
<title>SAMERP PROJECT</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/SAMERP/config/css/bootstrap.min.css" />
<link href="/SAMERP/config/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="/SAMERP/config/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="/SAMERP/config/css/colorpicker.css" />
<link rel="stylesheet" href="/SAMERP/config/css/datepicker.css" />
<link rel="stylesheet" href="/SAMERP/config/css/uniform.css" />
<link rel="stylesheet" href="/SAMERP/config/css/select2.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-style.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-media.css" />
<link rel="stylesheet" href="/SAMERP/config/css/bootstrap-wysihtml5.css" />
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
<body onload="myFunction()">

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
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Settings</span> <span class="label label-important">7</span></a>
      <ul>
        <li><a href="/SAMERP/jsp/admin/settings/addMaterialSuppliers.jsp">Add Material Supplier</a></li>
        <li><a href="/SAMERP/jsp/admin/settings/addEmployee.jsp">Add Employee</a></li>
        <li><a href="/SAMERP/jsp/admin/settings/addAccountDetails.jsp">Add Account Details</a></li>
        <li><a href="/SAMERP/jsp/admin/settings/addOrganization.jsp">Add Organization</a></li>
      </ul>
    </li>
    <li  class="active"> <a href="/SAMERP/jsp/admin/settings/expenses.jsp"><i class="icon icon-money"></i> <span>Expenses</span></a> </li>
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
    </i> Home</a> <a href="#" class="current">Expenses</a> </div>
  </div>
<!--End-breadcrumbs-->
<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span6">
	   <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-group"></i> </span>
          <h5>GIVEN TO:-</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="/SAMERP/Expenses.do" method="post" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Giving To :</label>
              <div class="controls">
                <input type="text" class="span11" id="name" name="name" placeholder="Name" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Amount :</label>
              <div class="controls">
                <input type="text" name="amount" class="span11" placeholder="Amount" />
                </div>
            </div>
            <div class="control-group">
              <label class="control-label">Type :</label>
              <div class="controls">
                <select class="span11" name="type">
                  <option selected >Select</option>
                  <option value="CASH">CASH</option>
                  <% RequireData rd=new RequireData();
                  List aliasnamelist=rd.getBankAliasName();
                  if(aliasnamelist!=null){
	                  Iterator aliasitr=aliasnamelist.iterator();
	                  while(aliasitr.hasNext()){
	                  Object aliasname=aliasitr.next();%>
                  <option value="<%=aliasname%>"><%=aliasname %></option>
                  <%}} %>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Date :</label>
              <div class="controls">
              <% SysDate sd=new SysDate(); %>
                <input name="date" type="text" data-date="<%=sd.todayDate() %>" data-date-format="dd-mm-yyyy" value="<%=sd.todayDate() %>" class="datepicker span11">
                </div>
            </div>
            <div class="control-group">
              <label class="control-label">Reason :</label>
              <div class="controls">
                <input type="text" name="details" class="span11" placeholder="Reason" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Other Details :</label>
              <div class="controls">
                <textarea class="span11" name="other_details" ></textarea>
              </div>
            </div>
            <div class="form-actions" align="right">
              <button type="submit" name="save" class="btn btn-success">Save</button>
            </div>
          </form>
        </div>
      </div>
  </div>
</div>
  <div class="row-fluid">
  	<div class="span12">
  		<div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5>Expenses :</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>S.No.</th>
                  <th>Customer Name</th>
                  <th>Amount</th>
                  <th>Type</th>
                  <th>Date</th>
                  <th>Reason</th>
                  <th>Other Details</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
              <%RequireData rd1=new RequireData();
              	List getExpData=rd1.getExpensesDetails();
            	if(getExpData!=null){
            	Iterator getexpitr=getExpData.iterator();
            	int i=1;
            	while(getexpitr.hasNext()){ Object dataId=getexpitr.next();
              %>
                <tr>
                  <td style="text-align: center"><%=i %><% i++; %></td>
                  <td style="text-align: center" value="<%=dataId%>"><%=getexpitr.next() %></td>
                  <td style="text-align: center"><%=getexpitr.next() %></td>
                  <td style="text-align: center"><%=getexpitr.next() %></td>
                  <td style="text-align: center"><%=getexpitr.next() %></td>
                  <% Object detailsdata=getexpitr.next(); %>
                   <td style="text-align: center"><%if(detailsdata.equals("")){ %>-<%} else{%><%=detailsdata %><%} %></td>
                   <% Object otherdetailsdata=getexpitr.next(); %>
                   <td style="text-align: center"><%if(otherdetailsdata.equals("")){ %>-<%} else{%><%=otherdetailsdata %><%} %></td>
                  <td style="text-align: center"><a href="#">Update</a>|<a href="/SAMERP/Expenses.do?deleteId=<%=dataId%>">Delete</a></td>
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

<script>
function myFunction() {
	document.getElementById("name").focus();
    var x = document.getElementById("snackbar");
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
function searchName(str) {
	
		var xhttp;
	if (str == "") {
		return;
	}
	xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			//document.getElementById("imeino").innerHTML = this.responseText;
			var demoStr = this.responseText.split(",");
			var text = "";
			var i = 0
			for (;demoStr[i];) 
			{
				text += "<option id="+demoStr[i]+ "</option>";
				i++;
			}	
			document.getElementById("nameList").innerHTML = text;
		}

	};
	
	xhttp.open("POST", "//SAMERP/addSupplyMaterial?findName="+str, true);
	xhttp.send();

}
</script>
<script src="/SAMERP/config/js/excanvas.min.js"></script> 
<script src="/SAMERP/config/js/jquery.min.js"></script> 
<script src="/SAMERP/config/js/jquery.ui.custom.js"></script> 
<script src="/SAMERP/config/js/bootstrap.min.js"></script> 
<script src="/SAMERP/config/js/bootstrap-colorpicker.js"></script> 
<script src="/SAMERP/config/js/bootstrap-datepicker.js"></script> 
<script src="/SAMERP/config/js/jquery.toggle.buttons.js"></script> 
<script src="/SAMERP/config/js/masked.js"></script> 
<script src="/SAMERP/config/js/jquery.uniform.js"></script> 
<script src="/SAMERP/config/js/select2.min.js"></script> 
<script src="/SAMERP/config/js/matrix.js"></script> 
<script src="/SAMERP/config/js/matrix.form_common.js"></script> 
<script src="/SAMERP/config/js/wysihtml5-0.3.0.js"></script> 
<script src="/SAMERP/config/js/jquery.peity.min.js"></script> 
<script src="/SAMERP/config/js/bootstrap-wysihtml5.js"></script> 
<script>
$('.textarea_editor').wysihtml5();
</script>
</body>
</html>
