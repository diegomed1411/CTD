/*Ejercicio 1: 
Desarrollar una función para cada uno de las siguientes apartados: 
Que reciba por parámetro un número entero y retorne su triple.
Que reciba por parámetro dos números enteros y retorne la multiplicación de ambos.  
	Ejecutar ambas funciones e imprimir por consola su resultado. */

console.log("--- 1.1 ---");
let triple = (numero) => numero * 3;
let resultadoTriple = triple(5);
console.log(resultadoTriple);

console.log("--- 1.2 ---");
let multiplicacion = (numero1, numero2) => numero1 * numero2;
let resultadoMultiplicacion = multiplicacion(3, 2);
console.log(resultadoMultiplicacion);

/*Ejercicio 2:
 Deberás escribir un objeto literal llamado turista que contenga las siguientes propiedades que deberás completar con tus datos:
nombre
apellido 
temperatura
2. Teniendo en cuenta los datos del punto número 1:
Crear una función que reciba por parámetro el objeto y retorne un string en base a las siguientes condiciones : 
-	si temperatura es menor a 37:  “puede pasar”,
-	si temperatura es mayor o igual a 37: “no puede pasar“
*Deberás realizar la invocación de la función de forma que se pueda ver el resultado  */

console.log("--- 2.1 ---");
let turista = {
  nombre: "Diego",
  apellido: "Medina",
  temperatura: 36,
};
console.log(turista);

console.log("--- 2.2 ---");
let controlTemperatura = (persona) => {
  return persona.temperatura < 37 ? "puede pasar" : "no puede pasar";
};
let resultadoControlTemperatura = controlTemperatura(turista)
console.log(resultadoControlTemperatura)

/*
Ejercicio 3:
Dado el siguiente array de objetos: */

 let paises =  [{
      cantidadDeVisitas: 3,
      clima: 'soleado',
      habitantes: '212 millones'
    },
    {  
       cantidadDeVisitas: 4,
       clima: 'frío',
       habitantes: '144 millones'
    },
    {
      cantidadDeVisitas: 1,
      clima: 'nublado',
      habitantes: '329 millones'
    }]

/*Crea una función que reciba el array destinos como parámetro, e incremente en 1 la cantidad de visitas de cada uno de los destinos, llámala siguienteViaje. 
* Debes utilizar alguna estructura de repetición vista en clase.
Mostrar por consola el array de destinos antes y después de la ejecución de la función.*/

console.log("--- 3.1 --- (antes de la ejecucion)");
console.log(paises)
let siguienteViaje = (arreglo) => {
    for (let i=0; i<arreglo.length; i++){
        arreglo[i].cantidadDeVisitas++
    }
}
siguienteViaje(paises);
console.log("--- 3.1 --- (despues de la ejecucion)");
console.log(paises)