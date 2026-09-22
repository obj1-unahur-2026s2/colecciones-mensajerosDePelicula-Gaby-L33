import example.*

//Puente de Brooklyn: deja pasar a todo lo que pese hasta una tonelada.
object puenteDeBroklyn{
    method dejarPasar(mensajero) = mensajero.peso() < 1000 and mensajero.paquetePagado()
}

//La Matrix: deja entrar a quien pueda hacer una llamada.
object laMatrix{
    method dejarPasar(mensajero) = mensajero.puedeLlamar() and mensajero.paquetePagado()
}