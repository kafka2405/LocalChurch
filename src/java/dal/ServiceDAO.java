package dal;

import dao.MSSQLConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import model.Service;

public class ServiceDAO {
    public int totalServices() throws Exception {
        String query = "SELECT COUNT(id) FROM Services";
        int total = 0;
        try (Connection connection = MSSQLConnection.getConnection();
                PreparedStatement ps = connection.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (Exception e) {
            throw e;
        }
        return total;
    }
    
    public ArrayList<Service> getListByIndex(int start, int end) throws Exception {
        String query = "SELECT Id, Name, Description, Schedule FROM (\n"
                + "SELECT Id, Name, Description, Schedule, ROW_NUMBER() OVER (ORDER BY Id) AS RowNum FROM Services\n"
                + ") AS MyDerivedTable WHERE MyDerivedTable.RowNum BETWEEN ? AND ?;";
        ArrayList<Service> listService = new ArrayList<Service>();
        try (Connection con = MSSQLConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, start);
            ps.setInt(2, end);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String date = new SimpleDateFormat("yyyy-MMMM-dd").format(rs.getDate(4));
                    Service service = new Service(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            date
                    );
                    listService.add(service);
                }
            }
        } catch (Exception e) {
            throw e;
        }
        return listService;
    }
    
    public static void main(String[] args) {
        ServiceDAO sd = new ServiceDAO();
        try {
            ArrayList<Service> lsit  = sd.getListByIndex(1, 5);
            for (Service service : lsit) {
                System.out.println(service);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
