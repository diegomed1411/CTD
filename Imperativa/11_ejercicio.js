//la lista de clientes.
let arrayCuentas = [
    {
      nroCuenta: 5486273622,
      tipoDeCuenta: "Cuenta Corriente",
      saldoEnPesos: 27771,
      titularCuenta: "Abigael Natte",
    },
    {
      nroCuenta: 1183971869,
      tipoDeCuenta: "Caja de Ahorro",
      saldoEnPesos: 8675,
      titularCuenta: "Ramon Connell",
    },
    {
      nroCuenta: 9582019689,
      tipoDeCuenta: "Caja de Ahorro",
      saldoEnPesos: 27363,
      titularCuenta: "Jarret Lafuente",
    },
    {
      nroCuenta: 1761924656,
      tipoDeCuenta: "Cuenta Corriente",
      saldoEnPesos: 32415,
      titularCuenta: "Ansel Ardley",
    },
    {
      nroCuenta: 7401971607,
      tipoDeCuenta: "Cuenta Unica",
      saldoEnPesos: 18789,
      titularCuenta: "Jacki Shurmer",
    },
  ];
  // podes continuar tu codigo a partir de aca!

  let banco = {
    clientes: arrayCuentas,
    consultarCliente: function(titular){
        for (let i = 0; i < this.clientes.length; i++) {
            if(this.clientes[i].titularCuenta=== titular){
                return this.clientes[i]
            }            
        }
    },
    deposito: function (titular, dinero){        
                this.consultarCliente(titular).saldoEnPesos += dinero
                return `Se realizó un deposito exitosamente por ${dinero}, el nuevo saldo en pesos es de ${this.consultarCliente(titular).saldoEnPesos}`
    },
    extraccion: function (titular, dinero){  
        let transaccion     
        if(this.consultarCliente(titular).saldoEnPesos >= dinero){
            transaccion = `Se realizó una extraccion por ${dinero}, el nuevo saldo en pesos es de ${this.consultarCliente(titular).saldoEnPesos}`
        } else {transaccion = `Saldo Insuficiente`}
        return transaccion
    }               
  }



  //console.log(banco.deposito("Jacki Shurmer", 500))
  console.log(banco.extraccion("Jacki Shurmer", 100000))