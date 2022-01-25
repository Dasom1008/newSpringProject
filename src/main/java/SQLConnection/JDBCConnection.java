package SQLConnection;

import org.apache.ibatis.jdbc.SQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
    public static void main(String[] args) {
        Connection con = null;

        String server = "localhost";         //SQL 서버주소
        String database = "";
        String user_name = "";
        String password = "1234";

        //1. 드라이버 로딩
        try {
            Class.forName("com.sql.jdbc.Driver");
        }catch (ClassNotFoundException e){
            System.err.println("!!<JDBC오류> Driver load 오류"+e.getMessage());
            e.printStackTrace();
        }

        //2. 연결
        try {
            con = DriverManager.getConnection("jdbc:sql://"+server+"/"+database+"?useSSL=false", user_name, password);
            System.out.println("정상적으로 연결되었습니다.");
        } catch (SQLException e){
            System.err.println("con 오류" + e.getMessage());
            e.printStackTrace();
        }

        //3. 해제
        try {
            if(con != null){
                con.close();
            }
        }catch (SQLException e){}
    }
}
