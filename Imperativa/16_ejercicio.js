/*1) Escribir un programa que muestre en pantalla los números del 1 al 100,
sustituyendo los múltiplos de 3 por la palabra “fizz”, los múltiplos de 5 por
“buzz” y los múltiplos de ambos, es decir, los múltiplos de 3 y 5 —o de 15—,
por la palabra “fizzbuzz”. Visiten este sandbox
https://codesandbox.io/s/fizzbuzz-3e9uc?file=/src/index.js para realizar
el ejercicio ahí. Recuerden desplegar la consola para ver sus resultados, y
utilicen la función console.log para mostrar datos en la misma. */
let fizzbuzz = () =>{
    let resultado = []
    for(let i=1; i <=100; i++){
        if(i%3===0 && i%5=== 0){
            resultado.push('fizzbuzz')
        } else if (i%3===0){
            resultado.push('fizz')
        } else if(i%5===0){
            resultado.push('buzz')
        } else {
            resultado.push(i)
        }
    }
    return resultado
}

//console.log(fizzbuzz())


/* 2) Escriban una función que reciba dos parámetros: un array y un índice. La
función deberá de mostrar por consola el valor del elemento según el
índice dado. Por ejemplo, dada la siguiente array e índice, la función
imprimirá '6'. let array =
[3,6,67,6,23,11,100,8,93,0,17,24,7,1,33,45,28,33,23,12,99,100]; var index = 1;
Visiten este sandbox para escribir su código.
https://codesandbox.io/s/busqueda-en-array-025me?file=/src/index.js */
let array =[3,6,67,6,23,11,100,8,93,0,17,24,7,1,33,45,28,33,23,12,99,100];
const indice = (arr, index)=> arr[valor]


/*3) Escribir una función que, dado un número de mes, devuelva la cantidad
de días de ese mes —suponiendo que no es un año bisiesto—.
https://codesandbox.io/s/dias-del-mes-jb0f2?file=/src/index.js
*/
const diasMes = (mes) =>{
    const maxDias = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    return maxDias[mes - 1]
}

console.log(diasMes(4))

/*
4) Escribir una función de JavaScript que invierta un número. Por ejemplo,
si x = 32443, la salida debería ser 34423.
https://codesandbox.io/s/inverter-jfwm7?file=/src/index.js  */ 
const invertirNumero = (num) =>{
    let cadena = ''
    num = num.toString()
    for(let i= num.length - 1; i>=0; i--){
        cadena += num[i]
    }
    let numInvertido = parseInt(cadena)
    return numInvertido
}

console.log(invertirNumero(951951))


/*
5) Escribir una función que reciba una array y solo imprima los valores que
se repiten. Por ejemplo, dada la siguiente array e índice, la función
imprimirá '6,23,33,100'. let array =
[3,6,67,6,23,11,100,8,93,0,17,24,7,1,33,45,28,33,23,12,99,100];
https://codesandbox.io/s/impresora-repitientes-qtz0e?file=/src/index.js*/

let repe = [3,6,67,6,23,11,100,8,93,0,17,24,7,1,33,45,28,33,23,12,99,100];

const repetidos = (arr) =>{
    let numRepetidos = []
    for(let i=0; i< arr.length; i++){
        for(let j=i+1; j<arr.length; j++){
            if(arr[i] === arr[j]){
                
                numRepetidos.push(arr[i])
            }  
        }
    }
    return numRepetidos
}
console.log(repetidos(repe))

