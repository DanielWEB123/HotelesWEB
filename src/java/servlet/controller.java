package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class controller extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int opcion = Integer.parseInt(request.getParameter("opcion"));

        switch (opcion) {

            case 1: {
                String ciudad = request.getParameter("ciudad");
                request.setAttribute("Ciudad", ciudad);

                String f_ini = request.getParameter("f_ini");
                request.setAttribute("f_ini", f_ini);

                String f_ter = request.getParameter("f_ter");
                request.setAttribute("f_ter", f_ter);

                String num_hab = request.getParameter("num_hab");
                request.setAttribute("num_hab", num_hab);

                String num_ban = request.getParameter("num_ban");
                request.setAttribute("num_ban", num_ban);

                RequestDispatcher rd = request.getRequestDispatcher("filtro_habitac.jsp");
                rd.forward(request, response);

                break;
            }

            case 2: {
                RequestDispatcher rd = request.getRequestDispatcher("sesion.jsp");
                rd.forward(request, response);
                break;
            }

            case 3: {

                System.out.println("Usted eligió la opcion 3.");

                break;

            }

            default: {

                System.out.println("Opcion incorrecta");

            }

        }//cierra SWITCH

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
