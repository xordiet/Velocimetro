//: Velocímetro digital

import UIKit

//enumeración
enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

//clase
class Auto {

    var velocidad : Velocidades?
    
    init (velocidad: Velocidades){
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad( previa:Velocidades ) -> ( actual : Int, velocidadEnCadena: String){
        var actual:Velocidades?
        var velocidadEnCadena:String?
        switch previa.rawValue {
        case 0:
            actual = Velocidades.Apagado
            velocidadEnCadena = "Apagado"
            velocidad = Velocidades.VelocidadBaja
        case 20:
            actual = Velocidades.VelocidadBaja
            velocidadEnCadena = "Velocidad Baja"
            velocidad = Velocidades.VelocidadMedia
        case 50:
            actual = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Media"
            velocidad = Velocidades.VelocidadAlta
        case 120:
            actual = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Alta"
            velocidad = Velocidades.VelocidadMedia
        default:
            actual = Velocidades.Apagado
            velocidadEnCadena = "Apagado"
        }
        return ( actual!.rawValue, velocidadEnCadena!)
    }
    
}

//Creo instancia de Auto y lo inicializo como apagado
var auto = Auto(velocidad : Velocidades.Apagado)

for conteo in 1...20{
    print (auto.cambioDeVelocidad(previa: auto.velocidad!))
}
