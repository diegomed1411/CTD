package service;

import dao.IDao;
import dao.implementacion.DomicilioDaoH2;
import model.Domicilio;

import java.util.List;

public class DomicilioService {
    private IDao<Domicilio> iDao;

    public DomicilioService() {
        this.iDao = new DomicilioDaoH2();
    }

    public Domicilio guardar (Domicilio domicilio) {
        return iDao.guardar(domicilio);
    }

    public List<Domicilio> listarTodos() {
        return iDao.listarTodos();
    }
}
