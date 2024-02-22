import org.h2.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Animal {

    //VAMOS A CREAR UNA TABLA DE ANIMALES
    //INSERTAR ANIMALES

    public static void main(String[] args) {
        Connection c = null;
        try{
            //conexion a la BD
            c = getConnection();

            //ORDEN A LA BD
            Statement statement = getConnection().createStatement();

            //DROP-CREATE CREAR LA TABLA
            statement.execute("DROP TABLE IF EXISTS ANIMALES; CREATE TABLE ANIMALES "+
                    "(ID INT PRIMARY KEY, "+
                    "NOMBRE VARCHAR(100) NOT NULL, "+
                    "TIPO VARCHAR(100) NOT NULL)");


            //INSERTAR VALORES EN LA TABLA
            statement.execute("INSERT INTO ANIMALES VALUES (1, 'Indiana', 'perro'),(2, 'Gahia', 'perro'),(3, 'Voli', 'perro')");

            //CONSULTAR BD
            ResultSet rs = statement.executeQuery("SELECT * FROM ANIMALES");
            while (rs.next()){
                System.out.println("Nombre: "+rs.getString(2)+" y tipo: "+rs.getString(3));


        }
            System.out.println("Finalizo la consulta");

            //consulta por id
            ResultSet rsId = statement.executeQuery("SELECT * FROM ANIMALES WHERE ID = 1");

            while (rsId.next()){
                //SE HACE LA CONSULTA POR COLUMNAS, ID 1, NOMBRE 2, TIPO 3 (COMO EL BUSCARV)
                System.out.println("Nombre: "+rsId.getString(2)+" y tipo: "+rsId.getString(3));

            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try {
                getConnection().close();
            }catch (Exception e){
                e.printStackTrace();
            }

        }
    }

    private static Connection getConnection() throws Exception{
        Class.forName("org.h2.Driver");
        return DriverManager.getConnection("jdbc:h2:./clase8-jdbc", "sa", "sa");
    }
}
