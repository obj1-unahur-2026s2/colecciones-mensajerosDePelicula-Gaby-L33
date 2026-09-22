/*
Roberto: Roberto viaja en bicicleta o camión. Si viaja en bicicleta, 
el peso que cuenta es el suyo propio más 5, que es lo que pesa la bici. 
Si viaja en camión, el peso es el propio más el del camión, a razón de 
media tonelada por cada acoplado. Roberto no tiene un mango, gracias 
que tiene cubiertas, y no puede llamar a nadie.
*/
object roberto{
  var vehiculo = "bicicleta"
  var pesoDelVehiculo = 5
  var cantidadDeAcoplados = 1
  var estadoActualPaquete = false

  method paquetePagado() = estadoActualPaquete

  method puedeLlamar() = false

  method peso() = 90 + pesoDelVehiculo

  method cambiarAUnabicicleta(){
      vehiculo = "bicicleta"
      pesoDelVehiculo = 5
  }

  method cambiarAUnCamion(){
    vehiculo = "camion"
    pesoDelVehiculo = 500 * cantidadDeAcoplados
  }

  method cambiarCantidadDeAcoplados(nuevaCantidad){
      cantidadDeAcoplados = 1.max(nuevaCantidad)
  }

  method pagarPaquete(){
    estadoActualPaquete = true
  }
}

/*
Chuck Norris: Chuck Norris pesa 80 kg y puede llamar a cualquier 
persona del universo con sólo llevarse el pulgar al oído y el meñique a la boca.
*/
object chuckNorris{
  var estadoActualPaquete = false

  method paquetePagado() = estadoActualPaquete

  method peso() = 80
  method puedeLlamar() = true 

  method pagarPaquete(){
    estadoActualPaquete = true
  }
}
/*
Neo vuela, así que no pesa nada. Y anda con celular. 
El tema es que a veces no tiene crédito para hacer llamadas.
*/
object neo{
  var tieneCredito = true
  var estadoActualPaquete = false

  method paquetePagado() = estadoActualPaquete

  method peso() = 0

  method puedeLlamar() = tieneCredito

  method agregarCredito(){
    tieneCredito = true
  }
  
  method vaciarCredito(){
    tieneCredito = false
  }

  method pagarPaquete(){
    estadoActualPaquete = true
  }
}