import destinos.*
import empresa.*

/*
Roberto: Roberto viaja en bicicleta o camión. Si viaja en bicicleta, 
el peso que cuenta es el suyo propio más 5, que es lo que pesa la bici. 
Si viaja en camión, el peso es el propio más el del camión, a razón de 
media tonelada por cada acoplado. Roberto no tiene un mango, gracias 
que tiene cubiertas, y no puede llamar a nadie.
*/
object roberto{
  var vehiculo = bicicleta

  method puedeLlamar() = false

  method peso() = 90 + vehiculo.peso()

  method cambiarAUnabicicleta(){
      vehiculo = bicicleta
  }

  method cambiarAUnCamion(){
    vehiculo = camion
  }

  method cambiarCantidadDeAcoplados(nuevaCantidad){
      camion.cambiarCantidadDeAcoplados(nuevaCantidad)
  }

  method llevarPaquete(tipoDePaquete, destino) = tipoDePaquete.paquetePagado() && destino.dejarPasar(self)      
}

object bicicleta{
  method peso() = 5
}

object camion {
  var cantidadDeAcoplados = 1 
  
  method peso() = 500 * cantidadDeAcoplados

  method cambiarCantidadDeAcoplados(nuevaCantidad){
    cantidadDeAcoplados = nuevaCantidad
  }
}

/*
Chuck Norris: Chuck Norris pesa 80 kg y puede llamar a cualquier 
persona del universo con sólo llevarse el pulgar al oído y el meñique a la boca.
*/
object chuckNorris{

  method peso() = 80
  method puedeLlamar() = true 


  method llevarPaquete(tipoDePaquete, destino) = tipoDePaquete.paquetePagado() && destino.dejarPasar(self)   
}
/*
Neo vuela, así que no pesa nada. Y anda con celular. 
El tema es que a veces no tiene crédito para hacer llamadas.
*/
object neo{
  var tieneCredito = true

  method peso() = 0

  method puedeLlamar() = tieneCredito

  method agregarCredito(){
    tieneCredito = true
  }
  
  method vaciarCredito(){
    tieneCredito = false
  }

  method llevarPaquete(tipoDePaquete, destino) = tipoDePaquete.paquetePagado() && destino.dejarPasar(self)   
}