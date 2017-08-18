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
		
		
		int g;
	
		String getDetails="select * from expenses_master";
		
		List demo=gd.getData(getDetails);
		System.out.println(demo);
			}

}
