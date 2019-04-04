/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.web_jpa_war.servlet;

import enterprise.web_jpa_war.entity.Person;
import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.UserTransaction;

@WebServlet(name="Modification", urlPatterns={"/Modification"})
/**
 *
 * @author Utilisateur
 */
public class ModificationServlet extends HttpServlet {

    
    @PersistenceUnit
    //The emf corresponding to 
    private EntityManagerFactory emf;  
    
    @Resource
    private UserTransaction utx;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
            assert emf != null;  //Make sure injection went through correctly.
            EntityManager em = null;

            
            String id = (String) request.getParameter("id");
            String prenom = (String) request.getParameter("prenom");
            String nom = (String) request.getParameter("nom");

            request.setAttribute("id", id);
            request.setAttribute("prenom", prenom);
            request.setAttribute("nom", nom);
            

            try{
                
                

               
                utx.begin();
                em = emf.createEntityManager();

                Person toModify = em.find(Person.class, id);
                toModify.setFirstName(prenom);
                toModify.setLastName(nom);
                utx.commit();
                
                
                
                System.out.println("mon id = "+ toModify.getId() +"| mon nouveau prenom = "+ toModify.getFirstName() + "| mon nouveau nom = "+ toModify.getLastName());
            }
            catch (Exception ex) {
                throw new ServletException(ex);
            }
            
            request.getRequestDispatcher("/ListPerson").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
