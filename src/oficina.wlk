import clientas.*
import remiseras.*

object oficina {
var remiseraUno
var remiseraDos

method asignarRemiseras(remisera1, remisera2) {
remiseraUno = remisera1
remiseraDos = remisera2
}
method choferPrimeraOpcion(){
                return remiseraUno
        }
        method choferSegundaOpcion(){
                return remiseraDos
        }

method cambiarPrimerRemiserarPor(remisera) {
remiseraUno = remisera
}

method cambiarSegundoRemiseraPor(remisera) {
remiseraDos = remisera
}

method intercambiarRemiseras() {
var remiseraCambiar = remiseraUno
remiseraUno = remiseraDos
remiseraDos = remiseraCambiar
}

method choferElegidoParaViaje(clienta, kms) {
var condicion = (remiseraDos.precioViaje(clienta, kms) < remiseraUno.precioViaje(clienta, kms))
var condicion1 = ((remiseraUno.precioViaje(clienta, kms) - remiseraDos.precioViaje(clienta, kms))>30)
return if (condicion and condicion1) {
      remiseraDos
        } else {
              remiseraUno
               }
}

}

