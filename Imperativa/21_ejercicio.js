/*1. Crear una función que imprima todos los dígitos decimales, del 0 al 9,
usando un ciclo For.
https://codesandbox.io/s/mesa-ejercicio-1-bvthk?file=/src/index.js */
const decimales = () =>{
    let arrayDecimales = []
    for (let i = 0; i < 100; i++) {
        arrayDecimales.push(i/10)        
    }
    return arrayDecimales
}

console.log(decimales())


/*2. Crear una función que imprima los números entre el 5 y el 20, saltando de
tres en tres. https://codesandbox.io/s/mesa-21-ejercicio-2-3n0np */
const saltarDeTres = () =>{
    let numerosDeTres = []
    for (let i=5; i <= 20; i += 3){
        numerosDeTres.push(i)
    }
    return numerosDeTres
}

console.log(saltarDeTres())

/*3. Crear una función que imprima la sumatoria de todos los números entre el
0 y el 100.
https://codesandbox.io/s/mesa-21-ejercicio-3-zw962?file=/src/index.js */
const sumatoria = () =>{
    let acc = 0
    for (let i = 1; i <=100 ;i++) {
        acc += i     
    }
    return acc
}

console.log(sumatoria())


/*4. Crear una función que reciba un string y luego imprimir la cantidad de
vocales que se encuentran en dicha frase.
https://codesandbox.io/s/mesa-21-ejercicio-4-x9frm?file=/src/index.js */


/*5. Realizar una función que, dada una lista, devuelva una nueva lista cuyo
contenido sea igual a la original pero invertida.
https://codesandbox.io/s/mesa-21-ejercicio-5-812tw?file=/src/index.js */


/*6. Realizar una función que escriba una pirámide del 1 al 30 de la siguiente
forma :
1
22
333
4444
55555
666666
.......
https://codesandbox.io/s/mesa-21-ejercicio-6-x10rx?file=/src/index.js*/