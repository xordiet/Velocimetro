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

    var velocidad = Velocidades.Apagado
    
    init (){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        var velocidadEnCadena:String?
        let actual = velocidad.rawValue
        
        switch velocidad {
        case .Apagado:
            velocidadEnCadena = "Apagado"
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidadEnCadena = "Velocidad Baja"
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidadEnCadena = "Velocidad Media"
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidadEnCadena = "Velocidad Alta"
            velocidad = .VelocidadMedia
        }
        return (actual, velocidadEnCadena!)

    }
    
}

//Creo instancia de Auto
var auto = Auto()

for conteo in 1...20{
    let corre = auto.cambioDeVelocidad()
    print("\(corre.actual), \(corre.velocidadEnCadena)")
}
