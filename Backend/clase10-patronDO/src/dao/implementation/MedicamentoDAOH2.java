package dao.implementation;

import dao.BD;
import dao.IDao;
import model.Medicamento;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;


public class MedicamentoDAOH2 implements IDao<Medicamento> {

    private static final Logger LOGGER = Logger.getLogger(MedicamentoDAOH2.class);

    @Override
    public Medicamento guardar(Medicamento medicamento) {
        LOGGER.info("Estamos persistiendo un medicamento");

        Connection connection = null;

        try {
            connection = BD.getConnection();

            //insertar los valores
            PreparedStatement psInsert = connection.prepareStatement("INSERT INTO MEDICAMENTOS (NOMBRE, LABORATORIO, CANTIDAD, PRECIO, CODIGO) VALUES (?,?,?,?,?)",
                    Statement.RETURN_GENERATED_KEYS);
            psInsert.setString(1, medicamento.getNombre());
            psInsert.setString(2, medicamento.getLaboratorio());
            psInsert.setInt(3, medicamento.getCantidad());
            psInsert.setDouble(4, medicamento.getPrecio());
            psInsert.setInt(5, medicamento.getCodigo());

            psInsert.execute();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return medicamento;
    }
}
