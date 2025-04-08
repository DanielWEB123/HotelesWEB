package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class session extends HttpServlet {

    //Variablesd Globales
    private Connection con;
    private Statement set;
    private ResultSet rs;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            //Connection con;
            String url = "jdbc:mysql://localhost:3306/bd_portafolio";
            String user = "root";
            String clave = "dan123";

            try {
                Class.forName("com.mysql.jdbc.Driver");
                url = "jdbc:mysql://localhost:3306/bd_hoteles";
                con = DriverManager.getConnection(url, user, clave);
                set = con.createStatement();

                System.out.println("Conexión Exitosa");

            } catch (Exception e) {

                System.out.println("Error Conexión");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
            }

            String nom = request.getParameter("nom");
            String mail = request.getParameter("mail");
            String passw = request.getParameter("passw");
            String celu = request.getParameter("celu");

            int opcion = Integer.parseInt(request.getParameter("opcion"));

            if (opcion == 11) {

            // VALIDAMOS USUARIO SI EXISTE POR EL CORREO
                try {
                    //ENCRIPTO PASSWORD
                    MessageDigest md = MessageDigest.getInstance("SHA-256");

                    byte[] hashedBytes = md.digest(passw.getBytes());
                    StringBuilder sb = new StringBuilder();

                    for (byte b : hashedBytes) {
                        sb.append(String.format("%02x", b));
                    }

                    String passwordHash = sb.toString();

                    String qx = "select * from usuarios where mail = '" + mail + "' && password = '" + passwordHash + "'";
                    try {
                        set = con.createStatement();
                        rs = set.executeQuery(qx);

                        if (rs.next()) {

                            String nombre = rs.getString("nombre");

                            Usuario usu = new Usuario(nombre, mail, passw);
                            HttpSession session = request.getSession();
                            session.setAttribute("usuario", usu);

                            RequestDispatcher rd = request.getRequestDispatcher("filtro_habitac_usu.jsp?nom=" + nombre);
                            rd.forward(request, response);

                        } else {

                            String xxx = "CORREO NO EXISTE ! ";
                            RequestDispatcher rd = request.getRequestDispatcher("sesion.jsp?xxx=" + xxx);
                            rd.forward(request, response);

                        }

                    } catch (Exception e) {
                    }

                } catch (Exception e) {
                }

            } else {

            }

        }
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
