import java.sql.*;

public class Cuenta {

    private static final String SQL_CREATE_TABLE = "DROP TABLE IF EXISTS CUENTAS; CREATE " +
            "TABLE CUENTAS (" +
            "ID INT PRIMARY KEY," +
            "NUMERO_CUENTA INT NOT NULL," +
            "TITULAR VARCHAR(100) NOT NULL," +
            "SALDO NUMERIC(10,2) NOT NULL)";

    private static final String SQL_INSERT = "INSERT INTO CUENTAS VALUES (?,?,?,?)";

    private static final String SQL_SELECT_ALL = "SELECT * FROM CUENTAS";

    private static final String SQL_UPDATE = "UPDATE CUENTAS SET SALDO=? WHERE ID=?";



    public static void main(String[] args) {
        Connection connection = null;

        try {
            //NOS CONECTAMOS A LA BD
            connection = getConnection();

            //CREAMOS LA TABLA
            Statement statement = connection.createStatement();
            statement.execute(SQL_CREATE_TABLE);

            //INSERTAR VALORES -> DE FORMA DINÁMICA
            PreparedStatement preparedStatement = connection.prepareStatement(SQL_INSERT);
            preparedStatement.setInt(1, 1);
            preparedStatement.setInt(2,124578);
            preparedStatement.setString(3, "Vanina");
            preparedStatement.setDouble(4, 23485.00);

            preparedStatement.execute();

            //GUARADAMOS DATOS DE LA BD EN JAVA
            ResultSet rs = statement.executeQuery(SQL_SELECT_ALL);

            //LOS CONSULTAMOS
            while (rs.next()) {
                System.out.println("La cuenta con id: " +
                        rs.getInt(1) + " y número de cuenta: " + rs.getInt(2) +
                        " y titular: " + rs.getString(3) + " tiene como saldo: " +
                        rs.getDouble(4));
            }

            //VAMOS A HACER UNA TRANSACCIÓN
            connection.setAutoCommit(false);

            PreparedStatement preparedStatement1 = connection.prepareStatement(SQL_UPDATE);

            preparedStatement1.setDouble(1, 3485.00);
            preparedStatement1.setInt(2, 1);

            preparedStatement1.execute();
            int exception = 4/0;
            connection.commit();

            //ES UNA BUENA PRÁCTICA
            connection.setAutoCommit(true);

            //GUARADAMOS DATOS DE LA BD EN JAVA
            ResultSet rs1 = statement.executeQuery(SQL_SELECT_ALL);

            System.out.println("Este es el saldo luego de la transacción");
            //LOS CONSULTAMOS
            while (rs1.next()) {
                System.out.println("La cuenta con id: " +
                        rs1.getInt(1) + " y número de cuenta: " + rs1.getInt(2) +
                        " y titular: " + rs1.getString(3) + " tiene como saldo: " +
                        rs1.getDouble(4));
            }

        //1234567899,00
        } catch (Exception e) {
            try {
                connection.rollback();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        }
        finally {
            try {
                connection.close();
            } catch (Exception e) {
                e.getMessage();
            }
        }

        //VOLVEMOS A CONECTARNOS A LA BD
        try {
            connection = getConnection();

            Statement statement = connection.createStatement();

            ResultSet rs2 = statement.executeQuery(SQL_SELECT_ALL);

            System.out.println("Este es el saldo luego del rollback");
            //LOS CONSULTAMOS
            while (rs2.next()) {
                System.out.println("La cuenta con id: " +
                        rs2.getInt(1) + " y número de cuenta: " + rs2.getInt(2) +
                        " y titular: " + rs2.getString(3) + " tiene como saldo: " +
                        rs2.getDouble(4));
            }



        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (Exception e) {
                e.getMessage();
            }
        }



    }

    private static Connection getConnection() throws Exception{
        Class.forName("org.h2.Driver");
        return DriverManager.getConnection("jdbc:h2:./202402",
                "sa", "sa");
    }


}
