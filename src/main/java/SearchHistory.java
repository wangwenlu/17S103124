import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.historyInfo;


public class SearchHistory extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SearchHistory() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<historyInfo> historyList=null;
		String startTime=request.getParameter("startTime");
		String endTime=request.getParameter("endTime");
		//SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		//Date time=null;
		//historyList=testDB.findHistoryByDateInterval(java.sql.Date.valueOf(startTime), java.sql.Date.valueOf(endTime));
		if(startTime.isEmpty() && endTime.isEmpty()){
			historyList=testDB.searchAllHistory();
		}else if(!endTime.isEmpty() && !startTime.isEmpty()){
			System.out.println(java.sql.Date.valueOf(startTime));
			historyList=testDB.findHistoryByDateInterval(java.sql.Date.valueOf(startTime), java.sql.Date.valueOf(endTime));
		}
		else if(!startTime.isEmpty()){
			System.out.println(startTime);
			historyList=testDB.findAfter(java.sql.Date.valueOf(startTime));
		}else if(!endTime.isEmpty()){
			System.out.println(endTime);
			historyList=testDB.findBefore(java.sql.Date.valueOf(endTime));
		}
		request.getSession().setAttribute("historyList", historyList);
		request.getRequestDispatcher("showHistory.jsp").forward(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
