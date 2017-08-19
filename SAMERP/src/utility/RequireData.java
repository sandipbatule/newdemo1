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
			String vehicleDetailsQuery = "select vehicle_id, vehicle_type, vehicle_number, vehicle_rate from vehicle_details order by vehicle_id desc;";
			List vehicleDetailsData = gd.getData(vehicleDetailsQuery);
			return vehicleDetailsData;
		}
		
		public List getVehicleRowData(String RowId)
		{
			String vehicleRowDataQuery = "select vehicle_type, vehicle_number, vehicle_rate from vehicle_details where vehicle_id="+RowId+"; ";
			List vehicleDetailsData = gd.getData(vehicleRowDataQuery);
			System.out.println(vehicleDetailsData);
			return vehicleDetailsData;
		}
		
	//--mukesh end
	
	// omkar start
	
	public List getAccountDetails()
	{
		String demo="select * from account_details";
		List demoList=gd.getData(demo);
		return demoList;
	}	
	
	//--omkar end
	
	// sandeep start
	
		//--sandeep end
	
	// sarang start
	
	public List getEmployeeData()
	{
		String demo="select * from emplyoee_details";
		List demoList=gd.getData(demo);
		return demoList;
	}
	
		//--sarang end
	
	// vijay start
	
	public List getMaterialSupplyData()
	{
		String demo="select * from material_supply_master";
		List demoList=gd.getData(demo);
		return demoList;
	}
	public List getBankAliasName()
	{
		String demo="SELECT account_details.acc_aliasname FROM account_details";
		List demoList=gd.getData(demo);
		return demoList;
	}
	public List getExpensesDetails()
	{
		String demo="SELECT * FROM expenses_master";
		List demoList=gd.getData(demo);
		return demoList;
	}
	
	
		//--vijay end
	
}
