package admin.settings;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.General.GenericDAO;

public class addsupplymaterial extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addsupplymaterial() {
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
		
		//for inserting data into table
		if(request.getParameter("insertsupply")!=null)
		{
			GenericDAO gd=new GenericDAO();
			String supBussName=request.getParameter("suppbusinesname");
			String supplierName=request.getParameter("suppname");
			String supplierAddress=request.getParameter("address");
			String suppContact=request.getParameter("contact");
			int openingBalance=Integer.parseInt(request.getParameter("openingbalance").toString());
			int status=0;
			
			String insertQuery="INSERT INTO `material_supply_master`(`supplier_business_name`, "
					+ "`supplier_name`, `supplier_address`, `supplier_contactno`, "
					+ "`supplier_opening_balance`) VALUES ('"+supBussName+"','"+supplierName+"','"+supplierAddress+"',"
							+ "'"+suppContact+"',"+openingBalance+")";
			status=gd.executeCommand(insertQuery);	
			if(status!=0)
			{
				System.out.println("successfully inserted in suppliers material");
				request.setAttribute("status", "Inserted Successfully");
				RequestDispatcher rd=request.getRequestDispatcher("jsp/admin/settings/addMaterialSuppliers.jsp");
				rd.forward(request, response);
			}
		}
		if(request.getParameter("deleteId")!=null)
		{
			GenericDAO gd=new GenericDAO();
			int delstatus=0;
			String deleteQuery="Delete from `material_supply_master` where supplier_business_id="+request.getParameter("deleteId");
			delstatus=gd.executeCommand(deleteQuery);
			if(delstatus!=0)
			{
				System.out.println("successfully deleted in suppliers material");
				request.setAttribute("status", "Deleted Successfully");
				RequestDispatcher rd=request.getRequestDispatcher("jsp/admin/settings/addMaterialSuppliers.jsp");
				rd.forward(request, response);
			}
			
		}
	}

}
