package com.example.springmvc.services;

import com.example.springmvc.dominio.Usuario;

public class UsuarioService {
    public Usuario crearUsuario(){
        Usuario usuario = new Usuario("Diego", 25);
        return usuario;
    }
}
