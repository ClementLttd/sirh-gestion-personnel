package dev.sgp.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// recuperation du matricule
		String matricule = req.getParameter("matricule");
		String titre = req.getParameter("titre");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		
		
		// code HTML ecrit dans le corps de la reponse
		resp.getWriter().write("<h1>Edition de collaborateur</h1>");

		
		if (matricule == null || "".equals(matricule.trim())
			|| titre == null || "".equals(titre.trim())
			|| nom == null || "".equals(nom.trim())
			|| prenom == null || "".equals(prenom.trim()))
		
		{
			
			//indication du format attendu au client
			resp.setContentType("text/html");
			resp.setStatus(400);
			resp.getWriter().write("Les paramètres suivants sont incorrects :"+matricule+titre+nom+prenom);
			
			//resp.getWriter().write("Un matricule est attendu");
			
		} else {
			resp.setStatus(200);
			resp.getWriter().write("<ul>"
					+ "<li>Matricule =" + matricule+"</li>"
					+ "<li>Titre =" +titre+"</li>"
					+ "<li>Nom ="+nom+"</li>"
					+ "<li>Prenom ="+prenom+"</li>"+"</ul>");
		}
	}
}
