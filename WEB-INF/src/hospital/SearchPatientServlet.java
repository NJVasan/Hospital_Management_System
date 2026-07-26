package hospital;
import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/SearchPatientServlet")
public class SearchPatientServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");

        PatientDAO dao = new PatientDAO();

        ArrayList<Patient> patients = dao.searchPatient(name);

        request.setAttribute("patients", patients);

        request.getRequestDispatcher("searchPatient.jsp")
               .forward(request, response);
    }
}