package Servlet.Client;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.General.GenericDAO;

@WebServlet("/AddClient")
public class AddClient extends HttpServlet {
	
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		GenericDAO gd=new GenericDAO();
		
		String clientOName=request.getParameter("client_org_name");
		
		String clientName=request.getParameter("client_name");
		
		String ClientContactNo=request.getParameter("client_contact_no");
		
		String ClientEmailId=request.getParameter("client_email_id");
		
		String ClientAddress=request.getParameter("client_address");
		
		String ClientOpeningBalance=request.getParameter("client_opening_balance");
		
		String query="insert into `client_details` (`client_org_name`,`client_name`	,`client_contact_no`,`client_email_id`,`client_address`,`client_opening_balance`) values('"+clientOName+"','"+clientName+"','"+ClientContactNo+"','"+ClientEmailId+"','"+ClientAddress+"','"+ClientOpeningBalance+"')";
		
	    int i=gd.executeCommand(query);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
