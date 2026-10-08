import example.*
/*
Ahora aparece una empresa de mensajería. Esta tiene un conjunto de mensajeros, 
los cuales podrían ser Roberto, Chuck y Neo.
*/
object empresaDeMensajeria{
    const mensajerosContratados = #{}

    method mostrarMensajerosContratados() = mensajerosContratados

    // Contratar a un mensajero
    method contratarMensajero(mensajero){
        mensajerosContratados.add(mensajero)
    }

    //Despedir a un mensajero
    method despedirMensajero(mensajero){
        mensajerosContratados.remove(mensajero)
    }

    //Despedir a todos los mensajeros
    method despedirTodosLosMensajeros(){
        mensajerosContratados.clear()
    }

    //Analizar si la mensajeria es grande (si tiene mas de dos mensajeros)
    method mensajeriaEsGrande() = mensajerosContratados.size() > 2

    /*
    Consultar si el paquete puede ser entregado por el primer empleado de la empresa 
    de mensajería.
    */
    method elPrimeroPuedeEntregarElPaquete(destino) = mensajerosContratados.asList().first().llevarPaquete(destino)

    //Saber el peso del último mensajero de la empresa.
    method pesoDelUltimoMensajero() = mensajerosContratados.asList().last().peso()

    /*
    Averiguar si un paquete puede ser entregado por la empresa de mensajería, 
    es decir, si al menos uno de sus mensajeros puede entregar el paquete.
    */
    method empresaPuedeEntregarPaquete(paquete, destino) = mensajerosContratados.any({mensajero => mensajero.llevarPaquete(paquete, destino)})

    //Obtener todos los mensajeros que pueden llevar un paquete dado.
    method mensajerosQuePuedenLlevarPaquete(paquete, destino) = mensajerosContratados.filter({mensajero => mensajero.llevarPaquete(paquete, destino)})
}

/*
Paquetito: es gratis, o sea, simpre está pago. Ademas, cualquier mensajero
 lo puede llevar.
*/
object paquetito{
    method paquetePagado() = true
}

/*
Paqueton viajero: tiene múltiples destinos. Su precio es 100$ por cada destino. 
Se puede ir pagando parcialmente y se debe pagar totalmente para poder ser enviado. 
Además, el mensajero debe poder pasar por todos los destinos.
*/
object paquetonViajero{
    var pagadoHastaAhora = 0
    const destinos = []

    method agregarDestinos(lugares) {destinos.add(lugares)}

    method destinosActuales() = destinos

    method pagarPaquete(pago){pagadoHastaAhora = 100.min(pagadoHastaAhora + pago)}

    method paquetePagado() = pagadoHastaAhora.equals(100)
}

// Se sabe que el paquete original tiene un precio determinado en $50.
object paqueteOriginal{
    var pagado = false

    method pagarPaquete(){pagado = true}

    method paquetePagado() = pagado
}