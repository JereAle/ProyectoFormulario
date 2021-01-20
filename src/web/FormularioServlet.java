package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormularioServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest peticion,HttpServletResponse respuesta)
	throws ServletException, IOException{
		String nombre = peticion.getParameter("nombre");
		String apellido = peticion.getParameter("apellido");
		String mail = peticion.getParameter("email");
		int age = Integer.parseInt(peticion.getParameter("edad"));
		
		String mesagge;
		
		
		String name = nombre+" "+apellido;
		peticion.getSession().setAttribute("name", name);
		peticion.getSession().setAttribute("age", age);
		
		if(age>18) {
			mesagge="Usted es mayor de edad";
			peticion.getSession().setAttribute("mesagge", mesagge);
			peticion.getSession().setAttribute("mail", mail);
		}else {
			mesagge="Usted es menor de edad";
			peticion.getSession().setAttribute("mesagge", mesagge);
		}
		respuesta.sendRedirect("index.jsp");
	}
}
