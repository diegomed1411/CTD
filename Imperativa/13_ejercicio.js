/*¡Preparando el cerebro!
Ahora que ya contamos con todo el conocimiento necesario, vamos a realizar una serie de ejercicios para entrenar un poco nuestro cerebro.
Loop de pares
Deberás crear una función llamada loopDePares que reciba como parámetro un número y haga un loop de 0 a 100 mostrando en la consola cada número del loop. 
En caso de que el número de la iteración sumado con el número pasado por parámetro sea par, mostrará en la consola: “El número X es par”. */
let loopDePares = (numero) => {
    for(let i=0; i<=100; i++){
        (numero + i)%2 === 0 ? console.log(`El numero ${numero + i} es par`) : console.log(i)
    }
}

//loopDePares(53)

/*Loop de impares con palabra
Deberás crear una función llamada loopDeImpares que reciba como parámetros un número y una palabra, y haga un loop de 0 a 100 mostrando en la consola cada número del loop. 
Luego, modificar el código para que, en caso de que ese número sumado con el número pasado por parámetro sea impar, muestre en la consola la palabra pasada por parámetro.
*/

let loopDeImpares = (numero, palabra) =>{
    for(let i = 0; i<=100; i++){
        (numero + i)%2 !== 0 ? console.log(palabra) : console.log(i)
    }
}

//loopDeImpares(63, 'cyberlunes')


/*Sumatoria
Deberás crear una función llamada sumatoria que reciba un número como parámetro y que devuelva la sumatoria de todos sus números anteriores, incluso ese mismo. Ejemplo:
sumatoria(3) debe retornar 6 porque hace (1+2+3)
sumatoria(8) debe retornar 36*/

let sumatoria = (num) =>{
    let acum = 0;
    for (let i = 0; i<= num; i++){
        acum += i
    }
    return acum
}

//console.log(sumatoria(5))

/* Nuevo arreglo
Deberás crear una función llamada nuevoArreglo que reciba un número como parámetro y que devuelva un nuevo arreglo con tantos elementos como el número que le hayas pasado. Ejemplo:
nuevoArreglo(5) debe retornar [1,2,3,4,5]
nuevoArreglo(10) debe retornar [1,2,3,4,5,6,7,8,9,10] */

let nuevoArreglo = (num) =>{
    let arreglo = []
    for(i=1; i<=num; i++){
        arreglo.push(i)
    }
    return arreglo
}

console.log(nuevoArreglo(8))

/*Similar String.split()
Deberás crear una función llamada split que reciba un string y simule el comportamiento de la función original. Si no estás seguro de cómo funciona, Google puede ayudarte. 
Importante: no podés usar el String.split(). Ejemplo:
split(“hola”) debe retornar [“h”,”o”,”l”,”a”]
split(“chau”) debe retornar [“c”,”h”,”a”,”u”] */

let split = (palabra) =>{
    let arreglo = []
    for(i=0; i<palabra.length; i++){
        arreglo.push(palabra.slice(i, i+1))
    }
    return arreglo
}

console.log(split('Diego'))


/*Manejando dos arreglos
Deberás crear una función llamada arrayHandler que reciba dos arreglos de igual largo como parámetros y muestre en la consola “Soy {elemento de array 1} y yo soy {elemento de array 2}”. Ejemplo:
arrayHandler([1,2,3,4], [“h”,”o”,”l”,”a”]) debe mostrar: 
Soy 1 y yo soy h
Soy 2 y yo soy o
Soy 3 y yo soy l
Soy 4 y yo soy a */

let arrayHandler = (arr1, arr2)=>{
    for(let i=0; i< arr1.length; i++){
        console.log(`soy ${arr1[i]} y yo soy ${arr2[i]}`)
    }
}

arrayHandler ([1, 2, 3, 4, 8, 5, 20], ['uno', 'dos', 'tres', 'cuatro', 'ocho', 'cinco', 'veinte'])

/*Palíndromo
Deberás crear una función llamada palindromo que indique si una palabra es palíndroma o no. Debe retornar “true” en caso de que lo sea, y “false” en caso de que no. Ejemplo:
palindromo(“anilina”) debe retornar true
palindromo(“Ana”) debe retornar true
palindromo(“Enrique”) debe retornar false
*/

let palindromo = (palabra) =>{
    let inversa = []
    for(let i = palabra.length -1; i>=0 ; i--){
        inversa.push(palabra.charAt(i))
    }
    return inversa.join('').toUpperCase() === palabra.toUpperCase() ? true : false
}

console.log(palindromo('Ana'))