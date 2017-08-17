package admin.settings;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.General.GenericDAO;

//@WebServlet("/AddAccountDetails")
public class AddAccountDetails extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		if(request.getParameter("insertAccDetails")!=null)
		{
			GenericDAO gd=new GenericDAO();
			
			//out.print("hello");
			String bname=request.getParameter("bankName");
			String branch=request.getParameter("branch");
			String accNo=request.getParameter("accNo");
			int openingBalance=Integer.parseInt(request.getParameter("openingBalance"));
			int status=0;
			
			/*out.println(bname);
			out.println(branch);
			out.println(accNo);
			out.println(openingBalance);*/
			
			String insertQuery="INSERT INTO `account_details`(`bank_name`, "
					+ "`branch`, `acc_no`, `opening_balance`) VALUES ('"+bname+"','"+branch+"','"+accNo+"',"+openingBalance+")";
			status=gd.executeCommand(insertQuery);
			if(status!=0)
			{
				System.out.println("successfully inserted in suppliers material");
				request.setAttribute("status", "Inserted Successfully");
				RequestDispatcher rd=request.getRequestDispatcher("jsp/admin/settings/addAccountDetails.jsp");
				rd.forward(request, response);
			}
			
			
			
			
		}
		
		if(request.getParameter("deleteId")!=null)
		{
			GenericDAO gd=new GenericDAO();
			int delstatus=0;
			String deleteQuery="Delete from `account_details` where acc_id="+request.getParameter("deleteId");
			delstatus=gd.executeCommand(deleteQuery);
			if(delstatus!=0)
			{
				System.out.println("successfully deleted in suppliers material");
				request.setAttribute("status", "Deleted Successfully");
				RequestDispatcher rd=request.getRequestDispatcher("jsp/admin/settings/addAccountDetails.jsp");
				rd.forward(request, response);
			}
			
		}
		
	}

}
