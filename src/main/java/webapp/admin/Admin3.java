package webapp.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.shipticket.booking.Booking;
import com.project.shipticket.journey.Journey;
import com.project.shipticket.seatavailavility.SeatAvailability;
import com.project.shipticket.util.ServiceShipTicket;
@WebServlet("/Admin3")
public class Admin3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		ServiceShipTicket m1 = new ServiceShipTicket();
		Journey u1 = new Journey();
		int ship = Integer.parseInt(request.getParameter("ship_id"));
		u1.setShipId(ship);
		try {
			m1.deleteJourney(u1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
