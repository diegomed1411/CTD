package com.example.c15Odontologo.controller;

import com.example.c15Odontologo.domain.Odontologo;
import com.example.c15Odontologo.service.OdontologoServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class OdontologoController {
    private final OdontologoServiceImpl odontologoServiceImpl;

    @Autowired
    public OdontologoController(OdontologoServiceImpl odontologoServiceImpl) {
        this.odontologoServiceImpl = odontologoServiceImpl;
    }


    @GetMapping("odontologos")
    public List<Odontologo> getOdontologos() {
        return odontologoServiceImpl.listaOdontologos();
    }
}
