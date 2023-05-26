/*1) Crear una función que pida un valor por parámetro y muestre los 10
números siguientes.*/
console.log('----- EJERCICIO 1 -----')
const diezSiguientes = numero => {
    for(let i=numero + 1; i<=numero +10; i++){
        console.log(i)
    }
}
diezSiguientes(10)
//2) Imprimir los números entre el 5 y el 20, saltando de tres en tres.
console.log('----- EJERCICIO 2 -----')
const deTresEnTres = () => {
    for(let i=5; i<=20; i+=3){
        console.log(i)
    }
}
deTresEnTres()

/*3) Escribir un programa que muestre la sumatoria de todos los números
entre el 0 y el 100*/
console.log('----- EJERCICIO 3 -----')
const sumaDeCeroACien = () =>{
    let sumatoria = 0
    for(let i=0; i<=100; i++){
        sumatoria+=i
    }
    return sumatoria
}
console.log(sumaDeCeroACien())

/*4) Dado un número entero positivo, mostrar su factorial. El factorial de
un número se obtiene multiplicando todos los números enteros
positivos que hay entre el 1 y ese número.*/
console.log('----- EJERCICIO 4 -----')
const factorial = numero => {
    let acumulado = 1
    for(let i= 1; i<=numero; i++){
        acumulado *= i
    }
    return acumulado
}

console.log( factorial(2))
/*5) Crear una función que muestre todos los números de la secuencia de
fibonacci hasta el valor ingresado por parámetro.*/
console.log('----- EJERCICIO 5 -----')
let fibonacci = numero => {
    let numero1 = 0
    let numero2 = 1
    console.log(numero1)
    for(let i=0; i<=numero; i++){
        console.log(numero1+i)
        console.log(numero2+numero1)
        numero1 += i
        numero2 += numero1
    }
}
fibonacci(3)

//ver resolucion de este ejercicio