// link del ejercicio https://drive.google.com/file/d/1Q8RvyiTXOAeZSE5FBTLuofKGgHknHkeC/view

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
  consultarCliente: function (titular) {
    for (let i = 0; i < this.clientes.length; i++) {
      if (this.clientes[i].titularCuenta === titular) {
        return this.clientes[i];
      }
    }
  },
  deposito: function (titular, dinero) {
    this.consultarCliente(titular).saldoEnPesos += dinero;
    return `Se realizó un deposito exitosamente por ${dinero}, el nuevo saldo en pesos es de ${
      this.consultarCliente(titular).saldoEnPesos
    }`;
  },
  extraccion: function (titular, dinero) {
    let transaccion;
    if (this.consultarCliente(titular).saldoEnPesos >= dinero) {
      transaccion = `Se realizó una extraccion por ${dinero}, el nuevo saldo en pesos es de ${
        this.consultarCliente(titular).saldoEnPesos
      }`;
    } else {
      transaccion = `Saldo Insuficiente`;
    }
    return transaccion;
  },
};

//console.log(banco.deposito("Jacki Shurmer", 500))
console.log(banco.extraccion("Jacki Shurmer", 100000));

/*Propiedad única
Crear una función llamada propiedadUnica que reciba un arreglo de objetos como
parámetro y un string. Esta deberá retornar un nuevo arreglo de objetos, teniendo como
parámetro la propiedad que fue pasada como string.
Ejemplo:
let array = [ { nombre: “Lean”, edad: 27 }, { nombre: “Eze”, edad: 49} ]
propiedadUnica(array, “edad”) debe retornar [ { edad: 27 }, { edad: 49 } ]
propiedadUnica(array, “nombre”) debe retornar [ { nombre: “Lean”}, { nombre: “Eze” } ]*/

let array1 = [
  { nombre: "Lean", edad: 27 },
  { nombre: "Eze", edad: 49 },
];
let propiedadUnica = (arr, propiedad) => {
  return arr.map((objeto) => ({ [propiedad]: objeto[propiedad] }));
};

console.log(propiedadUnica(array1, "nombre"));

/*Calculador de notas
Crear el objeto “alumno”, el cual va a consistir de las siguientes propiedades básicas:
● Nombre
● Número de legajo
● Lista de notas
Nos gustaría calcular el promedio del alumno y si el mismo está aprobado, basado en una
nota de aprobación que le va a ser dada. Para este ejercicio, vamos a dejar que pienses
todos los métodos y propiedades que puedan hacer falta para que el programa funcione
correctamente de la manera solicitada.*/

const alumno = {
  nombre: "Diego",
  nroLegajo: 123456,
  listaNotas: [
    { materia: "Geografia", nota: 9 },
    { materia: "Historia", nota: 6 },
    { materia: "Matematicas", nota: 10 },
    { materia: "Literatura", nota: 4 },
    { materia: "Biologia", nota: 2 },
  ],
};

let promedioCurso = (objetoAlumno , promedioMinimo) =>{
  let notasAcumuladas = 0
  objetoAlumno.listaNotas.map(obj =>notasAcumuladas += obj.nota)
  return notasAcumuladas/objetoAlumno.listaNotas.length > promedioMinimo ? "Curso aprobado" : "Curso Reprobado"
}
console.log(promedioCurso(alumno, 8))

let promedioPorMateria = (objetoAlumno , promedioMinimo) =>{
  let resultadoPorMateria = []
  objetoAlumno.listaNotas.map(obj => obj.nota >= promedioMinimo ? resultadoPorMateria.push({...obj, resultado: "aprobado"}): resultadoPorMateria.push({...obj, resultado: "no aprobado"}) )
  return resultadoPorMateria
}

console.log(promedioPorMateria(alumno, 5))