package hospital;
import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewPatientServlet")
public class ViewPatientServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        PatientDAO dao = new PatientDAO();

        ArrayList<Patient> patients = dao.getAllPatients();

        request.setAttribute("patients", patients);

        request.getRequestDispatcher("viewPatients.jsp")
               .forward(request, response);
    }
}