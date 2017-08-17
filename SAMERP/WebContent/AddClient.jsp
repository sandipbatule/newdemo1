<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<div id="content">
<div id="content-header">
  <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Form elements</a> <a href="#" class="current">Common elements</a> </div>
  <h1>Add Client Form</h1>
</div>
<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span11">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Add Client</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="AddClient" method="Post" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Client Orgnization Name:</label>
              <div class="controls">
                <input type="text" class="span6" name="client_org_name" placeholder="Enter Client Orgnization Name" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Client Name:</label>
              <div class="controls">
                <input type="text" class="span6" name="client_name" placeholder="Enter Client Name" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Contact No:</label>
              <div class="controls">
                <input type="text"  class="span3" name="contact_pri_no" placeholder="Enter Primary No"  /> /
                 <input type="text"  class="span3" name="contact_sec_no" placeholder="Enter Secondary No"  />
              </div>              
                            
            </div>
            <div class="control-group">
              <label class="control-label">Emaild Id::</label>
              <div class="controls">
                <input type="email" class="span6" name="email_id" placeholder="Enter Client Emaild Id" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Address:</label>
              <div class="controls">
               <textarea class="span6" name="address" placeholder="Enter Client Address" ></textarea>
                
                
            </div>
            <div class="control-group">
              <label class="control-label">Opening Balance:</label>
              <div class="controls">
               <input type="text" class="span6" name="opening_balance" placeholder="Enter Client Opening Balance"/>
              </div>
            </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">Ok</button>
           <button type="submit" class="btn btn-danger">Cancel</button>
            </div>
          </form>
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