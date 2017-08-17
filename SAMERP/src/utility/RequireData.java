package utility;

import java.util.List;

import dao.General.GenericDAO;

public class RequireData 
{
	GenericDAO gd=new GenericDAO();
	
	//starts your methods here
	
	// himanshu start
	
		//--himanshu end
	
	// mukesh start
	
		public List getVehiclesData()
		{
			String vehicleDetailsQuery = "select * from vehicle_details order by vehicle_id desc;";
			List vehicleDetailsData = gd.getData(vehicleDetailsQuery);
			return vehicleDetailsData;
		}
		
	//--mukesh end
	
	// omkar start
	
		//--omkar end
	
	// sandeep start
	
		//--sandeep end
	
	// sarang start
	
		//--sarang end
	
	// vijay start
	
	public List getMaterialSupplyData()
	{
		String demo="select * from material_supply_master";
		List demoList=gd.getData(demo);
		return demoList;
	}
	
		//--vijay end
	
}
