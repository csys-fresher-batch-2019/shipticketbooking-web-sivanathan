package webapp.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.shipticket.util.ServiceShipTicket;
@WebServlet("/Admin4")
public class Admin4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		ServiceShipTicket m1 = new ServiceShipTicket();
		String total=request.getParameter("cost");
		try {
			int amount=m1.costOfBooking(total);
			request.setAttribute("totalbooking", amount);
			RequestDispatcher dispatcher= request.getRequestDispatcher("totalbooking.jsp");
	;
			dispatcher.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
