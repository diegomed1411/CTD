/*totalAPagar()
Declará una función llamada totalAPagar() que reciba como parámetros: vehiculo y
litrosConsumidos.
A continuación, definí y realizá los cálculos para obtener el total a pagar, teniendo en
cuenta las siguientes consideraciones:
● Si el vehículo es “coche”, el precio por litro es de $86.
● Si es “moto”, ha de ser $70.
● Si es “autobús”, ha de ser $55.
● Si los litros consumidos están entre 0 y 25, se ha de añadir $50 al total a pagar.
● Si los litros consumidos son mayor a 25, se ha de añadir $25 al total a pagar.*/

const totalAPagar= (vehiculo, litrosConsumidos) =>{
    let base
    let variable = 0
    let total
    if(vehiculo == "coche"){
        base = 86
    } else if (vehiculo == "moto") {
        base = 70
    } else if (vehiculo == "autobus") {
        base = 55
    } else {
        base = "vehiculo mal asignado, no se puede definir precio de combustible"
    }
    variable = litrosConsumidos<=25 ? 50 : 25
    total = base == "number" ? base*litrosConsumidos + variable : base
    return total
}

console.log(totalAPagar("coche", 20))


//otra forma vista en clase

const totalAPagar1 = (vehiculo, litrosConsumidos) => {
    let precioPorLitro 
   
     switch (vehiculo) {
       case "coche":
         precioPorLitro = 86;
         break;
       case "moto":
         precioPorLitro = 70;
         break;
       case "autobus":
         precioPorLitro = 55;
         break;
       default:
        precioPorLitro = 0
     }
   
   let total = precioPorLitro * litrosConsumidos
   
   total = litrosConsumidos > 25 ? total + 25 : total + 50
   return total
   
     }
   
     console.log(totalAPagar1("moto", 32))


/*Local de sándwiches
Necesitamos armar el sistema para un local de venta de sándwiches. Los clientes
eligen el sándwich base que tiene un precio y, por cada selección siguiente, se le suma
el valor de su selección al precio. Por ejemplo, partiendo de un sándwich base
vegetariano con un precio x, después se selecciona pan negro con un precio y, por lo
que el total a pagar sería x+y, y así sucesivamente con el resto de los ingredientes.
Como es un local que ya tenía un sistema previo, ellos ya tienen toda la interfaz
donde el usuario elige cada ingrediente, lo que nos facilita el trabajo, ya que nosotros
recibiremos los datos de la siguiente manera.
Nos llega un string indicando el tipo de sándwich base. Estos tienen un valor base
diferente por cada selección:
● Pollo = $150 (“pollo”)
● Carne = $200 (“carne”)
● Vegetariano (verduras asadas) = $100 (“veggie”)
Luego, el sistema pregunta al cliente qué tipo de pan quiere. Tienen para elegir entre
otras tres opciones, por lo que recibiremos también otro string con el tipo de pan
deseado:
● Blanco c/orégano y parmesano = $50 (“blanco”)
● Negro c/avena = $60 (“negro”)
● Sin gluten = $75 (“s/gluten”)
Para finalizar, el sistema avanza preguntando al cliente si quiere los siguientes
adicionales:
● Queso = $20
● Tomate = $15
● Lechuga = $10
● Cebolla = $15
● Mayonesa = $5
● Mostaza = $5
Cada uno de estos adicionales están representados por booleanos —es decir, true o
false—, dependiendo de si aceptan o no cada uno de los adicionales —nos llegan un
total de seis valores booleanos, uno por cada adicional—.
Nuestro trabajo es crear una función que reciba estos ocho parámetros —un string
para el sándwich base, uno para el pan y los seis booleanos de los adicionales—. La
función deberá consultar primero qué tipo de sándwich base se seleccionó, luego el
tipo de pan, y por último deberá verificar qué adicionales se seleccionaron.
Finalmente, deberá retornar el valor numérico del total a pagar del cliente.*/

const sandwich = (base, pan, queso, tomate, lechuga, cebolla, mayonesa, mostaza) => {
    let precioTotal = 0
  
    switch (base) {
      case "pollo":
        precioTotal += 150;
        break;
      case "carne":
        precioTotal += 200;
        break;
      case "veggie":
        precioTotal += 100;
        break;
      default:
        precioTotal += 0;
    }
  
    switch (pan) {
      case "blanco":
        precioTotal += 50;
        break;
      case "negro":
        precioTotal += 60;
        break;
      case "s/gluten":
        precioTotal += 75;
        break;
      default:
        precioTotal += 0;
    }
    queso ? precioTotal += 20 : precioTotal
    tomate ? precioTotal += 15 : precioTotal
    lechuga ? precioTotal += 10 : precioTotal
    cebolla ? precioTotal += 15 : precioTotal
    mayonesa ? precioTotal += 5 : precioTotal
    mostaza ? precioTotal += 5 : precioTotal
    return precioTotal  
    
  };

  
  console.log(`El precio del sandwich es: ${sandwich("carne", "negro", true, true, true, true, true, true)}`);