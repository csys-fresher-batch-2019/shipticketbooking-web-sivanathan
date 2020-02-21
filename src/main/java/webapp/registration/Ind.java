package webapp.registration;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.shipticket.shipdetails.ShipDetail;
import com.project.shipticket.util.ServiceShipTicket;
@WebServlet("/Ind")
public class Ind extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServiceShipTicket m4 = new ServiceShipTicket();
		ShipDetail s=new ShipDetail();
		String source = request.getParameter("sourceplace");
		String destination = request.getParameter("destinationplace");
		System.out.println(source + "-" + destination);
		s.setSourcePlace(source);
		s.setDestinationPlace(destination);
		//ArrayList<ShipDetail> getShip(ShipDetail s)
		
		try {
			ArrayList<ShipDetail> value=  m4.getShip(s);
			System.out.println(value);
			request.setAttribute("id", value);
			RequestDispatcher dis=request.getRequestDispatcher("ind2.jsp");
			dis.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
