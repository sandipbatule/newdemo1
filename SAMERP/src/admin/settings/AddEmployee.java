package admin.settings;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.General.GenericDAO;

/**
 * Servlet implementation class addEmployee
 */
//@WebServlet("/addEmployee")
public class AddEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		GenericDAO gd=new GenericDAO();
		
		//for inserting data into table--->employee_details
		if(request.getParameter("insertemployee")!=null){
			
			String employeename=request.getParameter("employeename");
			String contactno=request.getParameter("contactno");
			String employetype=request.getParameter("employetype");
			String address=request.getParameter("address");
			int status=0;
			
			String insertQuery="INSERT INTO emplyoee_details(emp_name, emp_contactno, emp_type, emp_address)"
					+ " VALUES ('"+employeename+"','"+contactno+"','"+employetype+"','"+address+"');";
			
			System.out.println("Q ===> "+insertQuery );
			
			status=gd.executeCommand(insertQuery);	
			if(status!=0)
			{
				System.out.println("employee successfully inserted");
				request.setAttribute("status", "Employee Inserted Successfully");
				RequestDispatcher rd=request.getRequestDispatcher("jsp/admin/settings/addEmployee.jsp");
				rd.forward(request, response);
			}
		}
		if(request.getParameter("deleteId")!=null)
		{
			int delstatus=0;
			String deleteQuery="Delete from emplyoee_details where emp_id="+request.getParameter("deleteId");
			delstatus=gd.executeCommand(deleteQuery);
			if(delstatus!=0)
			{
				System.out.println("employee successfully deleted");
				request.setAttribute("status", "Employee Deleted Successfully");
				RequestDispatcher rd=request.getRequestDispatcher("jsp/admin/settings/addEmployee.jsp");
				rd.forward(request, response);
			}
			
		}
	}
}