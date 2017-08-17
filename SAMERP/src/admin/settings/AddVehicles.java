package admin.settings;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.General.GenericDAO;


public class AddVehicles extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		GenericDAO gd = new GenericDAO();
		PrintWriter out = response.getWriter();
		
		String vehicleType= request.getParameter("vehicle_type");
		String vehicleNo1= request.getParameter("vehicleno1");
		String vehicleNo2= request.getParameter("vehicleno2");
		String vehicleNo3= request.getParameter("vehicleno3");
		String vehicleNo4= request.getParameter("vehicleno4");
		
		String vehicleNo = vehicleNo1+"-"+vehicleNo2+"-"+vehicleNo3+"-"+vehicleNo4;
		
		String insertVehicleQuery = "insert into vehicle_details(vehicle_type, vehicle_number) values ('"+vehicleType+"', '"+vehicleNo+"');";
		int insertStatus = gd.executeCommand(insertVehicleQuery);
		
		if(insertStatus==1){
			System.out.println("insert successful");
			out.println("insert successful");
		}else{
			System.out.println("insert fail");
			out.println("insert fail");
			
		}
		
	}

}
