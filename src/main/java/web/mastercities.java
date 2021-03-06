package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.place;

@WebServlet("/Admincities")
public class mastercities extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public mastercities() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			showplaces(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminflights.jsp");
			dispatcher.forward(request, response);
		}
	}

	private void showplaces(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List<place> listallplaces =  dao.placeDao.selectAllplaces();
		request.setAttribute("listallplaces", listallplaces);
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminplaces.jsp");
		dispatcher.forward(request, response);
	}
}