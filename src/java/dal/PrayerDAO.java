package dal;

import dao.MSSQLConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Prayer;

public class PrayerDAO {
    public Prayer getOne(int id) throws Exception {
        String query = "select Id, Title, Description, PhotoPath, UpdateTime from Prayers where Id = ?";
        try(Connection connection  = MSSQLConnection.getConnection();
                PreparedStatement ps = connection.prepareStatement(query);){
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery();){
                if(rs.next()){
                    Prayer prayer = new Prayer(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getDate(5)
                    );
                    return prayer;
                }
            }
        }catch(Exception e){
            throw e;
        }
        return null;
    }
    
    public int totalPrayer() throws Exception {
        String query = "SELECT COUNT(id) FROM Prayers";
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
    
    public ArrayList<Prayer> getListByIndex(int start, int end) throws Exception {
        String query = "SELECT Id, Title, Description, PhotoPath, UpdateTime FROM (\n"
                + "SELECT Id, Title, Description, PhotoPath, UpdateTime, ROW_NUMBER() OVER (ORDER BY UpdateTime DESC) AS RowNum FROM Prayers\n"
                + ") AS MyDerivedTable WHERE MyDerivedTable.RowNum BETWEEN ? AND ?;";
        ArrayList<Prayer> listPrayer = new ArrayList<Prayer>();
        try (Connection con = MSSQLConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, start);
            ps.setInt(2, end);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Prayer prayer = new Prayer(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getDate(5)
                    );
                    listPrayer.add(prayer);
                }
            }
        } catch (Exception e) {
            throw e;
        }
        return listPrayer;
    }
    
    public static void main(String[] args) {
        PrayerDAO pd = new PrayerDAO();
        try {
            System.out.println(pd.totalPrayer());
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
