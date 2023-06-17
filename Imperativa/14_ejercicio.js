/*Ejercicios
A partir de el siguiente array de edades nos solicitan realizar lo siguiente:*/

const edades = [11, 12, 15, 18, 25, 22, 10, 33, 18, 5];

//Obtener en un nuevo array las edades menores a 18.
let menorADieciocho = (arr) =>{
    let menor = []
    for (let i = 0; i < arr.length; i++) {
        if(arr[i]<18){
            menor.push(arr[i])
        }         
    }
    return menor
}
console.log(menorADieciocho(edades))
//Obtener en un nuevo array las edades mayor o igual a 18.
let mayorOIgualADieciocho = (arr) =>{
    let mayor = []
    for (let i = 0; i < arr.length; i++) {
        if(arr[i]>=18){
            mayor.push(arr[i])
        }         
    }
    return mayor
}
console.log(mayorOIgualADieciocho(edades))

//Obtener en un nuevo array las edades igual a 18.
let IgualADieciocho = (arr) =>{
    let igual = []
    for (let i = 0; i < arr.length; i++) {
        if(arr[i]==18){
            igual.push(arr[i])
        }         
    }
    return igual
}
console.log(IgualADieciocho(edades))

//Obtener el menor.
let menorArray = (arr) =>{
    let menor = arr[0]
    for (let i = 1; i < arr.length; i++) {
        if(arr[i]<menor){
            menor = arr[i]
        }        
    }
    return menor
}
console.log(menorArray(edades))

//Obtener el mayor. 
let mayorArray = (arr) =>{
    let mayor = arr[0]
    for (let i = 1; i < arr.length; i++) {
        if(arr[i]>mayor){
            mayor = arr[i]
        }        
    }
    return mayor
}
console.log(mayorArray(edades))

//Obtener el promedio de edades.
let promedioArray = (arr) =>{
    let acumulador = 0
    for (let i = 0; i < arr.length; i++) {
        acumulador += arr[i]        
    }
    return Math.round(acumulador/arr.length)
}
console.log(promedioArray(edades))

//Incrementar en 1 todas las edades.
let incrementarArray = (arr)=>{
    let incrementado = []
    for (let i = 0; i < arr.length; i++) {
        incrementado.push(arr[i]+1)        
    }
    return incrementado
}
console.log(incrementarArray(edades))

//Recordemos que hay muchas formas de resolver, nuestra tarea será pensar cuál es la mejor para poder reutilizar nuestro código con diferentes array de edades.


const edadesGrupo1 = [21, 12, 15, 18, 25];
const edadesGrupo2 = [2, 11, 54, 63, 24];


/*Excelente, ahora, como ya trabajamos un array, sabemos que este puede tener como elemento cualquier tipo de dato —Number,
String, Objetos Literales, Array, etc—. Para continuar con la Mesa de Trabajo trabajaremos con un array de objetos literales,
para ello invitamos a repasar la clase de Objetos Literales para tener en claro su estructura y sintaxis. 
Podemos decir que un objeto literal es una colección de propiedades y cada propiedad es una asociación entre una clave y un valor.

/*
 Observamos que es un array por su sintaxis que comienza y termina con corchetes []
   y sus elementos tienen la sintaxis de objetos literales {}
   Entonces, podemos decir que tenemos una array de objetos literales, 
   o una colección de objetos literales

const arrayDeObjetosLiterales =
[
    {},
    {},
    {},
    {}
];

Tenemos como base un array de cuentas bancarias, donde a cada una la representamos con un objeto literal. 
A partir de este array trabajaremos sobre los siguientes enunciados, resolviendo de la forma que nos parezca más adecuada */
const arrayCuentas =
[
    {
      titular: "Arlene Barr",
      estaHabilitada: false,
      saldo: 3253.40,
      edadTitular: 33,
      tipoCuenta: "sueldo"
    },
    {
      titular: "Roslyn Torres",
      estaHabilitada: false,
      saldo: 3229.45,
      edadTitular: 27,
      tipoCuenta: "sueldo"
    },
    {
      titular: "Cleo Lopez",
      estaHabilitada: true,
      saldo: 1360.19,
      edadTitular: 34,
      tipoCuenta: "corriente"
    },
    {
      titular: "Daniel Malone",
      estaHabilitada: true,
      saldo: 3627.12,
      edadTitular: 30,
      tipoCuenta: "sueldo"
    },
    {
      titular: "Ethel Leon",
      estaHabilitada: true,
      saldo: 1616.52,
      edadTitular: 34,
      tipoCuenta: "sueldo"
    },
    {
      titular: "Harding Mitchell",
      estaHabilitada: true,
      saldo: 1408.68,
      edadTitular: 25,
      tipoCuenta: "corriente"
    }
  ]

//Obtener un nuevo array de cuentas cuyas edades sean menores a 30. 
const edadesMenos30 = (arr) => {
    let menos30 = []
    for (let i = 0; i < arr.length; i++) {
        if(arr[i].edadTitular < 30){
            menos30.push(arr[i])
        }        
    }
    return menos30
}
console.log(edadesMenos30(arrayCuentas))

//Obtener un nuevo array de cuentas cuyas edades sean mayor o igual a 30.
const edadesMas30 = (arr) => {
    let mas30 = []
    for (let i = 0; i < arr.length; i++) {
        if(arr[i].edadTitular >= 30){
            mas30.push(arr[i])
        }        
    }
    return mas30
}
console.log(edadesMas30(arrayCuentas))

//Obtener un nuevo array de cuentas cuyas edades sean menores o igual a 30.
// misma resolucion que punto a, agregando la comparacion <=

//Obtener la cuenta con el titular de la misma más joven.
const titularMasJoven = (arr) =>{
    let menorEdad = arr[0].edadTitular
    let titular = arr[0]
    for (let i = 0; i < arr.length; i++) {
        if(arr[i].edadTitular < menorEdad){
            menorEdad = arr[i].edadTitular
            titular = arr[i]
        }        
    }
    return titular
}
console.log('------------------------')
console.log(titularMasJoven(arrayCuentas))
console.log('------------------------')

//Obtener un array con las cuentas habilitadas.
const cuentasHabilitadas = (arr) =>{
    let habilitadas = []
    for (let i = 0; i< arr.length; i++) {
      if(arr[i].estaHabilitada){
        habilitadas.push(arr[i])
      }      
    }
    return habilitadas
}
console.log(cuentasHabilitadas(arrayCuentas))
console.log('------------------------')
//Obtener un array con las cuentas deshabilitadas.
const cuentasDeshabilitadas = (arr) =>{
    let deshabilitadas = []
    for (let i = 0; i< arr.length; i++) {
      if(!arr[i].estaHabilitada){
        deshabilitadas.push(arr[i])
      }      
    }
    return deshabilitadas
}
console.log(cuentasDeshabilitadas(arrayCuentas))
console.log('------------------------')
//Obtener la cuenta con el menor saldo.
const titularMenorSaldo = (arr) =>{
    let menorSaldo = arr[0].saldo
    let titular = arr[0]
    for (let i = 0; i < arr.length; i++) {
        if(arr[i].saldo < menorSaldo){
            menorSaldo = arr[i].saldo
            titular = arr[i]
        }        
    }
    return titular
}
console.log(titularMenorSaldo(arrayCuentas))
console.log('------------------------')

//Obtener la cuenta con el mayor saldo.
const titularMayorSaldo = (arr) =>{
    let mayorSaldo = arr[0].saldo
    let titular = arr[0]
    for (let i = 0; i < arr.length; i++) {
        if(arr[i].saldo > mayorSaldo){
            mayorSaldo = arr[i].saldo
            titular = arr[i]
        }        
    }
    return titular
}
console.log(titularMayorSaldo(arrayCuentas))
console.log('------------------------')


/*Extras:
Desarrollar una función llamada generarID que reciba como parámetro el array de cuentas y agregue a cada elemento (objeto literal) 
una propiedad llamada id con un valor Numérico
estructura de los objetos del array
    {
      titular: "Arlene Barr",
      estaHabilitada: false,
      saldo: 3253.40,
      edadTitular: 33,
      tipoCuenta: "sueldo"
    },*/

const generarID = (arr)=>{
    for (let i = 0; i < arr.length; i++) {
        arr[i].id = i+1        
    }
}
generarID(arrayCuentas)
console.log(arrayCuentas)
console.log('------------------------')

/*Desarrollar una función llamada buscarPorId que reciba como parámetro el array de cuentas y un id, 
en caso de encontrar retornar la cuenta (él objeto literal completo), caso contrario retornar null*/
const buscarPorId = (arr, idBusqueda) =>{
    let clienteBuscado = null
    for (let i = 0; i < arr.length; i++) {
        if(arr[i].id === idBusqueda){
            clienteBuscado = arr[i]
        }  
    }
    return clienteBuscado!== null? clienteBuscado:null
}
console.log(buscarPorId(arrayCuentas, 9))
console.log('------------------------')
/*Desarrollar una función llamada filtrarPorSaldos que reciba como parámetro el array de cuentas y un saldo (Number), 
deberá retornar un array que se cuyas cuentas se encuentren por debajo del saldo enviado por parámetro*/
const filtrarPorSaldos = (arr, saldoTope) =>{
    let clientesConTope = []
    for (let i = 0; i < arr.length; i++) {
        if(arr[i].saldo <= saldoTope){
            clientesConTope.push(arr[i])
        }        
    }
    return clientesConTope
}
console.log(filtrarPorSaldos(arrayCuentas, 3000))
console.log('------------------------')
/*Desarrollar una función llamada incrementarSaldo que reciba como parámetro el array de cuentas, 
un id y un saldo, deberá incrementar él saldo de la cuenta, en caso de encontrar, caso contrario retornar undefined 
Reutilizando la función  buscarPorId */
const incrementarSaldo = (arr, idBusqueda, importeIncremento)=>{
    let clienteAModificar = buscarPorId(arr, idBusqueda)
    if(clienteAModificar == null){
        clienteAModificar == undefined
    } else {
        clienteAModificar.saldo = clienteAModificar.saldo + importeIncremento
        for (let i = 0; i < arr.length; i++) {
            if(arr[i].id == clienteAModificar.id){
                arr[i] = clienteAModificar
            }            
        }
    }
    return clienteAModificar == null ? null : arr
}
console.log(incrementarSaldo(arrayCuentas, 6, 5000))