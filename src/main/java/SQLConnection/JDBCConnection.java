package SQLConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCConnection {

    public static void main(String[] args) {

        Connection connection = null;

        String url = "jdbc:oracle:thin:@localhost:1521:orcl";
        String userName = "test";
        String pw = "1234";


        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(url,userName,pw);
            System.out.println(connection.isClosed() ? "접속종료": "접속중");

            connection.close();
            System.out.println(connection.isClosed() ? "접속종료": "접속중");

        }catch (Exception e){
            e.printStackTrace();
        }



    }

}
