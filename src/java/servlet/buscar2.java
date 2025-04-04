package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;


public class buscar2 extends HttpServlet {
    
    //Variablesd Globales
    private Connection con;
    private Statement set;
    private ResultSet rs;

    //Constructor
    public void init(ServletConfig cfg) throws ServletException {

        //Connection con;
        String url = "jdbc:mysql://localhost:3306/bd_portafolio";
        String user = "root";
        String clave = "dan123";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            url = "jdbc:mysql://localhost:3306/bd_portafolio";
            con = DriverManager.getConnection(url, user, clave);
            set = con.createStatement();

            System.out.println("Conexión Exitosa");

        } catch (Exception e) {

            System.out.println("Error Conexión");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }

    }

    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    
    
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            String q;
            
              q = "select * from hab_exp where item = 'habilidades'";
            
              set = con.createStatement();
              rs = set.executeQuery(q);
              
              
              
//String[] stringArray = {"Value1", "Value2", "Value3"}; 
String[] stringArray = {"Value1", "Value2", "Value3"}; 
request.setAttribute("stringArray", stringArray); 
RequestDispatcher dispatcher = request.getRequestDispatcher("mostrar.jsp"); 
dispatcher.forward(request, response);


              
              
              
                while (rs.next()) {

                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Servlet buscar</title>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<h1>Servlet buscar at" + rs.getString("descripcion") + "</h1>");
                    out.println("</body>");
                    out.println("</html>");

                }

        } catch (Exception e) {

        }

        
        
        
        
        
        
        
    
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
}
