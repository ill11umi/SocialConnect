package com.mvc.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.mvc.dao.UserDAO;
import com.mvc.model.Utilisateur;

/**
 * Servlet implementation class ConsulterAmis
 */
public class ConsulterAmis extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsulterAmis() {
        super();
       
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession s = request.getSession() ;
    	String idAmii = request.getParameter("idu");
        int idAmi = Integer.parseInt(idAmii);
        
        
        UserDAO us = new UserDAO();
        Utilisateur ami = us.getUtilisateurById(idAmi); 
        if(ami!= null) {
            request.setAttribute ( "user" , ami); 
            s.setAttribute("username", ami.getEmail()); 
            request.getRequestDispatcher("/views/profileamie.jsp").forward(request, response);
        }
    }
           
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
