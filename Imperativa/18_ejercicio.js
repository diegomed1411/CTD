/*Dada una matriz, recorrer sus valores y sumar solo los números que estén por encima o sean iguales a 10, pero menores que 1000.*/
matrizDeNumeros = [
    [10, 3, 2, 1, 4, 7],
    [5, 5, 10, 100, 4],
    [5, 125, 10, 1020, 4],
    [5, 5, 5097, 100, 4]
  ];

let sumarValoresEntreDiezYMil = (matriz) =>{
    let acc = 0
    for (let i = 0; i < matriz.length; i++) {
        for (let j = 0; j < matriz[i].length; j++) {
            if(matriz[i][j]>=10 && matriz[i][j]<1000){
                acc += matriz[i][j]
            }
        }        
    }
    return acc
}

console.log(sumarValoresEntreDiezYMil(matrizDeNumeros))

/*Ejercicio
Se está realizando el desarrollo de una aplicación para control de gastos. Cada día, el usuario ingresa sus gastos cotidianos.
La idea es solo registrar el total de los gastos, al finalizar la jornada.
Para simplificar, vamos a considerar que todos los meses tienen cuatro semanas.
Los gastos estarán en una matriz de 4x7, cada fila representa una semana y cada columna un día. Es decir fila 0, semana 1, fila 1, semana 2, etc. Columna 0, dia 1, columna 1, 
dia 2, etcétera. */
const dias = [
    [ 1135, 2500, 900, 1600, 2800, 3650, 1100],
    [ 1750, 1890, 1900, 1300, 898, 1750, 2800],
    [ 1700, 1150, 1690, 1900, 1770, 4500, 2560],
    [ 800, 1250, 1430, 2100, 1980, 1270, 950]
]
/*
a)  Lo que nos solicitan es dar el total de gastos en una semana. Recordemos que cada fila representa una semana, es decir, si nos indican semana 2 
tenemos que sumar la fila 1 de la matriz. Recordar que las matrices comienzan siempre en posición 0.  */
const gastosXSemana = (arr) =>{
    let semana = 0
    let acumulador = 0
    let detalleSemanal = []
    for (let i = 0; i < arr.length; i++) {
        semana ++
        acumulador = 0
        for (let j = 0; j < arr[i].length; j++) {
            acumulador += arr[i][j]
        }
        detalleSemanal.push(acumulador)    
    }
    return detalleSemanal
}
console.log(gastosXSemana(dias))

/*b) La aplicación también tendrá una parte de estadísticas, para esto nos solicitan dar el total de un día en particular, 
por ejemplo del día 3, acá también tengamos en cuenta lo que ocurre con las filas, ya que las columnas también comienzan en 0. */
const gastosXDia = (arr, dia)=>{
    let acc = 0
    for (let i = 0; i < arr.length; i++) {
        acc += arr[i][dia -1]
    }
    return acc
}
console.log(gastosXDia(dias, 2))


/*c) Por último, es necesario tener el total de gastos realizados en el mes.*/
const gastosMes = (arr)=>{
    let acc=0
    for (let i = 0; i < arr.length; i++) {
        for (let j = 0; j < arr[i].length; j++) {
            acc += arr[i][j]
        }        
    }
    return acc
}
console.log(gastosMes(dias))

/*Pregunta para pensar, ¿es lo mismo recorrer por filas o por columnas para resolver este último punto?
Opcional
d) Obtener cuál fue la semana que más gastos se realizaron. Indicar el día que más gastos se realizaron.
Posibles matrices para comprobar los resultados. */
const maxSemana = (arr)=>{
    let gastosSemanales = gastosXSemana(arr)
    let max = gastosSemanales[0]
    for (let i = 1; i< gastosSemanales.length; i++) {
            if(gastosSemanales[i]> max){
                max = gastosSemanales[i]
            }
    }
    return max
}
console.log(maxSemana(dias))

const maxXDia = (arr)=>{
    let max = arr[0][0]
    let dia = 0
    let semana = 0
    for (let i = 0; i < arr.length; i++) {
        for (let j = 0; j < arr[i].length; j++) {
            if(max <arr[i][j]){
                dia = j+1
                semana = i
            }
        }        
    }
    return `El máximo de gasto se dió el día ${dia} en la semana ${semana}`
}
console.log(maxXDia(dias))