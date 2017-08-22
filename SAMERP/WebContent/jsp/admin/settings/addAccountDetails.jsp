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
<link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">

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

/* .modal.fade .modal-dialog {
  -webkit-transform: scale(0.1);
-moz-transform: scale(0.1);
-ms-transform: scale(0.1);
transform: scale(0.1);
top: 300px;
opacity: 0;
-webkit-transition: all 0.3s;
-moz-transition: all 0.3s;
transition: all 0.3s;
}
.modal.in .modal-dialog {
 -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    transform: scale(1);
    -webkit-transform: translate3d(0, -300px, 0);
    transform: translate3d(0, -300px, 0);
    opacity: 1;
} */
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
    <li class="submenu active open"> <a href="#"><i class="icon icon-th-list"></i> <span>Settings</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="/SAMERP/jsp/admin/settings/addMaterialSuppliers.jsp">Add Material Suppliers</a></li>
        <li class="active"><a href="/SAMERP/jsp/admin/settings/addAccountDetails.jsp">Add Account Details</a></li>
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
    </i> Home</a> <a href="#" class="current">Add Account Details</a> </div>
  </div>
<!--End-breadcrumbs-->
<div class="container-fluid">
  <hr>
      <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-pencil"></i> </span>
            <h5>Form wizard &amp; validation</h5>
          </div>
          <div class="widget-content nopadding">
            <form id="form-wizard" class="form-horizontal" action="/SAMERP/AddAccountDetails" method="post">
                <div class="control-group">
                  <label class="control-label">Bank Name</label>
                  <div class="controls">
                    <input type="text" id="bankName" name="bankName" onkeyup="this.value=this.value.toUpperCase()"/>
                  </div>
                </div>
                
                <div class="control-group">
                  <label class="control-label">Branch</label>
                  <div class="controls">
                    <input type="text" name="branch" onkeyup="this.value=this.value.toUpperCase()"/>
                  </div>
                </div>
                
                <div class="control-group">
                  <label class="control-label">Account No</label>
                  <div class="controls">
                    <input type="text" name="accNo" />
                  </div>
                </div>
                
                <div class="control-group" >
                  <label class="control-label">Opening Balance</label>
                  <div class="controls">
                    <input type="text" name="openingBalance" />
                  </div>
                </div>
         
              <div class="form-actions" align="center">
                <input class="btn btn-success" name="insertAccDetails" type="submit" value="OK" />
                <input class="btn btn-danger" type="button" value="Cancel" />
                <div id="status"></div>
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
            <h5>Suppliers Material Data</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>S.No.</th>
                  <th>Bank Name</th>
                  <th>Branch</th>
                  <th>Account No</th>
                  <th>Opening Balance</th>
                  <th>Alias Name</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
              <%RequireData rd=new RequireData();
              	List getAccData=rd.getAccountDetails();
              	Object accId=0;
              	if(getAccData!=null){
            	Iterator itr=getAccData.iterator();
            	int i=1;
            	
            	while(itr.hasNext()){ accId=itr.next();
              %>
                <tr>
                  <td style="text-align: center"><%=i %><% i++; %></td>
                  <td style="text-align: center" value="<%=accId%>"><%=itr.next() %></td>
                  <td style="text-align: center"><%=itr.next() %></td>
                  <td style="text-align: center"><%=itr.next() %></td>
                  <td style="text-align: center"><%=itr.next() %></td>
                  <td style="text-align: center"><%=itr.next() %></td>
                  <td style="text-align: center"><a href="#updateAccDetails" onclick="searchName(<%=accId %>)" data-toggle="modal">Update</a>|<a href="/SAMERP/AddAccountDetails?deleteId=<%=accId%>">Delete</a></td>
                </tr>
                <%itr.next();}} %>
              </tbody>
            </table>
          </div>
        </div>
  	</div>
  </div>
</div>

</div>

<!--end-main-container-part-->

<div class="modal hide fade" id="updateAccDetails" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body" id="showModal">
      <form class="form-horizontal" action="/SAMERP/AddAccountDetails" method="post" name="updateAccount">
        <div class="form-group">
		<div class="widget-content nopadding">
        	<div class="control-group">
                  <label class="control-label">Bank Name</label>
                  <div class="controls">
                  <input type="hidden" id="modalId"  name="modalId"/>
                    <input type="text" id="modalName" name="modalbName"/>
         			</div>
        	</div>
        	
        	<div class="control-group">
                  <label class="control-label">Branch</label>
                  <div class="controls">
                    <input type="text" id="modalBranch"  name="modalBranch" />
         			</div>
        	</div>
        	
        	<div class="control-group">
                  <label class="control-label">Account No</label>
                  <div class="controls">
                    <input type="text" id="modalAccNo"  name="modalAccNo" />
         			</div>
        	</div>
        	
        	<div class="control-group">
                  <label class="control-label">Opening Balance</label>
                  <div class="controls">
                    <input type="text" id="modalBalance"  name="modalBalance" />
         			</div>
        	</div>
        	
        	<div class="control-group">
                  <label class="control-label">Alias Name</label>
                  <div class="controls">
                    <input type="text" id="modalAlias"  name="modalAlias" />
         			</div>
        	</div>
      
      <div class="modal-footer">
        <button type="button"  class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit"name="Update" class="btn btn-primary">Save changes</button></div>
      </div>
      </div>
      </form>
        
      </div>
      
    </div>
  </div>
</div>

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
<script src="/SAMERP/config/js/matrix.interface.js"></script> 
<script src="/SAMERP/config/js/matrix.chat.js"></script> 
<script src="/SAMERP/config/js/jquery.validate.js"></script> 
<script src="/SAMERP/config/js/matrix.form_validation.js"></script> 
<script src="/SAMERP/config/js/jquery.wizard.js"></script> 
<script src="/SAMERP/config/js/jquery.uniform.js"></script> 
<script src="/SAMERP/config/js/select2.min.js"></script> 
<script src="/SAMERP/config/js/matrix.popover.js"></script> 
<script src="/SAMERP/config/js/jquery.dataTables.min.js"></script> 
<script src="/SAMERP/config/js/matrix.tables.js"></script> 
<script>
function myFunction() {
	document.getElementById("bankName").focus();
    var x = document.getElementById("snackbar")
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
function searchName(id) {
	var xhttp;
	xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			var demoStr = this.responseText.split(",");
			document.getElementById("modalId").value = demoStr[0];
			document.getElementById("modalName").value = demoStr[1];
			document.getElementById("modalBranch").value = demoStr[2];
			document.getElementById("modalAccNo").value = demoStr[3];
			document.getElementById("modalBalance").value = demoStr[4];
			document.getElementById("modalAlias").value = demoStr[5];
				
			}
		};
	xhttp.open("POST","/SAMERP/AddAccountDetails?updateid="+id, true);
	xhttp.send();
}

</script>


</body>
</html>
