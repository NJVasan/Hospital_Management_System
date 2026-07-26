package hospital;
import java.sql.*;
import java.util.ArrayList;

public class PatientDAO {

    // Add Patient
    public boolean addPatient(Patient p) {

        boolean status = false;

        try {
            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO patient(name, age, gender, disease, phone, admission_date) VALUES(?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, p.getName());
            ps.setInt(2, p.getAge());
            ps.setString(3, p.getGender());
            ps.setString(4, p.getDisease());
            ps.setString(5, p.getPhone());
            ps.setString(6, p.getAdmissionDate());

            int i = ps.executeUpdate();

            if (i > 0)
                status = true;

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // View All Patients
    public ArrayList<Patient> getAllPatients() {

        ArrayList<Patient> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM patient";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Patient p = new Patient();

                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setAge(rs.getInt("age"));
                p.setGender(rs.getString("gender"));
                p.setDisease(rs.getString("disease"));
                p.setPhone(rs.getString("phone"));
                p.setAdmissionDate(rs.getString("admission_date"));

                list.add(p);
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // Get Patient By ID
    public Patient getPatientById(int id) {

        Patient p = new Patient();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM patient WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setAge(rs.getInt("age"));
                p.setGender(rs.getString("gender"));
                p.setDisease(rs.getString("disease"));
                p.setPhone(rs.getString("phone"));
                p.setAdmissionDate(rs.getString("admission_date"));
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return p;
    }

    // Update Patient
    public boolean updatePatient(Patient p) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "UPDATE patient SET name=?, age=?, gender=?, disease=?, phone=?, admission_date=? WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, p.getName());
            ps.setInt(2, p.getAge());
            ps.setString(3, p.getGender());
            ps.setString(4, p.getDisease());
            ps.setString(5, p.getPhone());
            ps.setString(6, p.getAdmissionDate());
            ps.setInt(7, p.getId());

            int i = ps.executeUpdate();

            if (i > 0)
                status = true;

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // Delete Patient
    public boolean deletePatient(int id) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "DELETE FROM patient WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            int i = ps.executeUpdate();

            if (i > 0)
                status = true;

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // Search Patient by Name
    public ArrayList<Patient> searchPatient(String name) {

        ArrayList<Patient> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM patient WHERE name LIKE ?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, "%" + name + "%");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Patient p = new Patient();

                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setAge(rs.getInt("age"));
                p.setGender(rs.getString("gender"));
                p.setDisease(rs.getString("disease"));
                p.setPhone(rs.getString("phone"));
                p.setAdmissionDate(rs.getString("admission_date"));

                list.add(p);
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}