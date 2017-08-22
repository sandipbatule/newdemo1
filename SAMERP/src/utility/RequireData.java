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
	
	public List getAccountRowData(String id)
	{
		String demo="select * from account_details where acc_id="+id+"";
		List demoList=gd.getData(demo);
		return demoList;
	}
	
	//--omkar end
	
	// sandeep start
	public List getClientDetails()
	{
		String query="select `client_id`,`client_orgnization_name`,`client_name`,`client_contactno1`,`client_contactno2`,`client_email`,`client_address`,`client_balance_amount` from `client_details`";
		System.out.println("query is:"+query);
		List list=gd.getData(query);
		return list;		
	}
	
	public List setClientDetails(String cid)
	{
		String id=cid;
		String query="select `client_orgnization_name`,`client_name`,`client_contactno1`,`client_contactno2`,`client_email`,`client_address`,`client_balance_amount` from `client_details`";
		List list=gd.getData(query);
		return list;
		
	}
	
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
