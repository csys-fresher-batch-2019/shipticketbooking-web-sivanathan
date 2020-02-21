package webapp.journey;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.shipticket.journey.Journey;
import com.project.shipticket.util.ServiceShipTicket;

@WebServlet("/Next")
public class Next extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServiceShipTicket m4=new ServiceShipTicket();
		response.getWriter().append("Served at: ").append(request.getContextPath());
	int ship=Integer.parseInt(request.getParameter("shipid"));
	System.out.println(ship);
	try {
		ArrayList<Journey> value=m4.getJourney(ship);
		System.out.println(value);
		HttpSession session = request.getSession();
		session.setAttribute("journey12", value);
		RequestDispatcher dis=request.getRequestDispatcher("next1.jsp");
		dis.forward(request, response);
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	}

}
