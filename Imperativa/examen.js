/*Ejercicio 1
Dado el siguiente array*/
const autos = [
    {
        marca: 'Toyota',
        modelo: 2022,
        color: 'rojo'
    },
    {
        marca: 'Renault',
        modelo: 2015,
        color: 'gris'
    },
    {
        marca: 'Peugeot',
        modelo: 2017,
        color: 'rojo'
    },
    {
        marca: 'Fiat',
        modelo: 2021,
        color: 'negro'
    }
]

/*Crear una función que reciba el array por parametro y retorne un nuevo array con los autos cuyo modelo sea mayor o igual a 2020.*/
console.log('--- Ejercicio 1 ---')
const modelosNuevos = (arreglo) =>{
    let nuevos = []
    for (let i = 0; i < arreglo.length; i++) {
        if(arreglo[i].modelo >= 2020){
            nuevos.push(arreglo[i])
        }    
    }
    return nuevos
}
let masVeinteVeinte = modelosNuevos(autos)
console.log(masVeinteVeinte)

/*Ejercicio 2
Dado el siguiente array de objetos ordenarlo de forma descendente en base a la notaPromedio*/

let estudiantes = [
        {
            nombre: "juan",
            activo: true,
            notaPromedio: 5
        },
        {
            nombre: "maria",
            activo: false,
            notaPromedio: 3
        },
        {
            nombre: "florencia",
            activo: true,
            notaPromedio: 9
        },
        {
            nombre: "carlos",
            activo: false,
            notaPromedio: 8
        },
        {
            nombre: "jose",
            activo: true,
            notaPromedio: 6
        },
    ]

console.log('--- Ejercicio 2 ---')
const bubbleSortNotaPromedio = (arreglo) => {
    let cajaAuxiliar
    for (let i = 0; i < arreglo.length; i++) {
      for (let j = 0; j < arreglo.length - 1; j++) {
        if (arreglo[j].notaPromedio < arreglo[j + 1].notaPromedio) {
          cajaAuxiliar = arreglo[j]
          arreglo[j] = arreglo[j + 1]
          arreglo[j + 1] = cajaAuxiliar
        }
      }
    }
  };
bubbleSortNotaPromedio(estudiantes)
console.log(estudiantes)

/*Ejercicio 3
Dada la siguiente matriz, realizar los siguientes ejercicios.*/
let matrix = [
    [1, 4, 7, 4],
    [5, 7, 6, 2],
    [6, 2, 3, 3],
    [2, 6, 8, 1],
]

/*A Crear una función que reciba por parámetros la matriz y la posición de una columna determinada.
La función debe retornar un arreglo con todos los elementos de esa columna.
B Crear una función que reciba por parámetro la matriz y cambie todos los elementos impares de la matriz por un número 0 (cero)*/

console.log('--- Ejercicio 3A ---')
const columnaMatriz = (matriz, columna) =>{
    let valores = []
    for (let i = 0; i < matriz.length; i++) {
        valores.push(matriz[i][columna])        
    }
    return valores
}
let valoresXColumna = columnaMatriz(matrix, 0)
console.log(valoresXColumna)


console.log('--- Ejercicio 3B ---')
const imparesCero = (matriz) =>{
    for (let i = 0; i < matriz.length; i++) {
        for (let j = 0; j < matriz[i].length; j++) {            
            if(matriz[i][j] % 2 !== 0){
                matriz[i][j] = 0
            }
        }        
    }
}
imparesCero(matrix)
console.table(matrix)