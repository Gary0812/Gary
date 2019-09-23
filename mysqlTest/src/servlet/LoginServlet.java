package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LoginDao;
import vo.name;


public class LoginServlet extends HttpServlet {
	
	
	private RequestDispatcher requestDispatcher;
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		
		if ("log".equals(method)) {
			name na=new name();
			String	psw=request.getParameter("password");
			String name=request.getParameter("name");
			LoginDao ldDao=new LoginDao();
			try {
				ldDao.Adduser(name, psw);
				na=LoginDao.select1(name, psw);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("na", na);
			requestDispatcher = request.getRequestDispatcher("/success.jsp");
			requestDispatcher.forward(request, response);
		}
		
		
	} 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
