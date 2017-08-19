<!DOCTYPE html>
<html lang="en">
<head>
<title>Matrix Admin</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/SAMERP/config/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="/SAMERP/config/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="/SAMERP/config/css/uniform.css" />
<link rel="stylesheet" href="/SAMERP/config/css/select2.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-style.css" />
<link rel="stylesheet" href="/SAMERP/config/css/matrix-media.css" />
<link href="/SAMERP/config/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800'
	rel='stylesheet' type='text/css'>



</head>
<body>

	<!--Header-part-->
	<div id="header">
		<h1>
			<a href="dashboard.html">Matrix Admin</a>
		</h1>
	</div>

	<!--start-top-serch-->
	<div id="search">

		<button type="submit" class="tip-bottom">LOGOUT</button>
	</div>
	<!--close-top-serch-->
	<!--sidebar-menu-->
	<div id="sidebar">
		<a href="#" class="visible-phone"><i class="icon icon-home"></i>
			Dashboard</a>
		<ul>
			<li class="active"><a href="/SAMERP/index.jsp"><i
					class="icon icon-home"></i> <span>Dashboard</span></a></li>
			<li class="submenu"><a href="#"><i class="icon icon-th-list"></i>
					<span>Settings</span> <span class="label label-important">7</span></a>
				<ul>
					<li><a
						href="/SAMERP/jsp/admin/settings/addMaterialSuppliers.jsp">Add
							Material Supplier</a></li>
					<li><a href="/SAMERP/jsp/admin/settings/addEmployee.jsp">Add
							Employee</a></li>
					<li><a href="/SAMERP/jsp/admin/settings/addOrganization.jsp">Add
							Organization</a></li>
					<li><a href="/SAMERP/jsp/admin/settings/addAccountDetails.jsp">Add
							Account Details</a></li>
					<li><a href="/SAMERP/jsp/admin/settings/addVehicles.jsp">Add
							Vehicles</a></li>
					<li><a href="/SAMERP/jsp/admin/settings/addClient.jsp">Add
							Clients</a></li>
				</ul>
			<li><a href="/SAMERP/jsp/admin/settings/expenses.jsp"><i
					class="icon icon-money"></i> <span>Expenses</span></a></li>
			<li><a href="/SAMERP/jsp/admin/jcb-poc work/jcb-pocDetails.jsp"><i
					class="icon icon-inbox"></i> <span>JCB/POC Detail</span></a></li>
			<li><a href="tables.html"><i class="icon icon-th"></i> <span>Tables</span></a></li>
			<li><a href="grid.html"><i class="icon icon-fullscreen"></i>
					<span>Full width</span></a></li>
			<li class="submenu"><a href="#"><i class="icon icon-th-list"></i>
					<span>Forms</span> <span class="label label-important">3</span></a>
				<ul>
					<li><a href="form-common.html">Basic Form</a></li>
					<li><a href="form-validation.html">Form with Validation</a></li>
					<li><a href="form-wizard.html">Form with Wizard</a></li>
				</ul></li>
			<li><a href="buttons.html"><i class="icon icon-tint"></i> <span>Buttons
						&amp; icons</span></a></li>
			<li><a href="interface.html"><i class="icon icon-pencil"></i>
					<span>Eelements</span></a></li>
			<li class="submenu"><a href="#"><i class="icon icon-file"></i>
					<span>Addons</span> <span class="label label-important">5</span></a>
				<ul>
					<li><a href="index2.html">Dashboard2</a></li>
					<li><a href="gallery.html">Gallery</a></li>
					<li><a href="calendar.html">Calendar</a></li>
					<li><a href="invoice.html">Invoice</a></li>
					<li><a href="chat.html">vijay option</a></li>
					<li><a href="chat.html">ranka option</a></li>
					<li><a href="chat.html">OM option</a></li>
				</ul></li>
		</ul>
	</div>
	<!--sidebar-menu-->
	<div id="content">
		<div id="content-header">
			<div id="breadcrumb">
				<a href="index.html" title="Go to Home" class="tip-bottom"><i
					class="icon-home"></i> Home</a> <a href="#" class="current">JCB/POC
					Detail</a>
			</div>
			<h1>JCB/POC Detail</h1>
		</div>
		<div class="container-fluid">
			<hr>
			<div class="alert alert-info span9">
				<strong>Enter Party/Customer Name:</strong><input type="text" style="    margin-top: 10px;"
					class="span3" placeholder="">
				<button type="button" class="btn btn-primary btn-mini" style="width: 40px; border: 2px black solid; font-size: 20px;"><i class="icon-plus"></i></button>
				
			</div>


			<div class="row-fluid">
				<div class="span8">
					<div class="widget-box">
						<div class="widget-title">
							<span class="icon"> <i class="icon-briefcase"></i>
							</span>
							<h5>Customer Detail</h5>
						</div>
						<div class="widget-content nopadding">
							<table class="table table-bordered table-invoice-full"
								style="border-color: white;">
								<tr>
									<td style="text-align: right;">Customer Name : <input type="text" name="required" id="required"></td>
									<td style="text-align: center;">Address : <input type="text" name="email" id="email"></td>
								</tr>
								<tr>
									<td style="text-align: right;">Contact NO : <input type="text" name="contact"
										id="contact"></td>
									<td></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>


			<div class="row-fluid">
				<div class="span8">
					<div class="widget-box">
						<div class="widget-title">
							<span class="icon"> <i class="icon-briefcase"></i>
							</span>
							<h5>Work Detail</h5>
						</div>
						<div class="widget-content nopadding">
							<table class="table table-bordered table-invoice-full"
								style="border-color: white;">
								<tr>
									<td style="text-align: right;">Chalan NO : <input type="text" name="required"
										id="required"></td>
									<td style="text-align: center;">Date : <input type="text" name="email" id="email"></td>
								</tr>
								<tr>
									<td style="text-align: right;">Machine Name : <input type="text" name="contact"
										id="contact"></td>
									<td style="text-align: center;">Work Hrs : <input type="text" name="contact" placeholder="HH:MM"
										id="contact"></td>
								</tr>
								<tr>
									<td colspan="2" style="text-align: center;"><button
											type="submit" name="insertorganizer" class="btn btn-success"">Submit</button>
										<a href="/SAMERP/index.jsp"><button type="button"
												class="btn btn-danger ">Exit</button></a></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div class="row-fluid">
				<div class="span12">

					<div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>Data table</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                </tr>
              </thead>
              <tbody>
                <tr class="gradeX">
                  <td>Trident</td>
                  <td>Internet
                    Explorer 4.0</td>
                  <td>Win 95+</td>
                  <td class="center">4</td>
                </tr>
                <tr class="gradeC">
                  <td>Trident</td>
                  <td>Internet
                    Explorer 5.0</td>
                  <td>Win 95+</td>
                  <td class="center">5</td>
                </tr>
                <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 7.5</td>
                  <td>Win 95+ / OSX.2+</td>
                  <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 8.0</td>
                  <td>Win 95+ / OSX.2+</td>
                  <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 8.5</td>
                  <td>Win 95+ / OSX.2+</td>
                  <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 9.0</td>
                  <td>Win 95+ / OSX.3+</td>
                  <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                  <td>Presto</td>
                  <td>Opera 9.2</td>
                  <td>Win 88+ / OSX.3+</td>
                  <td class="center">-</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>

				</div>
			</div>

		</div>
	</div>
	<!--Footer-part-->
	<div class="row-fluid">
		<div id="footer" class="span12">
			2013 &copy; Matrix Admin. Brought to you by <a
				href="http://themedesigner.in">Themedesigner.in</a>
		</div>
	</div>
	<!--end-Footer-part-->

	<script src="/SAMERP/config/js/jquery.min.js"></script>
	<script src="/SAMERP/config/js/jquery.ui.custom.js"></script>
	<script src="/SAMERP/config/js/bootstrap.min.js"></script>
	<script src="/SAMERP/config/js/jquery.uniform.js"></script>
	<script src="/SAMERP/config/js/select2.min.js"></script>
	<script src="/SAMERP/config/js/jquery.dataTables.min.js"></script>
	<script src="/SAMERP/config/js/matrix.js"></script>
	<script src="/SAMERP/config/js/matrix.tables.js"></script>


</body>
</html>
