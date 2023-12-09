package cl.inacap.bancoestadosession.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.inacap.bancoestadosession.model.Usuario;

/**
 * Servlet implementation class ValidaUsuario
 */
@WebServlet("/ValidarUsuario")
public class ValidarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rut = request.getParameter("usuario");
		String clave = request.getParameter("clave");
		Usuario usuario = null;
		
		ArrayList<Usuario> lista = (ArrayList<Usuario>)getServletContext().getAttribute("listaUsuarios"); //Aca se esta recibiendo la lista que retorna el listener.
		
		for (Usuario us : lista) { //Se recorre la lista.
			if (us.getRut().equals(rut) && us.getClave().equals(clave)) {
				usuario = us; //Si los datos coinciden se almacena el usuario.
				break;
			}
		}
		
		//Si los datos coinciden se crea la sesión y se redirecciona.
		if (usuario != null) {
			request.getSession().setAttribute("usuario", usuario); //Aca se crea la sesión.
			response.sendRedirect("menu.jsp");
		}
		else {
         request.setAttribute("error", "Usuario incorrecto"); 
         request.getRequestDispatcher("formulario_login.jsp").forward(request, response); //Aca se envia un String que dice "Usuario incorrecto" al documento especificado.
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
