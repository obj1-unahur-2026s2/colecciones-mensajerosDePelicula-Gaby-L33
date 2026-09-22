import example.*

object empresaDeMensajeria{
    const mensajerosContratados = #{}

    method mostrarMensajerosContratados() = mensajerosContratados

    method contratarMensajero(mensajero){
        mensajerosContratados.add(mensajero)
    }

    method despedirMensajero(mensajero){
        mensajerosContratados.remove(mensajero)
    }

    method despedirTodosLosMensajeros(){
        mensajerosContratados.clear()
    }

    method mensajeriaEsGrande() = mensajerosContratados.size() > 2

    method elPrimeroPuedeEntregarElPaquete() = mensajerosContratados.asList().first().paquetePagado()

    method pesoDelUltimoMensajero() = mensajerosContratados.asList().last().peso()
}