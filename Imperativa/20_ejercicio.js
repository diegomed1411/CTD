/*Ejercicio 1
En un concurso de fotografía, donde los usuarios publican una fotografía y obtienen
likes, se registra la cantidad de likes obtenidos por cada usuario en un array. Ordenar
los valores para poder indicar cuál fue la mayor cantidad de likes obtenidos, cuánto
obtuvo el segundo, cuánto el tercero y cuánto el que menos likes obtuvo —suponer
que participaron 15 usuarios y suponer para cada uno, una cantidad de likes—.*/

let likes = [3, 15, 12, 1, 20, 34, 8, 12, 76, 20, 13, 67, 87, 84, 28];
const bubbleSort = (arreglo) => {
  let cajaAuxiliar;

  for (let i = 0; i < arreglo.length; i++) {
    for (let j = 0; j < arreglo.length - 1; j++) {
      if (arreglo[j] > arreglo[j + 1]) {
        cajaAuxiliar = arreglo[j];
        arreglo[j] = arreglo[j + 1];
        arreglo[j + 1] = cajaAuxiliar;
      }
    }
  }
};

bubbleSort(likes);
console.log(likes);

console.log(`El mayor puntaje en likes es ${likes[likes.length - 1]}`);
console.log(`El segundo puntaje en likes es ${likes[likes.length - 2]}`);
console.log(`El tercero puntaje en likes es ${likes[likes.length - 3]}`);
console.log(`El menor puntaje en likes es ${likes[0]}`);