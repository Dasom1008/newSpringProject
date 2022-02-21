package SQLConnection;


import org.testng.annotations.Test;

import java.sql.Connection;
import java.sql.DriverManager;


public class JDBCConnection {
    static {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        }catch (Exception e){
            e.printStackTrace();
        }

    }
    @Test
    public void testConnection(){
        try (Connection con = DriverManager.getConnection("jdbc:oracel:thin:@localhost:1521:orcl","test","1234")){
            log.info(con);
        }catch (Exception e){
            fail(e.getMessage());
        }
    }

}
