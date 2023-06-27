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

/*Ejercicio 2
El servicio meteorológico, para llevar el control diario de temperatura, utiliza un
objeto temperatura donde registra día —valor numérico del día—, mes —valor
numérico—, temperatura máxima y temperatura mínima, correspondiente a dicho
día. Las temperaturas —objeto temperatura— están cargados en un array.
a) Ordenar por temperatura mínima de menor a mayor.
b) Ordenar por temperatura máxima de mayor a menor.*/

let temperaturas = [
  { dia: 2, mes: 5, min: 9, max: 15 },
  { dia: 3, mes: 5, min: 10, max: 16 },
  { dia: 4, mes: 5, min: 7, max: 10 },
  { dia: 5, mes: 5, min: 15, max: 23 },
  { dia: 6, mes: 5, min: 11, max: 18 },
  { dia: 7, mes: 5, min: 14, max: 20 },
  { dia: 8, mes: 5, min: 13, max: 27 },
];


const bubbleSortMin = (arreglo) => {
  let cajaAuxiliar
  for (let i = 0; i < arreglo.length; i++) {
    for (let j = 0; j < arreglo.length - 1; j++) {
      if (arreglo[j].min > arreglo[j + 1].min) {
        cajaAuxiliar = arreglo[j]
        arreglo[j] = arreglo[j + 1]
        arreglo[j + 1] = cajaAuxiliar
      }
    }
  }
};

bubbleSortMin(temperaturas)
console.log(temperaturas)
