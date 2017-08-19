<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="dao.General.GenericDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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

<script type="text/javascript">
function getStr(id)
{
	
	$("form2")
	var Client=id;
	localStorage.setItem("Client",Client);
	var f=document.form2;
	f.action='/SAMERP/jsp/admin/settings/AddClient.jsp?update='+id;
	f.method="post";
	f.submit();
} 

function showmodal()
{
											
	var Client=localStorage.getItem("Client");
	
	if(Client>0)
		{
		 
		  $('#myModal').modal('show');
		
		}
	localStorage.setItem("Client",null);
}


	
	
</script>
<body >
	<div id="content">
		<div id="content-header">
			<div id="breadcrumb">
				<a href="index.html" title="Go to Home" class="tip-bottom"><i
					class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Form
					elements</a> <a href="#" class="current">Common elements</a>
			</div>
			<h1>Add Client Form</h1>
		</div>
		<div class="container-fluid">
			<hr>
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
								class="form-horizontal">
								<div class="control-group">
									<label class="control-label">Client Orgnization Name:</label>
									<div class="controls">
										<input type="text" name="client_oname" class="span6"
											placeholder="Client Orgnization Name" required />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Name:</label>
									<div class="controls">
										<input type="text" name="client_name" class="span6"
											placeholder="Client Name" required />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Contact No:</label>
									<div class="controls">
										<input type="text" name="client_contact_no" class="span6"
											placeholder="Enter Client ContactNo " required />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client EmailId:</label>
									<div class="controls">
										<input type="email" class="span6" name="client_emailid"
											placeholder="Enter Client Email Id" required />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Address:</label>
									<div class="controls">
										<textarea name="client_address" class="span6"
											placeholder="Enter Client Address" required></textarea>

									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Client Balance Amount:</label>
									<div class="controls">

										<input type="text" name="client_balance_amount"
											placeholder="Enter Client Balance Amount" class="span6"
											required />
									</div>
								</div>
								<div class="form-actions">
									<button type="submit" name="save" class="btn btn-success">Save</button>
									<button type="submit" class="btn btn-danger">Cancel</button>
								</div>
							</form>
						</div>
					</div>

					<div class="widget-box">
						<div class="widget-title">
							<span class="icon"><i class="icon-th"></i></span>
							<h5>Client Details Table</h5>
						</div>
						<div class="widget-content nopadding">
							<table class="table table-bordered data-table">
								<thead>
									<tr>
										<th>client_id</th>
										<th>client_orgnization_name</th>
										<th>client_name</th>
										<th>client_contactno</th>
										<th>client_email</th>
										<th>client_address</th>
										<th>client_balance_amount</th>
										<th>Action</th>
									</tr>
								</thead>
								<%
									RequireData data = new RequireData();
									List details = data.getClientDetails();

									int clientid = 0, count = 1;

									if (details != null) {

										Iterator itr = details.iterator();
								%>
								<tbody>
									<%
										while (itr.hasNext()) {
												String id = itr.next().toString();
												clientid++;
									%>
									<tr class="gradeX">

										<td id="<%=id%>"><%=count%></td>
										<td><%=itr.next()%></td>
										<td><%=itr.next()%></td>
										<td><%=itr.next()%></td>
										<td><%=itr.next()%></td>
										<td><%=itr.next()%></td>
										<td><%=itr.next()%></td>

										<td><a href="#myModal" data-toggle='modal'
											onclick='getStr(<%=id%>)'>Update</a> / <a
											href="/SAMERP/AddClient?client_id=<%=id%>">Delete</a></td>
									</tr>

								</tbody>
								<%
									count++;
										}
									}
								%>
							</table>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	
		<%
					String Cid = "";
					String Coname = "";
					String Cname = "";
					String CConno = "";
					String Ce = "";
					String Cadd = "";
					String Cbamount = "";
					if (request.getParameter("update") != null) {
						Cid = request.getParameter("update");
						System.out.println("id:" + Cid);
					   session.setAttribute("SessionId",Cid);
					}
						RequireData rd = new RequireData();
						List list = rd.setClientDetails(Cid);
						System.out.println("list is"+list);
					
						if (list != null) {
							Iterator itr = list.iterator();
							while (itr.hasNext()) {
								Object id1=itr.next().toString();
								Coname = itr.next().toString();
								Cname = itr.next().toString();
								CConno = itr.next().toString();
								Ce = itr.next().toString();
								Cadd = itr.next().toString();
								Cbamount = itr.next().toString();
							}
						}
						
			%>

<!-- Modal -->
	<div class="modal hide fade" id="myModal" role="dialog"
		style="width: 55%; margin-left: -27%;">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Modal Header</h4>
				</div>
				
				<div class="modal-body">			
			<p>
			<form action='/SAMERP/AddClient?update=<%=Cid%>' method="Post"
						class="form-horizontal" id="form2">
						<div class="control-group">
							<label class="control-label">Client Orgnization Name:</label>
							<div class="controls">
								<input type="text" name="client_oname" class="span4"
									placeholder="Client Orgnization Name" value="<%=Coname%>"  />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Client Name:</label>
							<div class="controls">
								<input type="text" name="client_name" class="span4"
									placeholder="Client Name" value="<%=Cname%>" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Client Contact No:</label>
							<div class="controls">
								<input type="text" name="client_contact_no" class="span4"
									placeholder="Enter Client ContactNo" value="<%=CConno%>" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Client EmailId:</label>
							<div class="controls">
								<input type="email" class="span4" name="client_emailid"
									placeholder="Enter Client Email Id" value="<%=Ce%>" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Client Address:</label>
							<div class="controls">
								<textarea name="client_address" class="span4"
									placeholder="Enter Client Address" value="<%=Cadd%>" ></textarea>

							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Client Balance Amount:</label>
							<div class="controls">

								<input type="text" name="client_balance_amount"
									placeholder="Enter Client Balance Amount" class="span4" value="<%=Cbamount%>" />
							</div>
						</div>
						<div class="modal-footer">
							<button type="submit" name="update" class="btn btn-default">Update</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</form>
			</p>
					
					
				</div>

			</div>

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
</body>
</html>