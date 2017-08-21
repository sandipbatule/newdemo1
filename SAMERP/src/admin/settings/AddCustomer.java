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

/**
 * Servlet implementation class AddCustomer
 */
@WebServlet("/AddCustomer")
public class AddCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		GenericDAO dao = new GenericDAO();
		
		String Customer_query="SELECT * FROM `customer_master` where `intcustid`="+request.getParameter("q");
		System.out.println(Customer_query);
		List CustomerList=dao.getData(Customer_query);
		System.out.println(CustomerList);
		
		Iterator itr = CustomerList.iterator();
		while (itr.hasNext()) {
			out.print(itr.next() + ",");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Add Customer
		PrintWriter out = response.getWriter();
		GenericDAO dao = new GenericDAO();

		String custid = request.getParameter("custid");
		String custName = request.getParameter("custname");
		String address = request.getParameter("address");
		String contactno = request.getParameter("contactno");

		if (custid==null) {
			
			String Customer_query = "INSERT INTO `customer_master`(`intcustid`, `custname`, `address`, `contactno`) VALUES (DEFAULT,'"
					+ custName + "','" + address + "','" + contactno + "')";

			int Customer_result = dao.executeCommand(Customer_query);

			if (Customer_result == 1) {
				RequestDispatcher rd = request.getRequestDispatcher("jsp/admin/settings/addCustomer.jsp");
				rd.forward(request, response);
			} else {
				out.print("something wrong");
			}
		} else {

			String Customer_query = "UPDATE `customer_master` SET `custname`='"+custName+"',`address`='"+address+"',`contactno`='"+contactno+"' WHERE `intcustid`="+custid;

			int Customer_result = dao.executeCommand(Customer_query);

			if (Customer_result == 1) {
				RequestDispatcher rd = request.getRequestDispatcher("jsp/admin/settings/addCustomer.jsp");
				rd.forward(request, response);
			} else {
				out.print("something wrong");
			}
		}
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		GenericDAO dao = new GenericDAO();
		
		String Customer_query="DELETE FROM `customer_master` WHERE `intcustid`="+request.getParameter("q");
		System.out.println(Customer_query);
		int Customer_result = dao.executeCommand(Customer_query);

		if (Customer_result == 1) {
			RequestDispatcher rd = request.getRequestDispatcher("jsp/admin/settings/addCustomer.jsp");
			rd.forward(request, response);
		} else {
			out.print("something wrong");

		}
	}

}
