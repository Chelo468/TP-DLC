/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dlc.sac.web.ctrl.index;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dlc.sac.web.Link;
import dlc.sac.SAC;
import dlc.sac.Buscador;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 *
 * @author scarafia
 */
public class CtlrIndex extends HttpServlet {

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
        String root = this.getServletContext().getContextPath();
        //SAC.indexarDocumentos();
        SAC.cargarIndexadorBD();
        Buscador b = new Buscador();
        String resultado = "";
        Map<Double,String> map = b.devolverRanking(request.getParameter("cadena"));
        if (map == null) {
            resultado = "no se econtraron resultados";
        } else {
            resultado = "si encontro";
            Iterator it = map.entrySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                Map.Entry e = (Map.Entry) it.next();
                //resultado += resultado + (String)e.getKey();
                
                i++;
            }
        }
        //request.setAttribute("resultado", resultado);
        request.setAttribute("map", map);
        ServletContext app = this.getServletContext();
        RequestDispatcher disp = app.getRequestDispatcher("/index.jsp");
        disp.forward(request, response);

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
