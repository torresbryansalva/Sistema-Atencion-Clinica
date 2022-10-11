
package conectar;

import java.sql.*;
import java.util.logging.*;

public class VerDatos {
     private static final String SQL_MOSTRAR="SELECT * FROM dbclinica.datoscliente";

    Connection conexion=null;
    
     public String getPass(String user){
         String pass = "";
         try {
             conexion=Conectar.getConnection();
             Statement stmt = conexion.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT clave FROM dbclinica.permisos WHERE usuario='" + user +"'");
             if(rs.next())
            {
                pass = rs.getString(1);
            }
         } catch (SQLException ex) {
             Logger.getLogger(VerDatos.class.getName()).log(Level.SEVERE, null, ex);
         }
        return pass;
    }
     
     public char ObtenerLetra(String clave){
         char s=clave.charAt(0);
        return s;
    }


    
}
