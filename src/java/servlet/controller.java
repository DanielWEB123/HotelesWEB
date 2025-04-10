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
                request.setAttribute("Ciudad", request.getParameter("ciudad"));
                request.setAttribute("f_ini", request.getParameter("f_ini"));
                request.setAttribute("f_ter", request.getParameter("f_ter"));
                request.setAttribute("num_cam", request.getParameter("num_cam"));
                request.setAttribute("num_ban", request.getParameter("num_ban"));
//                request.setAttribute("id_usu", request.getParameter("id_usu"));
                request.setAttribute("filtro", 1);

                String id_usux = request.getParameter("id_usu");
                request.setAttribute("id_usux", id_usux);
                
                RequestDispatcher rd = request.getRequestDispatcher("filtro_habitac_usu.jsp");
                rd.forward(request, response);
                break;
            }

//            case 2: {//ir a INICIAR SESION
//                RequestDispatcher rd = request.getRequestDispatcher("sesion.jsp");
//                rd.forward(request, response);
//                break;
//            }
//            case 3: {//ir a CREAR USUARIO
//                request.setAttribute("Nombre", request.getParameter("nom"));
//                request.setAttribute("Correo", request.getParameter("mail"));
//                request.setAttribute("Passw", request.getParameter("pass"));
//                request.setAttribute("Celular", request.getParameter("cel"));

//                RequestDispatcher rd = request.getRequestDispatcher("crud_usuarios");
//                rd.forward(request, response);
//                break;
//            }

//            case 4: {//Ir a CREAR USUARIO COMO ADMINISTRADOR
//                request.setAttribute("Nombre", request.getParameter("nom"));
//                request.setAttribute("Correo", request.getParameter("mail"));
//                request.setAttribute("Passw", request.getParameter("pass"));
//                request.setAttribute("Celular", request.getParameter("cel"));
//                request.setAttribute("Tipo", request.getParameter("tipo"));

//                RequestDispatcher rd = request.getRequestDispatcher("crud_usuarios");
//                rd.forward(request, response);
//                break;
//            }

            case 5: {//Ir a MODIFICA USUARIOS COMO ADMINISTRADOR

                String id = request.getParameter("id");
                request.setAttribute("Id", request.getParameter("id"));
                request.setAttribute("Nombre", request.getParameter("nom"));
                request.setAttribute("Correo", request.getParameter("mail"));
                request.setAttribute("Passw", request.getParameter("pass"));
                request.setAttribute("Celular", request.getParameter("cel"));
                request.setAttribute("Tipo", request.getParameter("tipo"));

//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet NewServlet" + opcion + "</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet NewServlet at " + id + "czxc " + opcion + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }                
                RequestDispatcher rd = request.getRequestDispatcher("crud_usuarios");
                rd.forward(request, response);
                break;
            }

            case 6: {//Ir a ELIMINAR USUARIOS COMO ADMINISTRADOR
                request.setAttribute("Id", request.getParameter("id"));
                String id = request.getParameter("id");

                RequestDispatcher rd = request.getRequestDispatcher("crud_usuarios");
                rd.forward(request, response);
                break;
            }

            case 7: {//Ir a VALIDAR USUARIO
                request.setAttribute("Correo", request.getParameter("mail"));
                request.setAttribute("Password", request.getParameter("passw"));

                RequestDispatcher rd = request.getRequestDispatcher("session");
                rd.forward(request, response);
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

        int opcion = Integer.parseInt(request.getParameter("opcion"));

        switch (opcion) {

            case 11: {
                RequestDispatcher rd = request.getRequestDispatcher("session");
                rd.forward(request, response);
                break;
            }

            case 22: {//ir a CREAR USUARIO
                request.setAttribute("Nombre", request.getParameter("nom"));
                request.setAttribute("Correo", request.getParameter("mail"));
                request.setAttribute("Passw", request.getParameter("pass"));
                request.setAttribute("Celular", request.getParameter("cel"));

                RequestDispatcher rd = request.getRequestDispatcher("crud_usuarios");
                rd.forward(request, response);
                break;
            }

            case 44: {//Ir a CREAR USUARIO COMO ADMINISTRADOR
                request.setAttribute("Nombre", request.getParameter("nom"));
                request.setAttribute("Correo", request.getParameter("mail"));
                request.setAttribute("Passw", request.getParameter("pass"));
                request.setAttribute("Celular", request.getParameter("cel"));
                request.setAttribute("Tipo", request.getParameter("tipo"));

                RequestDispatcher rd = request.getRequestDispatcher("crud_usuarios");
                rd.forward(request, response);
                break;
            }
            
            
            
            
            
            
            default: {
                System.out.println("Opcion incorrecta");
            }
        }//cierra SWITCH

    }

}
