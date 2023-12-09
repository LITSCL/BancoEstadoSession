package cl.inacap.bancoestadosession.listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import cl.inacap.bancoestadosession.model.Usuario;

/**
 * Application Lifecycle Listener implementation class Listener
 *
 */
@WebListener
public class Listener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Listener() {
        // TODO Auto-generated constructor stub
    }
    
	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    @Override
    public void contextInitialized(ServletContextEvent sce)  { 
       	List<Usuario> usuarios = new ArrayList<Usuario>(); //Se crea una lista de tipo Usuario.
        usuarios.add(new Usuario("19.757.106-1", "123")); //Se crea un objeto de tipo Usuario utilizando el método contructor y se almacena en la lista.
        usuarios.add(new Usuario("19.757.106-2", "123"));
        usuarios.add(new Usuario("19.757.106-3", "123"));
        usuarios.add(new Usuario("19.757.106-4", "123"));
        usuarios.add(new Usuario("19.757.106-5", "123"));
        
        sce.getServletContext().setAttribute("listaUsuarios", usuarios); //Aca se esta enviando la lista a todos los servlets.
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce)  {
 
    }
	
}
