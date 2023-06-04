/*Ejercicio para las mesas de trabajo

Descripción del problema
Te contactan desde un teatro donde hace falta determinar el ganador de un concurso de
stand up que consta de tres presentaciones por participante. Te piden que armes el
programa que determine al ganador y, a continuación, te explican el funcionamiento del
concurso para que lo tengas en cuenta a la hora de realizar el programa.
El público, máximo 100 personas, votó quién considera que estuvo mejor al terminar
cada etapa. Por ejemplo, sube Alicia, se presenta y baja; sube Bob, se presenta y baja.
Terminadas ambas presentaciones, el público vota indicando quién cree que ganó esa
tanda. Luego, continúa la siguiente tanda, igual que la primera. Y finalmente, una tercera.
¿Cómo representarías en una tabla tipo planilla de cálculos este problema?*/

const alicia = [10, 80, 75];
const bob = [90, 20, 25];

//console.log("El ganador es: " + encontrarGanador(a, b) + "participante");

const concurso ={
    encontrarGanador: function (a, b) {
        let puntosPrimerParticipante = 0;
        let puntosSegundoParticipante = 0;
        //let parametros = getParameterNames(encontrarGanador(a, b))
        for (let i = 0; i < a.length; i++) {
          if (a[i] > b[i]) {
            puntosPrimerParticipante++;
          } else if (a[i] < b[i]) {
            puntosSegundoParticipante++;
          } 
        }
        if (puntosPrimerParticipante > puntosSegundoParticipante) {
          return "Primer";
        } else if (puntosPrimerParticipante < puntosSegundoParticipante) {
          return "Segundo";
        } else return "Empate";
      },
    etapas: function (a, b) {
        let resultadoEtapas = [];
        for (let i = 0; i < a.length; i++) {
        if (a[i] > b[i]) {
          resultadoEtapas.push({[i+1] : 'Ganador Primer'})
        } else if (a[i] < b[i]) {
            resultadoEtapas.push({[i+1] : 'Ganador Segundo'})
        } } return resultadoEtapas
    }
}

console.log(concurso.etapas(alicia, bob))

/*digitalHouse()
Creá la función digitalHouse() que recibirá 2 números como parámetros. La función
deberá imprimir por pantalla los números del 1 al 100, pero teniendo en cuenta los
siguientes criterios:
● Si el número a imprimir es múltiplo del primer parámetro que se ingresó, deberá
mostrar el string “Digital” en lugar del número.
● Si el número a imprimir es múltiplo del segundo parámetro ingresado, deberá
mostrar el string “House” en su lugar del número.
● Si el número a imprimir es múltiplo de ambos parámetros, deberá mostrar el string
“Digital House” en lugar del número.*/

let digitalHouse = (num1, num2) =>{
  let resultado=[];
  for (let i = 1; i <= 100; i++) {
    if(i%num1 === 0 && i%num2=== 0){
      resultado.push("Digital House")
    } else if(i%num1 === 0){
      resultado.push("Digital")
    } else if (i%num2 === 0){
      resultado.push("House")
    } else{
      resultado.push(i)
    }
  }
  return resultado
}

console.log('----------------------------')
console.log(digitalHouse(2, 3))

/*sumArray()... Reloaded
Vamos a retomar el ejercicio sumArray() que hicimos en la clase de arrays, pero esta vez
lo modificaremos para que pueda recibir un array de números de cualquier cantidad de
elementos.
Si no recordás el enunciado original: deberás crear una función sumaArray que acepte
un arreglo de números y devuelva la suma de todos ellos.*/

let sumArray = (arreglo) =>{
  let acumulador = 0
  arreglo.map(x => acumulador += x)
  return acumulador
}

console.log(sumArray([1, 2, 3]))

/*Ya que estamos retocando funciones, hagamos lo propio con la función del ejercicio
simulación join(). Deberás modificar la función join() de manera que pueda recibir un
array de strings de cualquier cantidad de elementos.*/

//solucion utilizando join

let join1 = (arreglo) =>{
  return arreglo.join('')
}

console.log(join1(['H','o','l','a']))

// solucion sin utilizar join

let join2 = (arreglo) =>{
   return sumArray(arreglo).slice(1,arreglo.length+1)
}
console.log(join2(['H','o','l','a']))

