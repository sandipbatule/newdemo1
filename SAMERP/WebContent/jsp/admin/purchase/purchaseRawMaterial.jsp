<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

</head>
<script>
	function showModal() {
		var someVarName = localStorage.getItem("someVarName");
		if (someVarName > 0) {
			$('#add_brand').modal('show');

		}

		localStorage.setItem('someVarName', null);
	}

	function setFocusToTextBox() {
		document.getElementById("organization_name").focus();
		showModal();
	}
	
</script>

<body onclick="setFocusToTextBox()">

	<div id="content">
		<div id="content-header">
			<div id="breadcrumb">
				<a href="index.html" title="Go to Home" class="tip-bottom"><i
					class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Form
					elements</a> <a href="#" class="current">Common elements</a>
			</div>
			<h1>Purchase Raw Materials</h1>
			<div class="container-fluid">
				<hr>
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon"> <i class="icon-align-justify"></i>
								</span>
								<h5>Veiw Details</h5>
							</div>

							<div class="widget-content nopadding">
							
								<form class="form-horizontal">
									<div class="control-group">
										<label class="control-label">Supplier Name:</label>
										<div class="controls">
											<input type="text" class="span4" placeholder="Enter Supplier Name" />											
										</div>	
										<a href="#add-brand" data-toggle="modal"
											style="color: white; font-size: 10px;" width="20px"><button
												class="btn btn-primary btn-mini"
												style="width: 40px; border: 2px black solid; position: relative; float: right; right: 500px; bottom: 38px; font-size: 20px;">+</button></a>																		
									</div>									
									
									<table>
										<tr>
											<td><div class="control-group">
										<label class="control-label">Supplier Name:</label>
										<div class="controls">
											<input type="text" style="width: 237px;" placeholder="Supplier Name" />
										</div>
									</div>
									</td>
											<td>
										<div class="control-group">
											
												<label class="control-label">Contact No:</label>
												<div class="controls">
													<input type="text" style="width: 237px;" placeholder="Contact No" />
												</div>
											</div></td>
										</tr>
									</table>												
											
									</div>
								</form>
							</div>
						</div>

						<div class="widget-box">
							<div class="widget-title">
								<span class="icon"> <i class="icon-align-justify"></i>
								</span>
								<h5>Purchase Material Details</h5>
							</div>

							<div class="widget-content nopadding">
								<form class="form-horizontal">
								
									<table>
										<tr>
											<td>
											<div class="control-group">
												<label class="control-label">Cheack No:</label>
												<div class="controls">
														<input type="text" style="width: 237px;" placeholder="Cheack No" />
												</div>
											</div>
											</td>											
											<td>
											<div class="control-group">
												<label class="control-label">Date:</label>
												<div class="controls">
													<input type="date" style="width: 237px;" placeholder="" />
												</div>
									</div>
											</td>
										</tr>
									</table>
									
									<div class="control-group">
										<label class="control-label">Vehicle No:</label>
										<div class="controls">
											<input type="text" class="span1" placeholder="XX" />- <input
												type="text" class="span1" placeholder="XX" />- <input
												type="text" class="span1" placeholder="XX" />- <input
												type="text" class="span2" placeholder="XXXX" />
										</div>

									</div>
							
									<div class="control-group">
										<label class="control-label">Material Particals:</label>
										<div class="controls">
											<select>
												<option>First option</option>
												<option>Second option</option>
												<option>Third option</option>
												<option>Fourth option</option>
												<option>Fifth option</option>
												<option>Sixth option</option>
												<option>Seventh option</option>
												<option>Eighth option</option>
											</select>
											
											<a href="#add_partical" data-toggle="modal" style="color: white; font-size: 10px;" width="20px">
											<button	class="btn btn-primary btn-mini">+</button></a>
										</div>
										</div>
								<table>
									<tr>
									<td>
									<div class="control-group">
										<label class="control-label">Quantity:</label>
										<div class="controls">
											<select>
												<option>First option</option>
												<option>Second option</option>
												<option>Third option</option>
												<option>Fourth option</option>
												<option>Fifth option</option>
												<option>Sixth option</option>
												<option>Seventh option</option>
												<option>Eighth option</option>
											</select>
											</div>
											</div>
											</td>
											<td>
											<div class="control-group">
										<label class="control-label">Unit:</label>
										<div class="controls">
											<select>
												<option>First option</option>
												<option>Second option</option>
												<option>Third option</option>
												<option>Fourth option</option>
												<option>Fifth option</option>
												<option>Sixth option</option>
												<option>Seventh option</option>
												<option>Eighth option</option>
											</select>
											</div>
											</div>
											</td>
									</div>
									</tr>
							</table>
							<div class="form-actions">
								<button type="submit" class="btn btn-success">Ok</button>
								<button type="submit" class="btn btn-danger">Cancel</button>
							</div>
							</form>
							</div>
						</div>
					</div>

				
			
			<div class="widget-box">
				<div class="widget-title">
					<span class="icon"><i class="icon-th"></i></span>
					<h5>View Purchase Details</h5>
				</div>
				<div class="widget-content nopadding">
					<table id="myTable" class="table table-bordered data-table">
						<thead>
							<tr>
								<th>Pid</th>
								<th>supplier name</th>
								<th>cheack no</th>
								<th>material particals</th>
								<th>quantity</th>
								<th>Action</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
			</div>

		</div>
</div>

	<!-- supplier Modal  -->

	<div class="modal fade" id="add-brand" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add New Supplier:</h4>
				</div>
				<div class="modal-body">
					<p>
					<form class="form-horizontal">
						<div class="control-group">
							<label class="control-label">Supplier Name:</label>
							<div class="controls">
								<input type="text" class="span3" placeholder="Supplier Name" />
							</div>
						</div>
					</form>
					</p>
				</div>
				<div class="modal-footer">
					<input type="submit" id="submitbtn" class="btn btn-primary"
						value="Update" /> <input type="button" id="cancelbtn"
						class="btn btn-primary" data-dismiss="modal" value="Cancel" />
				</div>
			</div>
		</div>

	</div>
	
	<!-- 	end modal -->

	<!-- 	material modal -->

	<div class="modal fade" id="add_partical" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add Partical:</h4>
				</div>
				<div class="modal-body">
				<p>
					<form class="form-horizontal">
						<div class="control-group">
							<label class="control-label">Partical Name:</label>
							<div class="controls">
								<input type="text" class="span3" placeholder="Enter New Partical" />
							</div>
						</div>
					</form>
					</p>
				</div>
				<div class="modal-footer">
					<input type="submit" id="submitbtn" class="btn btn-primary"
						value="Update" /> <input type="button" id="cancelbtn"
						class="btn btn-primary" data-dismiss="modal" value="Cancel" />
				</div>
			</div>

		</div>
	</div>
	<!--   end modal -->
	<div class="row-fluid">
		<div id="footer" class="span12">
			2013 &copy; Matrix Admin. Brought to you by <a
				href="http://themedesigner.in">Themedesigner.in</a>
		</div>
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
	<script src="js/jquery.min.js"></script>

</body>
</html>