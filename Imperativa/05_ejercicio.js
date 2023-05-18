// 1. Crear una función que convierta pulgadas en centímetros. Recibe por parámetro pulgadas y retorna su equivalente en centímetros.
let dePulgadasACentimetros =function(x){
    return x*2.54
}
console.log(dePulgadasACentimetros(50))

// 2. Crear una función que recibe un string y lo convierte en una URL. Ej: “pepito” es devuelto como “http://www.pepito.com”
let convertirAUrl = (x) =>{
return `https://www.${x}.com`
}
console.log(convertirAUrl("diego"))

//3. Crear una función que recibe un string y devuelve la misma frase pero con admiración.
let admiracion = (x) =>{
    return `¡${x}!`
    }
    console.log(admiracion("diego"))

//4. Crear una función que calcule la edad de los perros, considerando que 1 año para nosotros son 7 de ellos.
let edadPerro = (x)=>{
    return x*7
}
console.log(edadPerro(30))

//5. Crear una función que calcule el valor de tu hora de trabajo, introduciendo tu sueldo mensual como parámetro. PD: considerá que tu mes de trabajo tiene 40 horas.
let valorHora = (sueldo)=>{
    return sueldo / 40
}
console.log(valorHora(20000))

/*6. Crear la función calculadorIMC() que reciba la altura en metros y el peso en
kilogramos y calcule el IMC de una persona. Luego, ejecutar la función
probando diferentes valores.
Seleccionar alguna de estas funciones —o de manera opcional, todas— y escribirla
como función expresada y función flecha.
Si llegamos hasta este punto estamos más que satisfechos. Ahora te dejamos unos
ejercicios con una dificultad extra, tendrás que buscar algunos conceptos para poder
resolverlos. Es una práctica que los programadores realizamos todos los días. Como
siempre te decimos, una parte importante del aprendizaje en programación es
ignorar la complejidad, e ir estrictamente a lo que necesitamos. Sabemos que no es
una práctica fácil de realizar, pero con el tiempo va a ir haciéndose más sencilla y
divertida.*/
let calculadorIMC =(altura, peso) =>{
    return peso / (altura*altura)
}
console.log(calculadorIMC(1.90, 104))

/*7. Crear una función que recibe un string en minúscula, lo convierta a mayúsculas
y lo retorne.
Investigá qué hace el método de strings .toUpperCase()*/
let conversorAMayusculas = (x)=>{
    return x.toUpperCase()
}
console.log(conversorAMayusculas("hola"))

/*8. Crear una función que recibe un parámetro y devuelve qué tipo de dato es ese
parámetro.
Pista: te servirá revisar qué hace la palabra reservada typeof.*/
let tipoDato = (x) =>{
    return typeof x
}
console.log(tipoDato(5))

/*9. Crear una función que le pasamos el radio de un círculo y nos devuelve la
circunferencia.
Pista: Investigá si el objeto Math tiene entre sus propiedades el número Pi.*/

//nota: La longitud de una circunferencia es igual a pi por el diámetro.
let circunferencia = (radio) =>{
    return Math.PI * 2 * radio
}
console.log(circunferencia(5))