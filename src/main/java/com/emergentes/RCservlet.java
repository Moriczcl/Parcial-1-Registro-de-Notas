
package com.emergentes;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RCservlet", urlPatterns = {"/RCservlet"})
public class RCservlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String materia=request.getParameter("materia");
        String nombre=request.getParameter("nombre");
        int primer=Integer.parseInt(request.getParameter("primerp"));
        int segundo=Integer.parseInt(request.getParameter("segundop"));
        int tercero=Integer.parseInt(request.getParameter("tercerp"));
        
         String res;
        
        int resultado=primer+segundo+tercero;
        
        if(resultado>=51){
            res="Aprobado";
            if(resultado>100){
                res="Ponga los Datos Correctamente Como los pide";
            }
        }else{
            res="Reprobado";
            if(resultado<0){
               res="Que te pasa";
            }
        }
        
        RegCalif RCal=new RegCalif();
        
        RCal.setMateria(materia);
        RCal.setNombre(nombre);
        RCal.setPrimero(primer);
        RCal.setSegundo(segundo);
        RCal.setTercero(tercero);
        RCal.setResultado(resultado);
        RCal.setResul(res);
        
        request.setAttribute("rcal", RCal);
        
        request.getRequestDispatcher("salidarc.jsp").forward(request, response);
    }


}
