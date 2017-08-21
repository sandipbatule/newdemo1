package admin.expenses;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.General.GenericDAO;

public class Expenses extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Expenses() {
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
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		if(request.getParameter("addExpTypeNewOption")!=null)
				{
					GenericDAO gd=new GenericDAO();
					String newtype=request.getParameter("addExpTypeNewOption");
					//check if present
					// write your code here
					int status=0;
					String query="INSERT INTO `expenses_type`(`expenses_type_name`) VALUES ('"+newtype+"')";
					status=gd.executeCommand(query);
					if(status==1)
					{
						int substatus=0;
						String newsubquery="SELECT `expenses_type_id`, `expenses_type_name` FROM `expenses_type` "
								+ "WHERE expenses_type_name='"+newtype+"'";
						List demoList=gd.getData(newsubquery);
						if(!demoList.isEmpty())
						{
							Iterator itr=demoList.iterator();
							while(itr.hasNext())
							out.print(itr.next()+","+itr.next());
						}
					}
				}
		
		//for finding name and fetch list
		
		if(request.getParameter("findName")!=null)
		{
			GenericDAO da = new GenericDAO();
			String columnName=request.getParameter("id");
			String name=request.getParameter("findName");
			List details = null;
			String query = "SELECT expenses_master."+columnName+" FROM expenses_master WHERE "+columnName+" LIKE '"+name+"%' group by "+columnName+"";
			details = da.getData(query);
			if(!details.isEmpty())
			{
				Iterator itr = details.iterator();
				while (itr.hasNext()) {
					out.print("<option>"+itr.next()+"</option>");
	
					}
			}
		}
		
		if(request.getParameter("save")!=null)
		{
			GenericDAO gd=new GenericDAO();
			int getstatus=0;
			String name=request.getParameter("name");
			double amount=Double.parseDouble(request.getParameter("amount").toString());
			String type=request.getParameter("type");
			String date=request.getParameter("date");
			String[] arrayOfString = date.split("-");
			String details=request.getParameter("reason");
			String other_details=request.getParameter("other_details");
			String query="INSERT INTO `expenses_master`(`name`, `amount`, `payment_mode`, `date`, `reason`, `other_details`) "
					+ "VALUES ('"+name+"',"+amount+",'"+type+"','"+arrayOfString[2]+"-"+arrayOfString[1]+"-"+arrayOfString[0]+"','"+details+"','"+other_details+"')";
			getstatus=gd.executeCommand(query);
			if(getstatus!=0)
			{
				System.out.println("successfully inserted in expenses");
				request.setAttribute("status", "Inserted Successfully");
				RequestDispatcher rd=request.getRequestDispatcher("jsp/admin/settings/expenses.jsp");
				rd.forward(request, response);
			}
		}
		if(request.getParameter("deleteId")!=null)
		{
			GenericDAO gd=new GenericDAO();
			int delstatus=0;
			String deleteQuery="Delete from `expenses_master` where exp_id="+request.getParameter("deleteId");
			delstatus=gd.executeCommand(deleteQuery);
			if(delstatus!=0)
			{
				System.out.println("successfully deleted in expenses");
				request.setAttribute("status", "Deleted Successfully");
				RequestDispatcher rd=request.getRequestDispatcher("jsp/admin/settings/expenses.jsp");
				rd.forward(request, response);
			}
		}

	}

}
