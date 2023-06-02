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
        } }
    }
}