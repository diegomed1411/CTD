package com.company;

public class Cuenta {
    private Integer numero;
    private Double saldo;
    private EstrategiaExtraccion estrategia;

    public Integer getNumero() {
        return numero;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    public Double getSaldo() {
        return saldo;
    }

    public void setSaldo(Double saldo) {
        this.saldo = saldo;
    }

    public EstrategiaExtraccion getEstrategia() {
        return estrategia;
    }

    public void setEstrategia(EstrategiaExtraccion estrategia) {
        this.estrategia = estrategia;
    }

    public boolean extraer(double monto){
        return estrategia.extraer(this, monto);
    }
}
