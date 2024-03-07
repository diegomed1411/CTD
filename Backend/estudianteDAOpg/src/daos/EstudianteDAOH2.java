package daos;

import entidades.Estudiante;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class EstudianteDAOH2 implements IDao<Estudiante>{
    private final static String DB_JDBC_DRIVER = "org.h2.Driver";
    private final static String DB_URL = "jdbc:h2:./db-estudiantes";
    private final static String DB_USER = "sa";
    private  final static String DB_PASSWORD = "sa";
    @Override
    public Estudiante guardar(Estudiante estudiante) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try{
            Class.forName(DB_JDBC_DRIVER);
            connection = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);

            preparedStatement = connection.prepareStatement("INSERT INTO ESTUDIANTES VALUES(?,?,?)");
            PreparedStatement.setLong(1, estudiante.getId());
            preparedStatement.setString(2, estudiante.getNombre());
            preparedStatement.setString(3, estudiante.getApellido());

            preparedStatement.executeUpdate();
            preparedStatement.close();


        }catch (Exception e){
            e.printStackTrace();
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }

        return estudiante;
    }

    @Override
    public void eliminar(Long id) {

    }

    @Override
    public Estudiante buscar(Long id) {
        return null;
    }

    @Override
    public List<Estudiante> buscarTodos() {
        return null;
    }
}
