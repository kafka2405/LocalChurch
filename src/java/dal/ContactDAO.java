package dal;

import dao.MSSQLConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Contact;

public class ContactDAO {
    public Contact getOne(int id) throws Exception {
        String query = "select * from Contact where Id = ?";
        try(Connection connection  = MSSQLConnection.getConnection();
                PreparedStatement ps = connection.prepareStatement(query);){
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery();){
                if(rs.next()){
                    Contact contact = new Contact(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getString(7)
                    );
                    return contact;
                }
            }
        }catch(Exception e){
            throw e;
        }
        return null;
    }
}
