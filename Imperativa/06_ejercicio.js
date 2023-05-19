const sumar =(a,b) => a+b
const restar = (a, b) => a-b
const multiplicar = (a,b) =>a*b
const dividir = (a,b) =>a/b

console.log("-------------- Declaracion de Numeros / Calculadora -NIVEL 1 --------------")
let numero1 = 500
let numero2 = 200
let numero3 = 300
let porcentaje = 15
console.log(`Los numeros son: ${numero1}, ${numero2}, ${numero3} y porcentaje: ${porcentaje}%`)

console.log("-------------- Testeo de Operaciones / Calculadora -NIVEL 2 --------------")

console.log(`resultado de sumar = ${sumar(numero1, numero2)}`)
console.log(`resultado de restar = ${restar(numero1, numero2)}`)
console.log(`resultado de multiplicar = ${multiplicar(numero1, numero2)}`)
console.log(`resultado de dividir = ${dividir(numero1, numero2)}`)
console.log(`resultado de dividir entre 0 = ${dividir(numero1, 0)}`)

console.log("-------------- Testeo de Operaciones / Calculadora - NIVEL 3 --------------")
/*1. Crear una función que se llame cuadradoDeUnNumero, la cual recibe un
número como parámetro y deberá retornar ese número elevado al cuadrado.
Importante: cuadradoDeUnNumero() deberá utilizar la función multiplicar() para
calcular el cuadrado del parámetro ingresado a cuadradoDeUnNumero()*/
const cuadradoDeUnNumero = (a) => multiplicar (a , a)
console.log(`resultado de cuadrado de ${numero1} = ${cuadradoDeUnNumero(numero1)}`)

/*2. Crear la función promedioDeTresNumeros, la misma deberá calcular el promedio
de 3 números, que serán ingresados por parámetro.
Importante: promedioDeTresNumeros() deberá utilizar algunas funciones
previamente creadas de nuestra calculadora.*/
const promedioDeTresNumeros = (a, b, c) => dividir(sumar(a,b)+c,3)
console.log(`resultado de promedio de ${numero1}, ${numero2}, ${numero3} = ${promedioDeTresNumeros(numero1, numero2, numero3)}`)

/*3. Crear la función calcularPorcentaje. Esta recibirá dos parámetros: el número
total y el porcentaje que se le quiere calcular. Deberá retornar el x% del total.
Ejemplo: calcularPorcentaje(300, 15) debe retornar 45, ya que es el 15% de 300.
Importante: calcularPorcentaje() deberá utilizar algunas funciones previamente
creadas de nuestra calculadora.*/
const calcularPorcentaje = (a, b) => multiplicar(a, dividir(b,100))
console.log(`resultado de ${porcentaje}% sobre ${numero1} = ${calcularPorcentaje(numero1, porcentaje)}`)