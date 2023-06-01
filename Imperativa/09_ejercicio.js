/*1) Escribí un programa que le pida al usuario ingresar una frase y
la imprima en la consola.
Recordá que para pedirle al usuario que escriba una frase
debés utilizar el método prompt() y para escribir en la consola
debés utilizar el método console.log().*/
let frase = texto =>{
    return texto
}
console.log(frase("rendimientos marginales decrecientes"))
/*2) Escribí un programa que le pregunte al usuario su nombre e
imprima "Hola " seguido del nombre y un signo de
exclamación.
Por ejemplo, si el usuario ingresa "Pedro" el programa debe
imprimir en la consola "Hola Pedro!".*/
let saludo = nombre =>{
    return `Hola ${nombre}!`
}
console.log(saludo("Diego"))

/*3) Escribí un programa que le pida al usuario ingresar un número,
luego le pida un segundo número, e imprima en la consola la
suma de los dos números que ingresó el usuario.*/
let suma = (a , b) =>{
    return a+b
}
console.log(suma(2,5))

/*4) Escribí un programa que le pida al usuario su año de
nacimiento e imprima su edad actual en la consola con la frase
"Tienes X años" (siendo X la cantidad de años).
Por ejemplo, asumiendo que el año actual es 2019 y el usuario
ingresa 1999, el programa debe imprimir en la consola: “Tienes
20 años”.*/
let anios = anionacimiento =>{
    let anioActual = new Date().getFullYear()
    return `Tienes ${anioActual-anionacimiento} años`
}

console.log(anios(1986))

/*5) Escribí un programa que piense un número de forma aleatoria
del 1 al 10 y le pida al usuario que lo trate de adivinar. Si el
número es correcto debe imprimir en la consola "Felicitaciones,
ese era!", de lo contrario, debe imprimir "Lo siento, intenta
nuevamente!"*/
let adivinar = numero =>{
    let aleatorio = Math.floor(Math.random()*10 + 1)
    return numero === aleatorio ? "Felicitaciones, ese era!" : "Lo siento, intenta nuevamente!"
}

console.log(adivinar(4))

/*6) Escribí un programa que imprima los números pares del 0 al
100.*/
let pares = () =>{
    for(let i=0; i<=100;i+=2){
        console.log(i)
    }
}
pares()

/*7) Escribí un programa que itere sobre el arreglo nombres e
imprima cada uno en la consola: const nombres = ["Pedro",
"Pablo", "Maria", "Juan", "Diana"];*/

const nombres = ["Pedro","Pablo", "Maria", "Juan", "Diana"]
nombres.map(function(x){console.log(x)})

/*8) Construí un pseudocódigo que permita ingresar un número, si
el número es mayor de 500, se debe calcular y mostrar en
pantalla el 18% de este.*/

let pseudo = numero =>{
    return numero>500 ? numero*0.18 : 'es menor a 500'
}
console.log(pseudo(1220))

/*9) Escribí una función llamada elemento que recibe un arreglo
como parámetro. La función debe devolver el valor que se
encuentra en la tercera posición. Si el arreglo no tiene al menos
3 elementos deberá retornar -1.*/
const nombres2 = ["Pedro","Pablo", "Maria", "Juan", "Diana"]
let elemento = arreglo =>{
    return arreglo.length > 3? arreglo[2] : -1
}
console.log(elemento(nombres2))

/*10) Se ingresa por teclado un número natural de hasta 2 cifras, si
tiene una cifra que muestre lo mínimo que le falta para ser un
número de 2 cifras; de lo contrario, que muestre lo mínimo que
le falta para ser un número de 3 cifras. Considerar que el
usuario ingresa números de hasta dos cifras.*/



/*11) Hacer un algoritmo que muestre el promedio de varias
notas o de N notas ingresadas, se debe definir el valor de N
para conocer la cantidad de notas a ingresar.*/

/*12) Hacer un programa que calcule la suma de los N primeros
números naturales, dónde N es el número límite ingresado por
teclado.*/