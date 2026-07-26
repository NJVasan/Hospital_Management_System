package hospital;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePatientServlet")
public class UpdatePatientServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        Patient p = new Patient();

        p.setId(Integer.parseInt(request.getParameter("id")));
        p.setName(request.getParameter("name"));
        p.setAge(Integer.parseInt(request.getParameter("age")));
        p.setGender(request.getParameter("gender"));
        p.setDisease(request.getParameter("disease"));
        p.setPhone(request.getParameter("phone"));
        p.setAdmissionDate(request.getParameter("admissionDate"));

        PatientDAO dao = new PatientDAO();

        if (dao.updatePatient(p)) {
            response.sendRedirect("ViewPatientServlet");
        } else {
            response.getWriter().println("Patient Update Failed!");
        }
    }
}