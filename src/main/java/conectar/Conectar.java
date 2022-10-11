
package conectar;


import java.sql.*;

public class Conectar {
    private static final String JDBC_URL="jdbc:mysql://localhost:3306/dbclinica?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private static final String JDBC_USER="root";
    private static final String JDBC_PASSWORD="123456";
    
    public static Connection getConnection() throws SQLException{
        //JOptionPane.showMessageDialog(null, "Se conecto correctamente");
        return DriverManager.getConnection(JDBC_URL,JDBC_USER,JDBC_PASSWORD);
    }
    
    public static void close(ResultSet rs) throws SQLException{
    rs.close();
    }
    
    public static void close(PreparedStatement st) throws SQLException{
    st.close();
    }
    
    public static void close(Connection conn) throws SQLException{
    conn.close();
    }
    
}
