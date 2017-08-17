package utility;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.joda.time.Days;

import dao.General.GenericDAO;

public class demou {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GenericDAO gd=new GenericDAO();
		RequireData rd =new  RequireData();
	
		String getDetails="SELECT * FROM `material_supply_master`";
		
		List l=gd.getData(getDetails);
		System.out.println(l);
			}

}
