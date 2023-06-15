/*Mesa de trabajo
Vamos a practicar el uso de matrices y, de paso, los ciclos FOR.
1) Seguir las instrucciones en este sandbox, para escribir y sumar los valores dentro
de una matriz.
https://codesandbox.io/s/mesa-17-ejercicio-1-yh91v?file=/src/index.js */

let matrizDeCinco = [
    [5, 6, 9, 3, 4],
    [8, 8, 1, 6, 9],
    [4, 1, 9, 8, 6],
    [2, 2, 1, 5, 4],
    [7, 4, 9, 3, 4]
  ];

let sumarMatriz = (matriz) =>{
    let acc = 0
    for(let i = 0; i< matriz.length; i++){
        for(let j=0; j< matriz.length; j++){
            acc += matriz[i][j]
        }
    }
    return acc
}

console.log(sumarMatriz(matrizDeCinco))

/*
2) Crear una función que genere una matriz de 10x10. Cada fila debe tener solo 10
números. La matriz debe verse así:
1 2 3 4 5 6 7 8 9 10
11 12 13 14 15 16 17 18 19 20
21 22 23 24 25 26 27 28 29 30
31 32 33 34 35 36 37 38 39 40
41 42 43 44 45 46 47 48 49 50
51 52 53 54 55 56 57 58 59 60
61 62 63 64 65 66 67 68 69 70
71 72 73 74 75 76 77 78 79 80
81 82 83 84 85 86 87 88 89 90
91 92 93 94 95 96 97 98 99 100

https://codesandbox.io/s/mesa-17-ejercicio-2-8glzg?file=/src/index.js
*/
let generarMatrizDiez = () =>{
    let contador = 0
    let matrizCol = []
    let fila = []
    for(let i = 0; i< 10; i++){        
            for(let j=0; j< 10; j++){               
                contador++
                fila.push(contador)                
        }
        matrizCol.push(fila)
        fila = []
    }
    return matrizCol
}

console.table(generarMatrizDiez())

/*
3) Por último, vamos a generar dos funciones:
a) Una va a sumar los valores en la diagonal marcada en rojo.
b) La otra va a marcar los valores de la diagonal marcada en verde.
Ambas funciones deben devolver un resultado único.

Rojo: 505
Verde 505
Trabajar en el mismo sandbox del ejercicio 2.*/


let matrizDiezXDiez = generarMatrizDiez()
let sumarDiagonalUnoCien = (matriz) =>{
    let acc = 0
    for(let i=0; i<matriz.length; i++){
        acc += matriz[i][i]
    }
    return acc
}

console.log(sumarDiagonalUnoCien(matrizDiezXDiez))

let sumarDiagonalNoventaYUnoDiez = (matriz) =>{
    let acc=0
    for(let i=0; i<matriz.length; i++){
        acc += matriz[i][matriz.length-1-i]
    }
    return acc
}

console.log(sumarDiagonalNoventaYUnoDiez(matrizDiezXDiez))