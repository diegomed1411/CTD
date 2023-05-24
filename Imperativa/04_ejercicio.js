// 1 temperatura (número)
let temperatura = 23
 
//¿esta lloviendo? (booleano)
let llueve = false

//piso del ascensor (numero)
let pisoAscensor = 6

//hora actual (numero)
let hora = 22

//apertura fiambreria (numero)
let apertura = 8

//cierre fiambreria (numero)
let cierre = 18

//----------------- vamos al cine ------------------------------------//
let dia  //tiene que ser menor o igual que 31/30/28

let finDeSemana // booleano

let pelicula //string

let duracionMin //numero

// AVATAR //

dia = 21
finDeSemana = true
pelicula = "Avatar 2"
duracionMin = 192
let apta = true

function aptaParaLaSemana(){
    let duracionMaximaParaLaSemana = 120
    apta = duracionMin <= duracionMaximaParaLaSemana //192 < 120 = false
    return apta
}

console.log(aptaParaLaSemana())

function vamosAlCine(){
    let esAptaParaFinde = !aptaParaLaSemana()
    let vamos = finDeSemana == true && esAptaParaFinde == true
    return vamos ? `vamos al cine, ya que es el día ${dia} y cae fin de semana` : "no vamos al cine"
    
}

console.log(vamosAlCine())

console.log("50" === 50)