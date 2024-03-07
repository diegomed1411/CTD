import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Empleado {
    public static void main(String[] args) throws Exception{
        Class.forName("org.h2.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:h2:"+
                "./pgC8A-jdbc", "sa", "sa");
        Statement stmt = con.createStatement();

        //Código para crear una tabla. Elimina la tabla si esta ya existe y la
        //vuelve a crear
        String createSql = "DROP TABLE IF EXISTS EMPLEADO;\n" +
                "CREATE TABLE EMPLEADO(ID INT PRIMARY KEY, NOMBRE VARCHAR(255), EDAD INTEGER, EMPRESA VARCHAR(255), FECHA DATE);\n" +
                "INSERT INTO EMPLEADO VALUES(1, 'DIEGO', 37, 'DIGITAL', '2024-02-23');\n"+
                "INSERT INTO EMPLEADO VALUES(2, 'PEPE', 25, 'FACEBOOK', '2020-04-15');\n"+
                "INSERT INTO EMPLEADO VALUES(3, 'LOLO', 32, 'GOOGLE', '2024-02-23');\n";
        stmt.execute(createSql);

        //Codigo para consultar todos los registros de la tabla TEST
        String sql = "select * from EMPLEADO";
        ResultSet rd = stmt.executeQuery(sql);

        //Código para recorrer el resultado de la consulta
        while(rd.next()) {
            System.out.println(rd.getInt(1) + rd.getString(2)+rd.getString(3)+rd.getString(4));
        }
    }
}
