package dal;

import dao.MSSQLConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.IntroInfo;

public class IntroInfoDAO {

    public IntroInfo getOne(int id) throws Exception {
        String query = "select * from IntroInfo where Id = ?";
        try(Connection connection  = MSSQLConnection.getConnection();
                PreparedStatement ps = connection.prepareStatement(query);){
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery();){
                if(rs.next()){
                    IntroInfo introInfo = new IntroInfo(
                            rs.getInt("Id"),
                            rs.getString("HeaderPhoto"),
                            rs.getString("IntroImage"),
                            rs.getString("IntroTitle"),
                            rs.getString("IntroContent"),
                            rs.getString("AuthorName"),
                            rs.getString("AuthoAvatar")
                    );
                    return introInfo;
                }
            }
        }catch(Exception e){
            throw e;
        }
        return null;
    }
}
