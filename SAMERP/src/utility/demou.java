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
	
		String getDetails="SELECT purchase_master.varinvoiceno,model_details_master.aliasnamemodel,"
				+ "purchase_details.varimeino1,purchase_master.datePurchaseDate,purchase_master.inttotalbillamount"
				+ " FROM purchase_details,purchase_master_details,model_details_master,purchase_master "
				+ "WHERE purchase_master_details.intpurchase_master_detailsId=purchase_details.intpurchase_master_detailsId"
				+ " and purchase_master_details.intmodelId=model_details_master.intmodelid "
				+ "and purchase_master.intpurchase_masterId=purchase_master_details.intpurchase_masterId "
				+ "and purchase_master.intbrandid=2";
		
		List l=gd.getData(getDetails);
		System.out.println(l);
			}

}
