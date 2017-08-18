package admin.settings;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.General.GenericDAO;

/**
 * Servlet implementation class addOrganization
 */
public class AddOrganization extends HttpServlet {
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddOrganization() {
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
		System.out.println("sarang");
	
		if(request.getParameter("insertorganizer")!=null){
			String organizationname=request.getParameter("organizationname");
			String address=request.getParameter("address");
			String contactno1=request.getParameter("contactno1");
			String contactno2=request.getParameter("contactno2");
			String email=request.getParameter("email");
			String logo=request.getParameter("logo");
			int status=0;
			
			String insertQuery="INSERT INTO organization_details (organization_name, organization_address, organization_contactno1,"
					+ " organization_contactno2, organization_email) values ('"+organizationname+"','"+address+"','"+contactno1+"','"+contactno2+
					"','"+email+"')";
			
			System.out.println("Q ===> "+insertQuery );
			status=gd.executeCommand(insertQuery);	

			if(status!=0)
			{
				System.out.println("organizer successfully inserted");
				request.setAttribute("status", "Organization Inserted Successfully");
				RequestDispatcher rd=request.getRequestDispatcher("jsp/admin/settings/addOrganization.jsp");
				rd.forward(request, response);
			}
			
//			out.print("<br>"+organizationname);
//			out.print("<br>"+address);
//			out.print("<br>"+contactno1);
//			out.print("<br>"+contactno2);
//			out.print("<br>"+email);
//			out.print("<br>"+logo); 
		}
	}
}