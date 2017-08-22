package admin.settings;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;

import dao.General.GenericDAO;
import dao.dbconnect.DBConnection;

/**
 * Servlet implementation class addOrganization
 */
@MultipartConfig(maxFileSize = 16177215)
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
		
	
		if(request.getParameter("insertorganizer")!=null){
			
			System.out.println("sarang1");
			Part filePart=request.getPart("logo_upload");
			System.out.println("sarang2");
			String organizationname=request.getParameter("organizationname");
			String address=request.getParameter("address");
			String contactno1=request.getParameter("contactno1");
			String contactno2=request.getParameter("contactno2");
			String email=request.getParameter("email");

			InputStream inputStream = null;
			
			
			
			if (filePart != null) {
		        // prints out some information for debugging
		        System.out.println("name"+filePart.getName());
		        System.out.println("size"+filePart.getSize());
		        System.out.println("type"+filePart.getContentType());

		        // obtains input stream of the upload file
		        inputStream = filePart.getInputStream();
		       }
	
			try 
			{
				System.out.println("try");
				DBConnection dbcon=new DBConnection();
				Connection con=dbcon.getConnection();
				String sql="INSERT INTO organization_details (organization_name, organization_address, organization_contactno1, organization_contactno2, organization_email, organization_logo) value (?,?,?,?,?,?) ";
				PreparedStatement pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1,organizationname);
				pstmt.setString(2,address);
				pstmt.setString(3,contactno1);
				pstmt.setString(4,contactno2);
				pstmt.setString(5,email);
				
				if(inputStream!=null){
					System.out.println("sarang31");
		            pstmt.setBinaryStream(6, inputStream, (int) filePart.getSize());
					//pstmt.setBlob(6, inputStream);
					System.out.println("sarang4");
				}
				System.out.println("before query");
				int status=pstmt.executeUpdate();
				System.out.println("after query");
				

				if(status!=0)
				{
					System.out.println("organizer successfully inserted");
					request.setAttribute("status", "Organization Inserted Successfully");
					RequestDispatcher rd=request.getRequestDispatcher("jsp/admin/settings/addOrganization.jsp");
					rd.forward(request, response);
				}
				else{
					System.out.println("Fail to upload");
				}
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
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