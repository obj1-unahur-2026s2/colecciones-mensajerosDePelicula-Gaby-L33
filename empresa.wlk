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
}

object paquetito{
    method pagado() = true
}

object paquetonViajero{
    var pagado = 0

    method pagarPaquete(pago){pagado = 100.min(pagado + pago)}

    method paquetePagado() = pagado == 100
}

object paqueteOriginal{
    method pagarPaquete(){pagado = 100.min(pagado + pago)}

    method paquetePagado() = pagado == 100
}