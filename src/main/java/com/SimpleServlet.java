package com;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cloudant.client.api.CloudantClient;
import com.cloudant.client.api.Database;
import com.cloudant.client.api.model.Response;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/**
 * Servlet implementation class SimpleServlet
 */
public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SimpleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		
		response.sendRedirect(request.getContextPath() + "/success.jsp");
		
		CloudantClient client = new CloudantDBConnection().getConnection();
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String emailid = request.getParameter("emailid");
		String session = request.getParameter("session");
		String interested=request.getParameter("interested");

		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		
		String dbname = "codedaybadge";
		try {
		//creates a database with the specified name
			
	    Database db = client.database(dbname, false);
	    
		//create a simple doc to place into your new database
		Map<String, Object> doc = new HashMap<String, Object>();
		doc.put("_id", UUID.randomUUID().toString());
		doc.put("FirstName", fname);
		doc.put("LastName", lname);
		doc.put("EmailID", emailid);
		doc.put("Session", session);
		doc.put("Interested", interested);
		doc.put("Timestamp",timestamp);
		Response dbResponse = db.save(doc);
		} catch (Exception e) {
		response.getWriter().println(e.getMessage());
		}
	}

}
